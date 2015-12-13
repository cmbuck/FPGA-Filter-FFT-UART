module fft (
	input			clk,
	input			rst,
	input reg [17:0]	A[63:0],
	input reg			newData,
	output reg	[17:0]	Yreal[63:0],
	output reg [17:0]	Yimag[63:0],
	output reg			dataReady
	);
	
	reg [5:0] switchy [0:63];

	reg state[6:0];	//Upper 3 bits indicate Stage of FFT
					//Lower 4 bits indicate state within stage
	reg [17:0] switched[63:0];
	reg [17:0] buffARe[63:0];
	reg [17:0] buffAIm[63:0];
	reg [17:0] buffBRe[63:0];
	reg [17:0] buffBIm[63:0];
	
	integer i;		//for generating stuff
	
initial
begin
	switchy[0] <= 6'd0;
	switchy[1] <= 6'd32;
	switchy[2] <= 6'd16;
	switchy[3] <= 6'd48;
	switchy[4] <= 6'd8;
	switchy[5] <= 6'd40;
	switchy[6] <= 6'd24;
	switchy[7] <= 6'd56;
	switchy[8] <= 6'd4;
	switchy[9] <= 6'd36;
	switchy[10] <= 6'd20;
	switchy[11] <= 6'd52;
	switchy[12] <= 6'd12;
	switchy[13] <= 6'd44;
	switchy[14] <= 6'd28;
	switchy[15] <= 6'd60;
	switchy[16] <= 6'd2;
	switchy[17] <= 6'd34;
	switchy[18] <= 6'd18;
	switchy[19] <= 6'd50;
	switchy[20] <= 6'd10;
	switchy[21] <= 6'd42;
	switchy[22] <= 6'd26;
	switchy[23] <= 6'd58;
	switchy[24] <= 6'd6;
	switchy[25] <= 6'd38;
	switchy[26] <= 6'd22;
	switchy[27] <= 6'd54;
	switchy[28] <= 6'd14;
	switchy[29] <= 6'd46;
	switchy[30] <= 6'd30;
	switchy[31] <= 6'd62;
	switchy[32] <= 6'd1;
	switchy[33] <= 6'd33;
	switchy[34] <= 6'd17;
	switchy[35] <= 6'd49;
	switchy[36] <= 6'd9;
	switchy[37] <= 6'd41;
	switchy[38] <= 6'd25;
	switchy[39] <= 6'd57;
	switchy[40] <= 6'd5;
	switchy[41] <= 6'd37;
	switchy[42] <= 6'd21;
	switchy[43] <= 6'd53;
	switchy[44] <= 6'd13;
	switchy[45] <= 6'd45;
	switchy[46] <= 6'd29;
	switchy[47] <= 6'd61;
	switchy[48] <= 6'd3;
	switchy[49] <= 6'd35;
	switchy[50] <= 6'd19;
	switchy[51] <= 6'd51;
	switchy[52] <= 6'd11;
	switchy[53] <= 6'd43;
	switchy[54] <= 6'd27;
	switchy[55] <= 6'd59;
	switchy[56] <= 6'd7;
	switchy[57] <= 6'd39;
	switchy[58] <= 6'd23;
	switchy[59] <= 6'd55;
	switchy[60] <= 6'd15;
	switchy[61] <= 6'd47;
	switchy[62] <= 6'd31;
	switchy[63] <= 6'd63;
end
	
always @(posedge clk)
begin
	if (rst)	//Reset the module 'n stuff
	begin
		Y <= 0;
		dataReady <= 0;
	end
	else		//DO ALL THE STUFF
	begin
		case (state)
		0 : begin
				for (i = 0; i < 64; i = i + 1)
					switched[i] <= A[switchy[i]];
				end
		endcase
	end
	
end
	