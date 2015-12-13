`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:09:33 10/20/2015 
// Design Name: 
// Module Name:    top 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module top(
		input rst,
		input clk,
		output reg [3:0] an,
		output reg [7:0] seg,
		input [7:0] sw,
		input noisy,
		output clean
    );
	
	//Number of the highest address in memory
	//Alternatively, the number of items in the memory - 1
	//Ex: for 5 items in a zero indexed memory, MAX_ADDRESS = 4
	parameter MAX_ADDRESS = 1022;
	parameter COEF12 = 32'hBF99999A;
	parameter COEF21 = 32'h40066666;
	parameter COEF10 = 32'hBF800000;
	
	reg [19:0] cycle_count;
	reg [1:0] state;
	reg [3:0] summation_state;
	//reg [3:0] num;
	reg [9:0] timer;
	reg run_state;
	reg [15:0] summation;
	reg [9:0] addrCounter;
	reg [31:0] yi;		//output (used in filter arithmetic)
	//reg [31:0] si;		//temporary reg for filter
	reg [31:0] sse;	//square sum error
	reg [31:0] adderInA;
	reg [31:0] adderInB;
	reg [31:0] multInA;
	reg [31:0] multInB;
	reg [31:0] shift [0:2];		//shift for the delayed inputs
	reg multNewData;
	reg adderNewData;

	
	wire [15:0] num;
	wire [31:0] disp;
	wire [31:0] in_douta;
	wire [31:0] out_douta;
	wire [31:0] douta;
	wire [31:0] adderResult;
	wire [31:0] multResult;
	wire adderReady;
	wire adderNewDataReady;
	wire multReady;
	wire multNewDataReady;

	
	assign num = { {8{sw[7]}}, sw }; //sign extend (concatonate sw to make it 16 bits)
	
	display4bit dig1 (
		.in(summation[3:0]),
		.out(disp[7:0])
	);
	display4bit dig2 (
		.in(summation[7:4]),
		.out(disp[15:8])
	);
	display4bit dig3 (
		.in(summation[11:8]),
		.out(disp[23:16])
	);
	display4bit dig4 (
		.in(summation[15:12]),
		.out(disp[31:24])
	);
	
	
	memory mem (
	  .clka(clk), // input clka
	  .wea(1'b0), // input [0 : 0] wea
	  .addra(addrCounter), // input [9 : 0] addra
	  .dina(15'b000000000000000), // input [15 : 0] dina
	  .douta(douta) // output [15 : 0] douta
	);
	
	input_mem in_mem (
	  .clka(clk), // input clka
	  .wea(1'b0), // input [0 : 0] wea
	  .addra(addrCounter), // input [9 : 0] addra
	  .dina(32'h00000000), // input [31 : 0] dina
	  .douta(in_douta) // output [31 : 0] douta
	);
	
	output_mem out_mem (
	  .clka(clk), // input clka
	  .wea(1'b0), // input [0 : 0] wea
	  .addra(addrCounter), // input [9 : 0] addra
	  .dina(32'h00000000), // input [31 : 0] dina
	  .douta(out_douta) // output [31 : 0] douta
	);
	
	floating_point_add adder (
		.a(adderInA), // input [31 : 0] a
		.b(adderInB), // input [31 : 0] b
		.operation_nd(adderNewData), // input operation_nd
		.operation_rfd(adderNewDataReady), // output operation_rfd
		.clk(clk), // input clk
		.result(adderResult), // output [31 : 0] result
		.rdy(adderReady)
	);
	
	multiplier multiplier (
		.a(multInA), // input [31 : 0] a
		.b(multInB), // input [31 : 0] b
		.operation_nd(multNewData), // input operation_nd
		.operation_rfd(multNewDataReady), // output operation_rfd
		.clk(clk), // input clk
		.result(multResult), // output [31 : 0] result
		.rdy(multReady)
	);



	always @(posedge clk)
	begin
	
		
		if (rst)
		begin
			an[3:0] <= 4'b1111;
			seg[7:0] <= 8'b11111111;
			state <= 0;
			summation_state <= 0;
			timer <= 0;
			addrCounter <= 0;
			summation <= 0;
			cycle_count <= 0;
			shift[0] <= 0;		//hopefully this works
			shift[1] <= 0;
			shift[2] <= 0;
			sse <= 0;
		end
		else	begin

		/* ************************
		 * Sum the Memory stuff
		 * This was used for the initial summing of 5 memory addresses, but
		 * is not used for the actual filter implementation.  Instead, it is
		 * used as a reference.
		 * ************************
			case (summation_state)
			
			0 : begin 
				summation_state <= 1;
				addrCounter <= addrCounter + 1;
				end
				
			1 : begin
				if (addrCounter == MAX_ADDRESS)
					summation_state <= 2;
				addrCounter <= addrCounter + 1;
				summation <= summation + douta [15:0];
				end
				
			2 : begin
				//Do nothing
				end
				
				endcase	
		* ************************			
		* End of "Sum the Memory stuff"
		* ************************/		
		
		
		/* ************************
		 * Filter the input signal
		 * This block contains the state machine to read from the input,
		 * apply the filter, and track the sqaure sum error
		 * ************************/
		 multNewData <= 0;
		 adderNewData <= 0;
		 
		 case (summation_state)
		 
		0 : begin
			summation_state <= 1;
			end
			
		1 : begin
			yi <= in_douta;
			if (multNewDataReady) begin
				multInA <= COEF12;
				multInB <= shift[0];  //get fist delayed value
				multNewData <= 1;
				summation_state <= 2;
				end
			end
			
		2 : begin
			if (multReady & adderNewDataReady) begin
				adderInB <= multResult;
				adderInA <= yi;
				summation_state <= 3;
				adderNewData <= 1;
				end
			end
			
		3 : begin
			if (adderReady & multNewDataReady) begin
				yi <= adderResult;
				multInA <= COEF21;
				multInB <= shift[1];  //get second delayed value
				multNewData <= 1;
				summation_state <= 4;
				end
			end
			
		4 : begin
			if (multReady & adderNewDataReady) begin
				adderInB <= multResult;
				adderInA <= yi;
				summation_state <= 5;
				adderNewData <= 1;
				end
			end
			
		5 : begin
			if (adderReady & multNewDataReady) begin
				yi <= adderResult;
				multInA <= COEF12;
				multInB <= shift[2];  //get second delayed value
				multNewData <= 1;
				summation_state <= 6;
				end
			end
			
		6 : begin
			if (multReady & adderNewDataReady) begin
				adderInB <= multResult;
				adderInA <= yi;
				summation_state <= 7;
				adderNewData <= 1;
				end
			end
		
		7 : begin
			if (adderReady & multNewDataReady) begin
				yi <= adderResult;
				multInA <= COEF10;
				multInB <= out_douta;
				multNewData <= 1;
				summation_state <= 8;
				end
			end
		
		8 : begin
			if (multReady & adderNewDataReady) begin
				adderInB <= multResult;
				adderInA <= yi;
				summation_state <= 9;
				adderNewData <= 1;
				end
			end
			
		9 : begin
			if (adderReady & multNewDataReady) begin
				multInA <= adderResult;
				multInB <= adderResult;
				multNewData <= 1;
				summation_state <= 10;
				end
			end
		
		10 : begin
			if (multReady & adderNewDataReady) begin
				adderInB <= multResult;
				adderInA <= sse;
				summation_state <= 11;
				adderNewData <= 1;
				end
			end
			
		11 : begin
			if (adderReady & multNewDataReady) begin
				sse <= adderResult;
				summation_state <= 0;
				shift[0] <= in_douta;
				shift[1] <= shift[0];
				shift[2] <= shift[1];
				addrCounter <= addrCounter + 1; 
				if (addrCounter == MAX_ADDRESS)
					summation_state <= 12;
				end
			end
			
		12 : begin
			//Done; do nothing
			end
			
			endcase
		 
		/* ************************
		 * End of Filter
		 * ************************/
		
		//display on the seg
		
			//Check the up button signal
			/*if (up_db)
			begin
				if (num < 9)
					num <= num + 1;
			end*/
			
			//Check the down button signal
			/*if (down_db)
			begin
				if (num > 0)
					num <= num - 1;
			end*/
			
			//Check the Start/Stop button signal
			/*if(ss_db) 
				run_state = !run_state;*/
				
			if (sw[0])
				summation <= sse[31:16];
			else
				summation <= sse[15:0];
			
			//Handle the counting
			cycle_count <= cycle_count + 1;
			if(cycle_count == 125000)
			begin
				cycle_count <= 0;
				timer <= timer + 1;
				if (timer==400) begin
					timer <= 0;
					
/*					if(run_state) begin
						num <= num + 1;
						if(num == 9)
							num <= 0;
					end*/
				end	
				case (state)
				0 : begin 
					state <= 1; 
					an[3:0] <= 4'b1110;
					seg <= disp[7:0];
					end
				1 : begin 
					state <= 2; 
					an[3:0] <= 4'b1101;
					seg[7:0] <= disp[15:8];
					end
				2 : begin 
					state <= 3; 
					an[3:0] <= 4'b1011;
					seg[7:0] <= disp[23:16];
					end
				3 : begin 
					state <= 0; 
					an[3:0] <= 4'b0111;			
					seg <= disp[31:24];
					end
				endcase
				
			end //end if ==125000
		end

	end

endmodule


//16 bit number display module
module display4bit(
			input [3:0] in,
			output reg [7:0] out
			);

always @(*)
	case (in)
		0: out = 8'b11000000;
		1: out = 8'b11111001;
		2: out = 8'b10100100;
		3: out = 8'b10110000;
		4: out = 8'b10011001;
		5: out = 8'b10010010;
		6: out = 8'b10000010;
		7: out = 8'b11111000;
		8: out = 8'b10000000;
		9: out = 8'b10011000;
		10:out = 8'b10001000;
		11:out = 8'b10000011;
		12:out = 8'b10100111;
		13:out = 8'b10100001;
		14:out = 8'b10000110;
		15:out = 8'b10001110;
	endcase

endmodule


module debounce(
			input clk,
			input rst,
			output reg out
			);
//input rst;
reg state;

reg [15:0] count; //enough for 50000 counts (~1 ms)
parameter NUMBER = 50000;

//assign out = (shift[0] & shift[77]) & !state;

//reg PB_sync_0;
//always @(posedge clk) PB_sync_0 <= button;
//reg PB_sync_1;
//always @(posedge clk) PB_sync_1 <= PB_sync_0;

//reg [15:0] PB_cnt;

always @(posedge clk)
begin
	if (rst)
	begin
		state <= 0;
		count <= 0;
	end
	
	if (state)
		count <= count + 1;
		if (count == NUMBER)
			state <= 0;
		
	out <= state;

//	if (out == PB_sync_1)
//		PB_cnt <= 0;
//	else
//	begin
//		PB_cnt <= PB_cnt + 1'b1;
//		if (PB_cnt == 16'hffff) out <= ~out;
//
//	end
end
endmodule
