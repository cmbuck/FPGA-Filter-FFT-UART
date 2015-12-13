`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:19:25 12/13/2015
// Design Name:   filter
// Module Name:   C:/Users/Chris/workspace/ELEC427-ProjectFinal/tb_filter.v
// Project Name:  ELEC427-ProjectFinal
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: filter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_filter;

	// Inputs
	reg clk;
	reg rst;
	reg [17:0] inSignal;
	reg newData;
	wire [17:0] outSignal;
	wire dataReady;

	// Instantiate the Unit Under Test (UUT)
	filter uut (
		.clk(clk), 
		.rst(rst),
		.inSignal(inSignal),
		.newData(newData),
		.outSignal(outSignal),
		.dataReady(dataReady)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		inSignal = 0;
		newData = 0;

		// Wait 10 ns for global reset to finish
		#100;
        
		// Add stimulus here
		rst = 1;
		#10;
		rst = 0;
		#8;
		inSignal = 18'h00800;
		newData = 1;
		#18;
		$finish;
	end
      
	always
	begin
		#2	clk = !clk;
	end
		
endmodule

