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
	reg [9:0] addra;
	wire [31:0] douta;
	integer i;
	reg [31:0] bank[0:9];
	

	// Instantiate the Unit Under Test (UUT)
	filter uut (
		.clk(clk), 
		.rst(rst),
		.inSignalUnReg(inSignal),
		.newData(newData),
		.outSignal(outSignal),
		.dataReady(dataReady)
	);
		
	/*memory_test1 test_filter (
	  .clka(clk), // input clka
	  .wea(1'b0), // input [0 : 0] wea
	  .addra(addra), // input [9 : 0] addra
	  .dina(16'h00000), // input [31 : 0] dina
	  .douta(douta) // output [31 : 0] douta
	);*/


	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		inSignal = 0;
		newData = 0;
		addra = 0;
		
		bank[0] = 32'h3e24cabb;
		bank[1] = 32'h3f6d4e56;
		bank[2] = 32'h3f309326;
		bank[3] = 32'h3f01973a;
		bank[4] = 32'h3ecfec4a;
		bank[5] = 32'hbf01ba8c;
		bank[6] = 32'hbf6b8cca;
		bank[7] = 32'hbd9b2f36;
		bank[8] = 32'hbf43e794;
		bank[9] = 32'hbf2d4026;



		// Wait 10 ns for global reset to finish
		#100;
        
		// Add stimulus here
		rst = 1;
		#10;
		rst = 0;
		#8;
		newData = 1;
		for (i = 0; i < 10; i = i + 1)
		begin
			inSignal = bank[i][31:14];
			#4;
		end
		$finish;
	end
      
	always
	begin
		#2	clk = !clk;
	end
		
endmodule

