`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:45:22 12/14/2015
// Design Name:   filter_float
// Module Name:   C:/Users/Chris/workspace/ELEC427-ProjectFinal/tb_filter_float.v
// Project Name:  ELEC427-ProjectFinal
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: filter_float
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_filter_float;

	// Inputs
	reg clk;
	reg rst;
	reg [32:0] inSignalUnReg;
	reg newData;

	// Outputs
	wire [32:0] outSignal;
	wire dataReady;

	// Instantiate the Unit Under Test (UUT)
	filter_float uut (
		.clk(clk), 
		.rst(rst), 
		.inSignalUnReg(inSignalUnReg), 
		.newData(newData), 
		.outSignal(outSignal), 
		.dataReady(dataReady)
	);
	
	reg [31:0] bank [0:10];

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		inSignalUnReg = 0;
		newData = 0;
		//bank assignment

		// Wait 100 ns for global reset to finish
		#100;
      rst = 0;
		
		// Add stimulus here
		newData = 1;
		#1000;
		
		$finish;
	end
	
	always
	begin
		#2	clk = !clk;
	end
      
endmodule

