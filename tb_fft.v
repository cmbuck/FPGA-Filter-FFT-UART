`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:13:35 12/16/2015 
// Design Name: 
// Module Name:    tb_fft 
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
module tb_fft;

	// Inputs
	reg clk;
	reg rst;
	reg newData;
	reg [1151:0] in; 
	
	
	// Outputs
	wire [1151:0] Yreal;
	wire [1151:0] Yimag;
	reg [17:0] outReal[63:0];
	reg [17:0] outImag[63:0];
	wire dataReady;
	
	reg [5:0] addr;
	wire [19:0] data;


	// Instantiate the Unit Under Test (UUT)

	fft fft1 (
		.newData(newData),
		.A(in),
		.rst(rst),
		.clk(clk),
		.Yreal(Yreal),
		.Yimag(Yimag),
		.dataReady(dataReady)
		);
		
	blk_mem rom (
		.addra(addr),
		.clka(clk),
		.douta(data)
		);

	integer i;

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		in = 0;
		for (i = 0; i < 64; i = i +1) begin
			 outReal[i] = Yreal[18*i +: 18];
			 outImag[i] = Yimag[18*i +: 18];
			end
		newData = 0;

		// Wait 100 ns for global reset to finish
		#120;
      rst = 0;
		#4;
		for (i = 0; i < 64; i = i +1) begin
			addr <= i;
			#4;
			in[18*i +: 18] <= data[17:0];
			#4;
		end
		newData = 1;
		#4;
		// Add stimulus here
	

		#500;
		for (i = 0; i < 64; i = i +1) begin
			 outReal[i] <= Yreal[18*i +: 18];
			 outImag[i] <= Yimag[18*i +: 18];
			 #4;
			end
		newData = 0;
		#500;
		
		$finish;
	end
	
	always
	begin
		#2 clk = !clk;
	end
      
endmodule
