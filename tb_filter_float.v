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
	reg [31:0] inSignalUnReg;
	reg newData;

	// Outputs
	wire [31:0] outSignal;
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
	integer i;

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		inSignalUnReg = 0;
		newData = 0;
		//bank assignment
		bank[0] = 32'hbf83c6e0;
		bank[1] = 32'h4141669e;
		bank[2] = 32'h40039b58;
		bank[3] = 32'h40b32045;
		bank[4] = 32'h412a09e2;
		bank[5] = 32'h40ec34b1;
		bank[6] = 32'h414545ad;
		bank[7] = 32'h417fdf8a;
		bank[8] = 32'hbedc3a8c;
		bank[9] = 32'h3f2d6547;



		// Wait 100 ns for global reset to finish
		#100;
      rst = 0;
		
		// Add stimulus here
		for (i = 0; i < 10; i = i + 1)
		begin
			inSignalUnReg = bank[i];
			#50
			newData = 1;
			#50;
			newData = 0;
			#900;
		end
		
		$finish;
	end
	
	always
	begin
		#2	clk = !clk;
	end
      
endmodule

