`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:02:24 12/14/2015 
// Design Name: 
// Module Name:    r2_butterfly 
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
module r2_butterfly(
    input [17:0] ar,
    input [17:0] ai,
    input [17:0] br,
    input [17:0] bi,
    input clk,
    output reg [17:0] s1r,
    output reg [17:0] s1i,
    output reg [17:0] s2r,
    output reg [17:0] s2i
    );
	 
always @(posedge clk)
begin
	s1r <= ar + br;
	s1i <= ai + bi;
	s2r <= ar - br;
	s2i <= ai - bi;
end


endmodule
