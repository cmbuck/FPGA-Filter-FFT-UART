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
    input [17:0] inSignal[0:63],
	 input newData,
    output reg [17:0] outSignal[0:63],
	 output reg dataReady
    );

reg [17:0] dataA [0:63];
reg [17:0] dataB [0:63];
reg state[2:0];
reg index [5:0];

wire [17:0] mult1A, mult1B, mult1P;

//Instantiate Fixed Point Multipliers
fpMultiply mult1 (
	  .A(mult1A), 
	  .B(mult1B), 
	  .P(mult1P)
	);

always @(posedge clk)
begin
	if (rst)
	begin
		dataReady <= 0;
		outSignal <= 0;
		dataA <= 0;
		dataB <= 0;
	end
	else
	begin
		//Regular operation
		
		
		
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
		
	end
end

endmodule
