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
module filter_float(
    input clk,
    input rst,
    input [32:0] inSignalUnReg,
	 input newData,
    output reg [32:0] outSignal,
	 output reg dataReady
    );

reg [2:0] state;
reg index [5:0];
reg [31:0] fifo [0:10];
integer i;
reg [31:0] inSignal;
reg [31:0] coefficients [0:5];

//Multiplier input and output wires and regs
wire [31:0] mult1A, mult1Out;
wire [31:0] mult2A, mult2Out;
reg [31:0] mult1B;
reg [31:0] mult2B;
reg [31:0] mult1P, mult2P, mult3P, mult4P, mult5P, mult6P;

wire mult1ND, mult1RFD, mult1RDY, mult2ND, mult2RFD, mult2RDY;

reg [31:0] addr1A, addr1B;
wire [31:0] addr1Out;
reg [31:0] addr2A, addr2B;
wire [31:0] addr2Out;
wire addr1RFD, addr1RDY;
reg addr1ND, addr1RDY_prev;
wire addr2RFD, addr2RDY;
reg addr2ND, addr2RDY_prev;

//hardwire multipliers to the adders
assign mult1A = addr1Out;
assign mult2A = addr2Out;
assign mult1ND = addr1RDY & !addr1RDY_prev;
assign mult2ND = addr2RDY & !addr2RDY_prev;

//Instantiate Floating Point Multipliers
flpMultiply mult1 (
  .a(mult1A), // input [31 : 0] a
  .b(mult1B), // input [31 : 0] b
  .operation_nd(mult1ND), // input operation_nd
  .operation_rfd(mult1RFD), // output operation_rfd
  .clk(clk), // input clk
  .result(mult1Out), // output [31 : 0] result
  .rdy(mult1RDY) // output rdy
);

flpMultiply mult2 (
  .a(mult2A), // input [31 : 0] a
  .b(mult2B), // input [31 : 0] b
  .operation_nd(mult2ND), // input operation_nd
  .operation_rfd(mult2RFD), // output operation_rfd
  .clk(clk), // input clk
  .result(mult2Out), // output [31 : 0] result
  .rdy(mult2RDY) // output rdy
);

//Floating point adders
floating_point_add adder1 (
  .a(addr1A), // input [31 : 0] a
  .b(addr1B), // input [31 : 0] b
  .operation_nd(addr1ND), // input operation_nd
  .operation_rfd(addr1RFD), // output operation_rfd
  .clk(clk), // input clk
  .result(addr1Out), // output [31 : 0] result
  .rdy(addr1RDY) // output rdy
);

floating_point_add adder2 (
  .a(addr2A), // input [31 : 0] a
  .b(addr2B), // input [31 : 0] b
  .operation_nd(addr2ND), // input operation_nd
  .operation_rfd(addr2RFD), // output operation_rfd
  .clk(clk), // input clk
  .result(addr2Out), // output [31 : 0] result
  .rdy(addr2RDY) // output rdy
);
	
	
initial
begin
	coefficients[0] = 32'h3ca161e5;
	coefficients[1] = 32'hbde9ad43;
	coefficients[2] = 32'h3c83126f;
	coefficients[3] = 32'hbd2ee632;
	coefficients[4] = 32'hbe36c8b4;
	coefficients[5] = 32'h3f1d0e56;
	
end

always @(posedge clk)
begin
	if (rst)
	begin
		dataReady <= 0;
		outSignal <= 0;
		inSignal <= 0;
		for (i = 0; i < 11; i = i + 1)
			fifo[i] <= 0;
		addr1A <= 0;
		addr1B <= 0;
		addr2A <= 0;
		addr2B <= 0;
		addr1ND <= 0;
		addr2ND <= 0;
		state <= 0;
	end
	else
	begin
		//Regular operation
		addr1RDY_prev <= addr1RDY;
		addr2RDY_prev <= addr2RDY;
		
		case (state)
		
		0 : begin //Idle; wait for data
			if (newData)
			begin
				dataReady <= 0;
				inSignal <= inSignalUnReg;
				for (i = 1; i < 12; i = i + 1) begin
					fifo[i] <= fifo[i - 1];
				end
				fifo[0] <= inSignalUnReg;
				addr1A <= inSignalUnReg;
				addr1B <= fifo[10];
				mult1B <= coefficients[0];
				addr2A <= fifo[0];
				addr2B <= fifo[9];
				mult2B <= coefficients[1];
				addr1ND <= 1;
				addr2ND <= 1;
				state <= 1;
			end
		end
		
		1 : begin
			addr1ND <= 0;
			addr2ND <= 0;
			if (mult1RDY & mult2RDY) //wait until mults are done
			begin
				mult1P <= mult1Out;
				mult2P <= mult2Out;
				addr1A <= fifo[1];
				addr1B <= fifo[8];
				addr2A <= fifo[2];
				addr2B <= fifo[7];
				mult1B <= coefficients[2];
				mult2B <= coefficients[3];
				addr1ND <= 1;
				addr2ND <= 1;
				state = 2;
			end
		end
		
		2 : begin
			addr1ND <= 0;
			addr2ND <= 0;
			if (mult1RDY & mult2RDY)
			begin
				mult3P <= mult1Out;
				mult4P <= mult2Out;
				addr1A <= fifo[3];
				addr1B <= fifo[6];
				addr2A <= fifo[4];
				addr2B <= fifo[5];
				mult1B <= coefficients[4];
				mult2B <= coefficients[5];
				addr1ND <= 1;
				addr2ND <= 1;
				state = 3;
			end
		end
		
		3 : begin
			addr1ND <= 0;
			addr2ND <= 0;
			if (mult1RDY & mult2RDY)
			begin
				mult5P <= mult1Out;
				mult6P <= mult2Out;
				addr1A <= mult1P;
				addr1B <= mult2P;
				addr2A <= mult3P;
				addr2B <= mult4P;
				addr1ND <= 1;
				addr2ND <= 1;
				state = 4;
			end
		end
		
		4 : begin
			addr1ND <= 0;
			addr2ND <= 0;
			if (addr1RDY & addr2RDY)
			begin
				addr1A <= addr1Out;
				addr1B <= mult5P;
				addr2A <= addr2Out;
				addr2B <= mult6P;
				addr1ND <= 1;
				addr2ND <= 1;
				state = 5;
			end
		end
		
		5 : begin
			addr1ND <= 0;
			addr2ND <= 0;
			if (addr1RDY & addr2RDY)
			begin
				addr1A <= addr1Out;
				addr1B <= addr2Out;
				addr1ND <= 1;
				state = 6;
			end
		end
		
		6 : begin
			addr1ND <= 0;
			if (addr1RDY)
			begin
				outSignal <= addr1Out;
				state <= 0;
				dataReady <= 1;
			end
		end
		
		endcase
		
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
