`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:19:42 10/29/2015
// Design Name:   top
// Module Name:   C:/Users/tnt1/Downloads/Project2_1/Project2/test.v
// Project Name:  Project2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test;

	// Inputs
	reg rst;
	reg clk;
	reg [7:0] sw;
	reg noisy;

	// Outputs
	wire [3:0] an;
	wire [7:0] seg;
	wire clean;

	// Instantiate the Unit Under Test (UUT)
	top uut (
		.rst(rst), 
		.clk(clk), 
		.an(an), 
		.seg(seg), 
		.sw(sw), 
		.noisy(noisy), 
		.clean(clean)
	);
	
	// Instantiate some variables
	integer counter = 0;

	initial begin
		// Initialize Inputs
		rst = 1;
		clk = 0;
		sw = 0;
		noisy = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		rst = 0;
		#100;
		

	end
	
	always 
		if (counter < 300000)
		begin
			#5 clk=!clk;
			counter = counter + 1;
		end
      
endmodule

