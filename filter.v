`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:12:23 12/13/2015 
// Design Name: 
// Module Name:    filter 
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
module filter(
    input clk,
    input rst,
    input [17:0] inSignal,
	 input newData,
    output reg [17:0] outSignal,
	 output reg dataReady
    );

reg [17:0] dataA;
reg [17:0] dataB;
reg state[2:0];
reg index [5:0];
reg [17:0] fifo [0:10];
integer i;

wire [17:0] mult1A, mult1B, mult1P;
wire [35:0] mult1Ptemp;
wire [17:0] mult2A, mult2B, mult2P;
wire [35:0] mult2Ptemp;
wire [17:0] mult3A, mult3B, mult3P;
wire [35:0] mult3Ptemp;
wire [17:0] mult4A, mult4B, mult4P;
wire [35:0] mult4Ptemp;
wire [17:0] mult5A, mult5B, mult5P;
wire [35:0] mult5Ptemp;
wire [17:0] mult6A, mult6B, mult6P;
wire [35:0] mult6Ptemp;

assign mult1P = mult1Ptemp[29:12];
assign mult2P = mult2Ptemp[29:12];
assign mult3P = mult3Ptemp[29:12];
assign mult4P = mult4Ptemp[29:12];
assign mult5P = mult5Ptemp[29:12];
assign mult6P = mult6Ptemp[29:12];

//add the delays
assign mult1A = inSignal + fifo[10];
assign mult2A = fifo[0] + fifo[9];
assign mult3A = fifo[1] + fifo[8];
assign mult4A = fifo[2] + fifo[7];
assign mult5A = fifo[3] + fifo[6];
assign mult6A = fifo[4] + fifo[5];

//filter coefficients
assign mult1B = {6'h00, 12'h050}; //0.0197
assign mult2B = {6'h00, 12'h1D3}; //0.1141
assign mult3B = {6'h00, 12'h041}; //0.0160
assign mult4B = {6'h00, 12'h0AE}; //0.0427
assign mult5B = {6'h00, 12'h2DB}; //0.1785
assign mult6B = {6'h00, 12'h9D0}; //0.6135

//Instantiate Fixed Point Multipliers
fpMultiply mult1 (
	  .a(mult1A), 
	  .b(mult1B), 
	  .p(mult1Ptemp)
	);
	
fpMultiply mult2 (
	  .a(mult2A), 
	  .b(mult2B), 
	  .p(mult2Ptemp)
	);

fpMultiply mult3 (
	  .a(mult3A), 
	  .b(mult3B), 
	  .p(mult3Ptemp)
	);

fpMultiply mult4 (
	  .a(mult4A), 
	  .b(mult4B), 
	  .p(mult4Ptemp)
	);

fpMultiply mult5 (
	  .a(mult5A), 
	  .b(mult5B), 
	  .p(mult51Ptemp)
	);

fpMultiply mult6 (
	  .a(mult6A), 
	  .b(mult6B), 
	  .p(mult6Ptemp)
	);

assign mult1B = 18'h00800; //should be 0.5

always @(posedge clk)
begin
	if (rst)
	begin
		dataReady <= 0;
		outSignal <= 0;
		dataA <= 0;
		dataB <= 0;
		fifo[0] <= 0;
		fifo[1] <= 0;
	end
	else
	begin
		//Regular operation
		
		if (newData)
		begin
		
			for (i = 1; i < 12; i = i + 1) begin
				fifo[i] <= fifo[i - 1];
			end
			fifo[0] <= inSignal;
			
			outSignal <= mult1P - mult2P + mult3P - mult4P - mult5P + mult6P;
			dataReady <= 1;
		end
		else
		begin
			
			dataReady <= 0;
			
		end
		
		/*
		case (state)
		
		0 : 
		begin
			//Idle
			if (newData)  //Register in the new data
			begin
				dataReady <= 0;
				dataA <= inSignal;
				state <= 1; //begin 
				index <= 0;
			end
		end
			
		1 : 
		begin
			//Filter
			if (index == 63) state <= 2;
			
		end
			
		2 :
		begin
			//Output
				ouSignal <= dataB;
				dataReady <= 1;
				state <= 0;
		end
		
		endcase
		*/
		
	end
end

endmodule
