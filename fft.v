module fft (
	input	clk,
	input	rst,
	input [1151:0] A,
	input newData,
	output reg	[1151:0] Yreal,
	output reg [1151:0]	Yimag,
	output reg	dataReady
	);
	
	
	
	reg [5:0] switchy [0:63];

	reg [3:0] stage;
	reg [4:0] state;
	
	reg [17:0] B[63:0];
	reg [17:0] switched[63:0];
	reg [17:0] buff1r[63:0];
	reg [17:0] buff1i[63:0];
	reg [17:0] buff2r[63:0];
	reg [17:0] buff2i[63:0];
	reg [17:0] coefr[31:0];
	reg [17:0] coefi[31:0];
	reg [17:0] ar1;
	reg [17:0] ai1;
	reg [17:0] br1;
	reg [17:0] bi1;
	reg [17:0] ar2;
	reg [17:0] ai2;
	reg [17:0] br2;
	reg [17:0] bi2;
	reg [17:0] ar3;
	reg [17:0] ai3;
	reg [17:0] br3;
	reg [17:0] bi3;
	reg [17:0] ar4;
	reg [17:0] ai4;
	reg [17:0] br4;
	reg [17:0] bi4;
	reg [17:0] cr1;
	reg [17:0] ci1;
	reg [17:0] dr1;
	reg [17:0] di1;
	reg [17:0] cr2;
	reg [17:0] ci2;
	reg [17:0] dr2;
	reg [17:0] di2;

	
	wire [17:0] sr1;
	wire [17:0] si1;
	wire [17:0] tr1;
	wire [17:0] ti1;
	wire [17:0] sr2;
	wire [17:0] si2;
	wire [17:0] tr2;
	wire [17:0] ti2;
	wire [17:0] sr3;
	wire [17:0] si3;
	wire [17:0] tr3;
	wire [17:0] ti3;
	wire [17:0] sr4;
	wire [17:0] si4;
	wire [17:0] tr4;
	wire [17:0] ti4;
	wire [35:0] pr1;
	wire [35:0] pi1;
	wire [35:0] pr2;
	wire [35:0] pi2;
	
	
	integer i,j;		//for generating stuff
	
initial
begin
	switchy[0] = 6'd0;
	switchy[1] = 6'd32;
	switchy[2] = 6'd16;
	switchy[3] = 6'd48;
	switchy[4] = 6'd8;
	switchy[5] = 6'd40;
	switchy[6] = 6'd24;
	switchy[7] = 6'd56;
	switchy[8] = 6'd4;
	switchy[9] = 6'd36;
	switchy[10] = 6'd20;
	switchy[11] = 6'd52;
	switchy[12] = 6'd12;
	switchy[13] = 6'd44;
	switchy[14] = 6'd28;
	switchy[15] = 6'd60;
	switchy[16] = 6'd2;
	switchy[17] = 6'd34;
	switchy[18] = 6'd18;
	switchy[19] = 6'd50;
	switchy[20] = 6'd10;
	switchy[21] = 6'd42;
	switchy[22] = 6'd26;
	switchy[23] = 6'd58;
	switchy[24] = 6'd6;
	switchy[25] = 6'd38;
	switchy[26] = 6'd22;
	switchy[27] = 6'd54;
	switchy[28] = 6'd14;
	switchy[29] = 6'd46;
	switchy[30] = 6'd30;
	switchy[31] = 6'd62;
	switchy[32] = 6'd1;
	switchy[33] = 6'd33;
	switchy[34] = 6'd17;
	switchy[35] = 6'd49;
	switchy[36] = 6'd9;
	switchy[37] = 6'd41;
	switchy[38] = 6'd25;
	switchy[39] = 6'd57;
	switchy[40] = 6'd5;
	switchy[41] = 6'd37;
	switchy[42] = 6'd21;
	switchy[43] = 6'd53;                                                                                                                                                                                                                                                                                                                                                                     
	switchy[44] = 6'd13;
	switchy[45] = 6'd45;
	switchy[46] = 6'd29;
	switchy[47] = 6'd61;
	switchy[48] = 6'd3;
	switchy[49] = 6'd35;
	switchy[50] = 6'd19;
	switchy[51] = 6'd51;
	switchy[52] = 6'd11;
	switchy[53] = 6'd43;
	switchy[54] = 6'd27;
	switchy[55] = 6'd59;
	switchy[56] = 6'd7;
	switchy[57] = 6'd39;
	switchy[58] = 6'd23;
	switchy[59] = 6'd55;
	switchy[60] = 6'd15;
	switchy[61] = 6'd47;
	switchy[62] = 6'd31;
	switchy[63] = 6'd63;
	for (i = 0; i < 64; i = i + 1) begin
		buff1r[i] = 0;
		buff1i[i] = 0;
		buff2r[i] = 0;
		buff2i[i] = 0;
	end
	coefr[0] = 18'b000001000000000000;
	coefr[1] = 18'b000000111111101100;
	coefr[2] = 18'b000000111110110001;
	coefr[3] = 18'b000000111101010000;
	coefr[4] = 18'b000000111011001000;
	coefr[5] = 18'b000000111000011100;
	coefr[6] = 18'b000000110101001110;
	coefr[7] = 18'b000000110001011110;
	coefr[8] = 18'b000000101101010000;
	coefr[9] = 18'b000000101000100110;
	coefr[10] = 18'b000000100011100100;
	coefr[11] = 18'b000000011110001011;
	coefr[12] = 18'b000000011000011111;
	coefr[13] = 18'b000000010010100101;
	coefr[14] = 18'b000000001100011111;
	coefr[15] = 18'b000000000110010001;
	coefr[16] = 18'b000000000000000000;
	coefr[17] = 18'b111111111001101111;
	coefr[18] = 18'b111111110011100001;
	coefr[19] = 18'b111111101101011011;
	coefr[20] = 18'b111111100111100001;
	coefr[21] = 18'b111111100001110101;
	coefr[22] = 18'b111111011100011100;
	coefr[23] = 18'b111111010111011010;
	coefr[24] = 18'b111111010010110000;
	coefr[25] = 18'b111111001110100010;
	coefr[26] = 18'b111111001010110010;
	coefr[27] = 18'b111111000111100100;
	coefr[28] = 18'b111111000100111000;
	coefr[29] = 18'b111111000010110000;
	coefr[30] = 18'b111111000001001111;
	coefr[31] = 18'b111111000000010100;
	coefi[0] = 18'b000000000000000000;
	coefi[1] = 18'b111111111001101111;
	coefi[2] = 18'b111111110011100001;
	coefi[3] = 18'b111111101101011011;
	coefi[4] = 18'b111111100111100001;
	coefi[5] = 18'b111111100001110101;
	coefi[6] = 18'b111111011100011100;
	coefi[7] = 18'b111111010111011010;
	coefi[8] = 18'b111111010010110000;
	coefi[9] = 18'b111111001110100010;
	coefi[10] = 18'b111111001010110010;
	coefi[11] = 18'b111111000111100100;
	coefi[12] = 18'b111111000100111000;
	coefi[13] = 18'b111111000010110000;
	coefi[14] = 18'b111111000001001111;
	coefi[15] = 18'b111111000000010100;
	coefi[16] = 18'b111111000000000000;
	coefi[17] = 18'b111111000000010100;
	coefi[18] = 18'b111111000001001111;
	coefi[19] = 18'b111111000010110000;
	coefi[20] = 18'b111111000100111000;
	coefi[21] = 18'b111111000111100100;
	coefi[22] = 18'b111111001010110010;
	coefi[23] = 18'b111111001110100010;
	coefi[24] = 18'b111111010010110000;
	coefi[25] = 18'b111111010111011010;
	coefi[26] = 18'b111111011100011100;
	coefi[27] = 18'b111111100001110101;
	coefi[28] = 18'b111111100111100001;
	coefi[29] = 18'b111111101101011011;
	coefi[30] = 18'b111111110011100001;
	coefi[31] = 18'b111111111001101111;
end

r2_butterfly butterfly1 (
	.ar(ar1),
	.ai(ai1),
	.br(br1),
	.bi(bi1),
	.clk(clk),
	.s1r(sr1),
	.s1i(si1),
	.s2r(tr1),
	.s2i(ti1)
	);
r2_butterfly butterfly2 (
	.ar(ar2),
	.ai(ai2),
	.br(br2),
	.bi(bi2),
	.clk(clk),
	.s1r(sr2),
	.s1i(si2),
	.s2r(tr2),
	.s2i(ti2)
	);
r2_butterfly butterfly3 (
	.ar(ar3),
	.ai(ai3),
	.br(br3),
	.bi(bi3),
	.clk(clk),
	.s1r(sr3),
	.s1i(si3),
	.s2r(tr3),
	.s2i(ti3)
	);
r2_butterfly butterfly4 (
	.ar(ar4),
	.ai(ai4),
	.br(br4),
	.bi(bi4),
	.clk(clk),
	.s1r(sr4),
	.s1i(si4),
	.s2r(tr4),
	.s2i(ti4)
	);
complex_multiplier mult1 (
	.ar(cr1),
	.ai(ci1),
	.br(dr1),
	.bi(di1),
	.pr(pr1),
	.pi(pi1)
	);
complex_multiplier mult2 (
	.ar(cr2),
	.ai(ci2),
	.br(dr2),
	.bi(di2),
	.pr(pr2),
	.pi(pi2)
	);
	
	
always @(posedge clk)
begin
	if (rst)	//Reset the module 'n stuff
	begin
		Yreal <= 0;
		Yimag <= 0;
		dataReady <= 0;
		stage <= 0;
		state <= 0;
	end
	else		//DO ALL THE STUFF
	begin
		case (stage)
			0 : begin //switch initial inputs for FFT
				if (newData) begin
					for (i = 0; i < 64; i = i + 1) 
						B[i] = A[18*i + 17 -: 18];
					for (i = 0; i < 64; i = i + 1) 
						switched[i] = B[switchy[i]];
					dataReady <= 0;
					stage <= 1;
				end
			end
			1: begin //butterfly 0
				case (state)
					0: begin
						ar1 <= switched[0];
						ai1 <= 18'b000000000000000000;
						br1 <= switched[1];
						bi1 <= 18'b000000000000000000;
						ar2 <= switched[2];
						ai2 <= 18'b000000000000000000;
						br2 <= switched[3];
						bi2 <= 18'b000000000000000000;
						ar3 <= switched[4];
						ai3 <= 18'b000000000000000000;
						br3 <= switched[5];
						bi3 <= 18'b000000000000000000;
						ar4 <= switched[6];
						ai4 <= 18'b000000000000000000;
						br4 <= switched[7];
						bi4 <= 18'b000000000000000000;
						state <= 1;
					end
					1: begin
						buff1r[0] <= sr1;
						buff1i[0] <= si1;
						buff1r[1] <= tr1;
						buff1i[1] <= ti1;
						buff1r[2] <= sr2;
						buff1i[2] <= si2;
						buff1r[3] <= tr2;
						buff1i[3] <= ti2;
						buff1r[4] <= sr3;
						buff1i[4] <= si3;
						buff1r[5] <= tr3;
						buff1i[5] <= ti3;
						buff1r[6] <= sr4;
						buff1i[6] <= si4;
						buff1r[7] <= tr4;
						buff1i[7] <= ti4;
						ar1 <= switched[8];
						ai1 <= 18'b000000000000000000;
						br1 <= switched[9];
						bi1 <= 18'b000000000000000000;
						ar2 <= switched[10];
						ai2 <= 18'b000000000000000000;
						br2 <= switched[11];
						bi2 <= 18'b000000000000000000;
						ar3 <= switched[12];
						ai3 <= 18'b000000000000000000;
						br3 <= switched[13];
						bi3 <= 18'b000000000000000000;
						ar4 <= switched[14];
						ai4 <= 18'b000000000000000000;
						br4 <= switched[15];
						bi4 <= 18'b000000000000000000;
						state <= 2;
					end
					2: begin
						buff1r[8] <= sr1;
						buff1i[8] <= si1;
						buff1r[9] <= tr1;
						buff1i[9] <= ti1;
						buff1r[10] <= sr2;
						buff1i[10] <= si2;
						buff1r[11] <= tr2;
						buff1i[11] <= ti2;
						buff1r[12] <= sr3;
						buff1i[12] <= si3;
						buff1r[13] <= tr3;
						buff1i[13] <= ti3;
						buff1r[14] <= sr4;
						buff1i[14] <= si4;
						buff1r[15] <= tr4;
						buff1i[15] <= ti4;
						ar1 <= switched[16];
						ai1 <= 18'b000000000000000000;
						br1 <= switched[17];
						bi1 <= 18'b000000000000000000;
						ar2 <= switched[18];
						ai2 <= 18'b000000000000000000;
						br2 <= switched[19];
						bi2 <= 18'b000000000000000000;
						ar3 <= switched[20];
						ai3 <= 18'b000000000000000000;
						br3 <= switched[21];
						bi3 <= 18'b000000000000000000;
						ar4 <= switched[22];
						ai4 <= 18'b000000000000000000;
						br4 <= switched[23];
						bi4 <= 18'b000000000000000000;
						state <= 3;
					end
					3: begin
						buff1r[16] <= sr1;
						buff1i[16] <= si1;
						buff1r[17] <= tr1;
						buff1i[17] <= ti1;
						buff1r[18] <= sr2;
						buff1i[18] <= si2;
						buff1r[19] <= tr2;
						buff1i[19] <= ti2;
						buff1r[20] <= sr3;
						buff1i[20] <= si3;
						buff1r[21] <= tr3;
						buff1i[21] <= ti3;
						buff1r[22] <= sr4;
						buff1i[22] <= si4;
						buff1r[23] <= tr4;
						buff1i[23] <= ti4;
						ar1 <= switched[24];
						ai1 <= 18'b000000000000000000;
						br1 <= switched[25];
						bi1 <= 18'b000000000000000000;
						ar2 <= switched[26];
						ai2 <= 18'b000000000000000000;
						br2 <= switched[27];
						bi2 <= 18'b000000000000000000;
						ar3 <= switched[28];
						ai3 <= 18'b000000000000000000;
						br3 <= switched[29];
						bi3 <= 18'b000000000000000000;
						ar4 <= switched[30];
						ai4 <= 18'b000000000000000000;
						br4 <= switched[31];
						bi4 <= 18'b000000000000000000;
						state <= 4;
					end
					4: begin
						buff1r[24] <= sr1;
						buff1i[24] <= si1;
						buff1r[25] <= tr1;
						buff1i[25] <= ti1;
						buff1r[26] <= sr2;
						buff1i[26] <= si2;
						buff1r[27] <= tr2;
						buff1i[27] <= ti2;
						buff1r[28] <= sr3;
						buff1i[28] <= si3;
						buff1r[29] <= tr3;
						buff1i[29] <= ti3;
						buff1r[30] <= sr4;
						buff1i[30] <= si4;
						buff1r[31] <= tr4;
						buff1i[31] <= ti4;
						ar1 <= switched[32];
						ai1 <= 0;
						br1 <= switched[33];
						bi1 <= 0;
						ar2 <= switched[34];
						ai2 <= 0;
						br2 <= switched[35];
						bi2 <= 0;
						ar3 <= switched[36];
						ai3 <= 0;
						br3 <= switched[37];
						bi3 <= 0;
						ar4 <= switched[38];
						ai4 <= 0;
						br4 <= switched[39];
						bi4 <= 0;
						state <= 5;
					end
					5: begin
						buff1r[32] <= sr1;
						buff1i[32] <= si1;
						buff1r[33] <= tr1;
						buff1i[33] <= ti1;
						buff1r[34] <= sr2;
						buff1i[34] <= si2;
						buff1r[35] <= tr2;
						buff1i[35] <= ti2;
						buff1r[36] <= sr3;
						buff1i[36] <= si3;
						buff1r[37] <= tr3;
						buff1i[37] <= ti3;
						buff1r[38] <= sr4;
						buff1i[38] <= si4;
						buff1r[39] <= tr4;
						buff1i[39] <= ti4;
						ar1 <= switched[40];
						ai1 <= 0;
						br1 <= switched[41];
						bi1 <= 0;
						ar2 <= switched[42];
						ai2 <= 0;
						br2 <= switched[43];
						bi2 <= 0;
						ar3 <= switched[44];
						ai3 <= 0;
						br3 <= switched[45];
						bi3 <= 0;
						ar4 <= switched[46];
						ai4 <= 0;
						br4 <= switched[47];
						bi4 <= 0;
						state <= 6;
					end
					6: begin
						buff1r[40] <= sr1;
						buff1i[40] <= si1;
						buff1r[41] <= tr1;
						buff1i[41] <= ti1;
						buff1r[42] <= sr2;
						buff1i[42] <= si2;
						buff1r[43] <= tr2;
						buff1i[43] <= ti2;
						buff1r[44] <= sr3;
						buff1i[44] <= si3;
						buff1r[45] <= tr3;
						buff1i[45] <= ti3;
						buff1r[46] <= sr4;
						buff1i[46] <= si4;
						buff1r[47] <= tr4;
						buff1i[47] <= ti4;
						ar1 <= switched[48];
						ai1 <= 0;
						br1 <= switched[49];
						bi1 <= 0;
						ar2 <= switched[50];
						ai2 <= 0;
						br2 <= switched[51];
						bi2 <= 0;
						ar3 <= switched[52];
						ai3 <= 0;
						br3 <= switched[53];
						bi3 <= 0;
						ar4 <= switched[54];
						ai4 <= 0;
						br4 <= switched[55];
						bi4 <= 0;
						state <= 7;
					end
					7: begin
						buff1r[48] <= sr1;
						buff1i[48] <= si1;
						buff1r[49] <= tr1;
						buff1i[49] <= ti1;
						buff1r[50] <= sr2;
						buff1i[50] <= si2;
						buff1r[51] <= tr2;
						buff1i[51] <= ti2;
						buff1r[52] <= sr3;
						buff1i[52] <= si3;
						buff1r[53] <= tr3;
						buff1i[53] <= ti3;
						buff1r[54] <= sr4;
						buff1i[54] <= si4;
						buff1r[55] <= tr4;
						buff1i[55] <= ti4;
						ar1 <= switched[56];
						ai1 <= 0;
						br1 <= switched[57];
						bi1 <= 0;
						ar2 <= switched[58];
						ai2 <= 0;
						br2 <= switched[59];
						bi2 <= 0;
						ar3 <= switched[60];
						ai3 <= 0;
						br3 <= switched[61];
						bi3 <= 0;
						ar4 <= switched[62];
						ai4 <= 0;
						br4 <= switched[63];
						bi4 <= 0;
						state <= 8;
					end
					8: begin
						buff1r[56] <= sr1;
						buff1i[56] <= si1;
						buff1r[57] <= tr1;
						buff1i[57] <= ti1;
						buff1r[58] <= sr2;
						buff1i[58] <= si2;
						buff1r[59] <= tr2;
						buff1i[59] <= ti2;
						buff1r[60] <= sr3;
						buff1i[60] <= si3;
						buff1r[61] <= tr3;
						buff1i[61] <= ti3;
						buff1r[62] <= sr4;
						buff1i[62] <= si4;
						buff1r[63] <= tr4;
						buff1i[63] <= ti4;
						state <= 0;
						stage <= 2;
					end
				endcase
			end
			2: begin //multiply twiddle factors 1
				case (state)
					0: begin
						for (i = 0; i < 64; i = i + 1) begin
							buff2r[i] <= buff1r[i];
							buff2i[i] <= buff1i[i];
							end	
						cr2 <= buff1r[3];
						ci2 <= buff1i[3];
						dr2 <= coefr[16];
						di2 <= coefi[16];
						cr1 <= buff1r[7];
						ci1 <= buff1i[7];
						dr1 <= coefr[16];
						di1 <= coefi[16];
						state <= 1;
					end
					1: begin
						buff2r[3] <= pr2[29:12];
						buff2i[3] <= pi2[29:12];
						buff2r[7] <= pr1[29:12];
						buff2i[7] <= pi1[29:12];
						cr1 <= buff1r[11];
						ci1 <= buff1i[11];
						dr1 <= coefr[16];
						di1 <= coefi[16];
						cr2 <= buff1r[15];
						ci2 <= buff1i[15];
						dr2 <= coefr[16];
						di2 <= coefi[16];
						state <= 2;
						end
					2: begin
						buff2r[11] <= pr1[29:12];
						buff2i[11] <= pi1[29:12];
						buff2r[15] <= pr2[29:12];
						buff2i[15] <= pi2[29:12];
						cr1 <= buff1r[19];
						ci1 <= buff1i[19];
						dr1 <= coefr[16];
						di1 <= coefi[16];
						cr2 <= buff1r[23];
						ci2 <= buff1i[23];
						dr2 <= coefr[16];
						di2 <= coefi[16];
						state <= 3;
					end
					3: begin
						buff2r[19] <= pr1[29:12];
						buff2i[19] <= pi1[29:12];
						buff2r[23] <= pr2[29:12];
						buff2i[23] <= pi2[29:12];
						cr1 <= buff1r[27];
						ci1 <= buff1i[27];
						dr1 <= coefr[16];
						di1 <= coefi[16];
						cr2 <= buff1r[31];
						ci2 <= buff1i[31];
						dr2 <= coefr[16];
						di2 <= coefi[16];
						state <= 4;
					end
					4: begin
						buff2r[27] <= pr1[29:12];
						buff2i[27] <= pi1[29:12];
						buff2r[31] <= pr2[29:12];
						buff2i[31] <= pi2[29:12];
						cr1 <= buff1r[35];
						ci1 <= buff1i[35];
						dr1 <= coefr[16];
						di1 <= coefi[16];
						cr2 <= buff1r[39];
						ci2 <= buff1i[39];
						dr2 <= coefr[16];
						di2 <= coefi[16];
						state <= 5;
					end
					5: begin
						buff2r[35] <= pr1[29:12];
						buff2i[35] <= pi1[29:12];
						buff2r[39] <= pr2[29:12];
						buff2i[39] <= pi2[29:12];
						cr1 <= buff1r[43];
						ci1 <= buff1i[43];
						dr1 <= coefr[16];
						di1 <= coefi[16];
						cr2 <= buff1r[47];
						ci2 <= buff1i[47];
						dr2 <= coefr[16];
						di2 <= coefi[16];
						state <= 6;
					end
					6: begin
						buff2r[43] <= pr1[29:12];
						buff2i[43] <= pi1[29:12];
						buff2r[47] <= pr2[29:12];
						buff2i[47] <= pi2[29:12];
						cr1 <= buff1r[51];
						ci1 <= buff1i[51];
						dr1 <= coefr[16];
						di1 <= coefi[16];
						cr2 <= buff1r[55];
						ci2 <= buff1i[55];
						dr2 <= coefr[16];
						di2 <= coefi[16];
						state <= 7;
					end
					7: begin
						buff2r[51] <= pr1[29:12];
						buff2i[51] <= pi1[29:12];
						buff2r[55] <= pr2[29:12];
						buff2i[55] <= pi2[29:12];
						cr1 <= buff1r[59];
						ci1 <= buff1i[59];
						dr1 <= coefr[16];
						di1 <= coefi[16];
						cr2 <= buff1r[63];
						ci2 <= buff1i[63];
						dr2 <= coefr[16];
						di2 <= coefi[16];
						state <= 8;
					end
					8: begin
						buff2r[59] <= pr1[29:12];
						buff2i[59] <= pi1[29:12];
						buff2r[63] <= pr2[29:12];
						buff2i[63] <= pi2[29:12];
						state <= 0;
						stage <= 3;
					end
				endcase
			end
			3: begin //butterfly 1
				case (state)
					0: begin
						ar1 <= buff2r[0];
						ai1 <= buff2i[0];
						br1 <= buff2r[2];
						bi1 <= buff2i[2];
						ar2 <= buff2r[1];
						ai2 <= buff2i[1];
						br2 <= buff2r[3];
						bi2 <= buff2i[3];
						ar3 <= buff2r[4];
						ai3 <= buff2i[4];
						br3 <= buff2r[6];
						bi3 <= buff2i[6];
						ar4 <= buff2r[5];
						ai4 <= buff2i[5];
						br4 <= buff2r[7];
						bi4 <= buff2i[7];
						state <= 1;
					end
					1: begin
						buff1r[0] <= sr1;
						buff1i[0] <= si1;
						buff1r[2] <= tr1;
						buff1i[2] <= ti1;
						buff1r[1] <= sr2;
						buff1i[1] <= si2;
						buff1r[3] <= tr2;
						buff1i[3] <= ti2;
						buff1r[4] <= sr3;
						buff1i[4] <= si3;
						buff1r[6] <= tr3;
						buff1i[6] <= ti3;
						buff1r[5] <= sr4;
						buff1i[5] <= si4;
						buff1r[7] <= tr4;
						buff1i[7] <= ti4;
						ar1 <= buff2r[8];
						ai1 <= buff2i[8];
						br1 <= buff2r[10];
						bi1 <= buff2i[10];
						ar2 <= buff2r[9];
						ai2 <= buff2i[9];
						br2 <= buff2r[11];
						bi2 <= buff2i[11];
						ar3 <= buff2r[12];
						ai3 <= buff2i[12];
						br3 <= buff2r[14];
						bi3 <= buff2i[14];
						ar4 <= buff2r[13];
						ai4 <= buff2i[13];
						br4 <= buff2r[15];
						bi4 <= buff2i[15];
						state <= 2;
					end
					2: begin
						buff1r[8] <= sr1;
						buff1i[8] <= si1;
						buff1r[10] <= tr1;
						buff1i[10] <= ti1;
						buff1r[9] <= sr2;
						buff1i[9] <= si2;
						buff1r[11] <= tr2;
						buff1i[11] <= ti2;
						buff1r[12] <= sr3;
						buff1i[12] <= si3;
						buff1r[14] <= tr3;
						buff1i[14] <= ti3;
						buff1r[13] <= sr4;
						buff1i[13] <= si4;
						buff1r[15] <= tr4;
						buff1i[15] <= ti4;
						ar1 <= buff2r[16];
						ai1 <= buff2i[16];
						br1 <= buff2r[18];
						bi1 <= buff2i[18];
						ar2 <= buff2r[17];
						ai2 <= buff2i[17];
						br2 <= buff2r[19];
						bi2 <= buff2i[19];
						ar3 <= buff2r[20];
						ai3 <= buff2i[20];
						br3 <= buff2r[22];
						bi3 <= buff2i[22];
						ar4 <= buff2r[21];
						ai4 <= buff2i[21];
						br4 <= buff2r[23];
						bi4 <= buff2i[23];
						state <= 3;
					end
					3: begin
						buff1r[16] <= sr1;
						buff1i[16] <= si1;
						buff1r[18] <= tr1;
						buff1i[18] <= ti1;
						buff1r[17] <= sr2;
						buff1i[17] <= si2;
						buff1r[19] <= tr2;
						buff1i[19] <= ti2;
						buff1r[20] <= sr3;
						buff1i[20] <= si3;
						buff1r[22] <= tr3;
						buff1i[22] <= ti3;
						buff1r[21] <= sr4;
						buff1i[21] <= si4;
						buff1r[23] <= tr4;
						buff1i[23] <= ti4;
						ar1 <= buff2r[24];
						ai1 <= buff2i[24];
						br1 <= buff2r[26];
						bi1 <= buff2i[26];
						ar2 <= buff2r[25];
						ai2 <= buff2i[25];
						br2 <= buff2r[27];
						bi2 <= buff2i[27];
						ar3 <= buff2r[28];
						ai3 <= buff2i[28];
						br3 <= buff2r[30];
						bi3 <= buff2i[30];
						ar4 <= buff2r[29];
						ai4 <= buff2i[29];
						br4 <= buff2r[31];
						bi4 <= buff2i[31];
						state <= 4;
					end
					4: begin
						buff1r[24] <= sr1;
						buff1i[24] <= si1;
						buff1r[26] <= tr1;
						buff1i[26] <= ti1;
						buff1r[25] <= sr2;
						buff1i[25] <= si2;
						buff1r[27] <= tr2;
						buff1i[27] <= ti2;
						buff1r[28] <= sr3;
						buff1i[28] <= si3;
						buff1r[30] <= tr3;
						buff1i[30] <= ti3;
						buff1r[29] <= sr4;
						buff1i[29] <= si4;
						buff1r[31] <= tr4;
						buff1i[31] <= ti4;
						ar1 <= buff2r[32];
						ai1 <= buff2i[32];
						br1 <= buff2r[34];
						bi1 <= buff2i[34];
						ar2 <= buff2r[33];
						ai2 <= buff2i[33];
						br2 <= buff2r[35];
						bi2 <= buff2i[35];
						ar3 <= buff2r[36];
						ai3 <= buff2i[36];
						br3 <= buff2r[38];
						bi3 <= buff2i[38];
						ar4 <= buff2r[37];
						ai4 <= buff2i[37];
						br4 <= buff2r[39];
						bi4 <= buff2i[39];
						state <= 5;
					end
					5: begin
						buff1r[32] <= sr1;
						buff1i[32] <= si1;
						buff1r[34] <= tr1;
						buff1i[34] <= ti1;
						buff1r[33] <= sr2;
						buff1i[33] <= si2;
						buff1r[35] <= tr2;
						buff1i[35] <= ti2;
						buff1r[36] <= sr3;
						buff1i[36] <= si3;
						buff1r[38] <= tr3;
						buff1i[38] <= ti3;
						buff1r[37] <= sr4;
						buff1i[37] <= si4;
						buff1r[39] <= tr4;
						buff1i[39] <= ti4;
						ar1 <= buff2r[40];
						ai1 <= buff2i[40];
						br1 <= buff2r[42];
						bi1 <= buff2i[42];
						ar2 <= buff2r[41];
						ai2 <= buff2i[41];
						br2 <= buff2r[43];
						bi2 <= buff2i[43];
						ar3 <= buff2r[44];
						ai3 <= buff2i[44];
						br3 <= buff2r[46];
						bi3 <= buff2i[46];
						ar4 <= buff2r[45];
						ai4 <= buff2i[45];
						br4 <= buff2r[47];
						bi4 <= buff2i[47];
						state <= 6;
					end
					6: begin
						buff1r[40] <= sr1;
						buff1i[40] <= si1;
						buff1r[42] <= tr1;
						buff1i[42] <= ti1;
						buff1r[41] <= sr2;
						buff1i[41] <= si2;
						buff1r[43] <= tr2;
						buff1i[43] <= ti2;
						buff1r[44] <= sr3;
						buff1i[44] <= si3;
						buff1r[46] <= tr3;
						buff1i[46] <= ti3;
						buff1r[45] <= sr4;
						buff1i[45] <= si4;
						buff1r[47] <= tr4;
						buff1i[47] <= ti4;
						ar1 <= buff2r[48];
						ai1 <= buff2i[48];
						br1 <= buff2r[50];
						bi1 <= buff2i[50];
						ar2 <= buff2r[49];
						ai2 <= buff2i[49];
						br2 <= buff2r[51];
						bi2 <= buff2i[51];
						ar3 <= buff2r[52];
						ai3 <= buff2i[52];
						br3 <= buff2r[54];
						bi3 <= buff2i[54];
						ar4 <= buff2r[53];
						ai4 <= buff2i[53];
						br4 <= buff2r[55];
						bi4 <= buff2i[55];
						state <= 7;
					end
					7: begin
						buff1r[48] <= sr1;
						buff1i[48] <= si1;
						buff1r[50] <= tr1;
						buff1i[50] <= ti1;
						buff1r[49] <= sr2;
						buff1i[49] <= si2;
						buff1r[51] <= tr2;
						buff1i[51] <= ti2;
						buff1r[52] <= sr3;
						buff1i[52] <= si3;
						buff1r[54] <= tr3;
						buff1i[54] <= ti3;
						buff1r[53] <= sr4;
						buff1i[53] <= si4;
						buff1r[55] <= tr4;
						buff1i[55] <= ti4;
						ar1 <= buff2r[56];
						ai1 <= buff2i[56];
						br1 <= buff2r[58];
						bi1 <= buff2i[58];
						ar2 <= buff2r[57];
						ai2 <= buff2i[57];
						br2 <= buff2r[59];
						bi2 <= buff2i[59];
						ar3 <= buff2r[60];
						ai3 <= buff2i[60];
						br3 <= buff2r[62];
						bi3 <= buff2i[62];
						ar4 <= buff2r[61];
						ai4 <= buff2i[61];
						br4 <= buff2r[63];
						bi4 <= buff2i[63];
						state <= 8;
					end
					8: begin
						buff1r[56] <= sr1;
						buff1i[56] <= si1;
						buff1r[58] <= tr1;
						buff1i[58] <= ti1;
						buff1r[57] <= sr2;
						buff1i[57] <= si2;
						buff1r[59] <= tr2;
						buff1i[59] <= ti2;
						buff1r[60] <= sr3;
						buff1i[60] <= si3;
						buff1r[62] <= tr3;
						buff1i[62] <= ti3;
						buff1r[61] <= sr4;
						buff1i[61] <= si4;
						buff1r[63] <= tr4;
						buff1i[63] <= ti4;
						state <= 0;
						stage <= 4;
					end
				endcase
			end
			4: begin //multiply twiddle factors 2
				case (state)
					0: begin
						for (i = 0; i < 64; i = i + 1) begin
							buff2r[i] <= buff1r[i];
							buff2i[i] <= buff1i[i];
							end	
						cr1 <= buff1r[4];
						ci1 <= buff1i[4];
						dr1 <= coefr[0];
						di1 <= coefi[0];
						cr2 <= buff1r[5];
						ci2 <= buff1i[5];
						dr2 <= coefr[8];
						di2 <= coefi[8];
						state <= 1;
					end
					1: begin
						buff2r[4] <= pr1[29:12];
						buff2i[4] <= pi1[29:12];
						buff2r[5] <= pr2[29:12];
						buff2i[5] <= pi2[29:12];
						cr1 <= buff1r[6];
						ci1 <= buff1i[6];
						dr1 <= coefr[16];
						di1 <= coefi[16];
						cr2 <= buff1r[7];
						ci2 <= buff1i[7];
						dr2 <= coefr[24];
						di2 <= coefi[24];
						state <= 2;
						end
					2: begin
						buff2r[6] <= pr1[29:12];
						buff2i[6] <= pi1[29:12];
						buff2r[7] <= pr2[29:12];
						buff2i[7] <= pi2[29:12];
						cr1 <= buff1r[12];
						ci1 <= buff1i[12];
						dr1 <= coefr[0];
						di1 <= coefi[0];
						cr2 <= buff1r[13];
						ci2 <= buff1i[13];
						dr2 <= coefr[8];
						di2 <= coefi[8];
						state <= 3;
					end
					3: begin
						buff2r[12] <= pr1[29:12];
						buff2i[12] <= pi1[29:12];
						buff2r[13] <= pr2[29:12];
						buff2i[13] <= pi2[29:12];
						cr1 <= buff1r[14];
						ci1 <= buff1i[14];
						dr1 <= coefr[16];
						di1 <= coefi[16];
						cr2 <= buff1r[15];
						ci2 <= buff1i[15];
						dr2 <= coefr[24];
						di2 <= coefi[24];
						state <= 4;
					end
					4: begin
						buff2r[14] <= pr1[29:12];
						buff2i[14] <= pi1[29:12];
						buff2r[15] <= pr2[29:12];
						buff2i[15] <= pi2[29:12];
						cr1 <= buff1r[20];
						ci1 <= buff1i[20];
						dr1 <= coefr[0];
						di1 <= coefi[0];
						cr2 <= buff1r[21];
						ci2 <= buff1i[21];
						dr2 <= coefr[8];
						di2 <= coefi[8];
						state <= 5;
					end
					5: begin
						buff2r[20] <= pr1[29:12];
						buff2i[20] <= pi1[29:12];
						buff2r[21] <= pr2[29:12];
						buff2i[21] <= pi2[29:12];
						cr1 <= buff1r[22];
						ci1 <= buff1i[22];
						dr1 <= coefr[16];
						di1 <= coefi[16];
						cr2 <= buff1r[23];
						ci2 <= buff1i[23];
						dr2 <= coefr[24];
						di2 <= coefi[24];
						state <= 6;
					end
					6: begin
						buff2r[22] <= pr1[29:12];
						buff2i[22] <= pi1[29:12];
						buff2r[23] <= pr2[29:12];
						buff2i[23] <= pi2[29:12];
						cr1 <= buff1r[28];
						ci1 <= buff1i[28];
						dr1 <= coefr[0];
						di1 <= coefi[0];
						cr2 <= buff1r[29];
						ci2 <= buff1i[29];
						dr2 <= coefr[8];
						di2 <= coefi[8];
						state <= 7;
					end
					7: begin
						buff2r[28] <= pr1[29:12];
						buff2i[28] <= pi1[29:12];
						buff2r[29] <= pr2[29:12];
						buff2i[29] <= pi2[29:12];
						cr1 <= buff1r[30];
						ci1 <= buff1i[30];
						dr1 <= coefr[16];
						di1 <= coefi[16];
						cr2 <= buff1r[31];
						ci2 <= buff1i[31];
						dr2 <= coefr[24];
						di2 <= coefi[24];
						state <= 8;
					end
					8: begin
						buff2r[30] <= pr1[29:12];
						buff2i[30] <= pi1[29:12];
						buff2r[31] <= pr2[29:12];
						buff2i[31] <= pi2[29:12];
						cr1 <= buff1r[36];
						ci1 <= buff1i[36];
						dr1 <= coefr[0];
						di1 <= coefi[0];
						cr2 <= buff1r[37];
						ci2 <= buff1i[37];
						dr2 <= coefr[8];
						di2 <= coefi[8];
						state <= 9;
					end
					9: begin
						buff2r[36] <= pr1[29:12];
						buff2i[36] <= pi1[29:12];
						buff2r[37] <= pr2[29:12];
						buff2i[37] <= pi2[29:12];
						cr1 <= buff1r[38];
						ci1 <= buff1i[38];
						dr1 <= coefr[16];
						di1 <= coefi[16];
						cr2 <= buff1r[39];
						ci2 <= buff1i[39];
						dr2 <= coefr[24];
						di2 <= coefi[24];
						state <= 10;
					end
					10: begin
						buff2r[38] <= pr1[29:12];
						buff2i[38] <= pi1[29:12];
						buff2r[39] <= pr2[29:12];
						buff2i[39] <= pi2[29:12];
						cr1 <= buff1r[44];
						ci1 <= buff1i[44];
						dr1 <= coefr[0];
						di1 <= coefi[0];
						cr2 <= buff1r[45];
						ci2 <= buff1i[45];
						dr2 <= coefr[8];
						di2 <= coefi[8];
						state <= 11;
					end
					11: begin
						buff2r[44] <= pr1[29:12];
						buff2i[44] <= pi1[29:12];
						buff2r[45] <= pr2[29:12];
						buff2i[45] <= pi2[29:12];
						cr1 <= buff1r[46];
						ci1 <= buff1i[46];
						dr1 <= coefr[16];
						di1 <= coefi[16];
						cr2 <= buff1r[47];
						ci2 <= buff1i[47];
						dr2 <= coefr[24];
						di2 <= coefi[24];
						state <= 12;
						end
					12: begin
						buff2r[46] <= pr1[29:12];
						buff2i[46] <= pi1[29:12];
						buff2r[47] <= pr2[29:12];
						buff2i[47] <= pi2[29:12];
						cr1 <= buff1r[52];
						ci1 <= buff1i[52];
						dr1 <= coefr[0];
						di1 <= coefi[0];
						cr2 <= buff1r[53];
						ci2 <= buff1i[53];
						dr2 <= coefr[8];
						di2 <= coefi[8];
						state <= 13;
					end
					13: begin
						buff2r[52] <= pr1[29:12];
						buff2i[52] <= pi1[29:12];
						buff2r[53] <= pr2[29:12];
						buff2i[53] <= pi2[29:12];
						cr1 <= buff1r[54];
						ci1 <= buff1i[54];
						dr1 <= coefr[16];
						di1 <= coefi[16];
						cr2 <= buff1r[55];
						ci2 <= buff1i[55];
						dr2 <= coefr[24];
						di2 <= coefi[24];
						state <= 14;
					end
					14: begin
						buff2r[54] <= pr1[29:12];
						buff2i[54] <= pi1[29:12];
						buff2r[55] <= pr2[29:12];
						buff2i[55] <= pi2[29:12];
						cr1 <= buff1r[60];
						ci1 <= buff1i[60];
						dr1 <= coefr[0];
						di1 <= coefi[0];
						cr2 <= buff1r[61];
						ci2 <= buff1i[61];
						dr2 <= coefr[8];
						di2 <= coefi[8];
						state <= 15;
					end
					15: begin
						buff2r[60] <= pr1[29:12];
						buff2i[60] <= pi1[29:12];
						buff2r[61] <= pr2[29:12];
						buff2i[61] <= pi2[29:12];
						cr1 <= buff1r[62];
						ci1 <= buff1i[62];
						dr1 <= coefr[16];
						di1 <= coefi[16];
						cr2 <= buff1r[63];
						ci2 <= buff1i[63];
						dr2 <= coefr[24];
						di2 <= coefi[24];
						state <= 16;
					end
					16: begin
						buff2r[62] <= pr1[29:12];
						buff2i[62] <= pi1[29:12];
						buff2r[63] <= pr2[29:12];
						buff2i[63] <= pi2[29:12];
						state <= 0;
						stage <= 5;
					end
				endcase
			end
			5: begin //butterfly 2
				case (state)
					0: begin
						ar1 <= buff2r[0];
						ai1 <= buff2i[0];
						br1 <= buff2r[4];
						bi1 <= buff2i[4];
						ar2 <= buff2r[1];
						ai2 <= buff2i[1];
						br2 <= buff2r[5];
						bi2 <= buff2i[5];
						ar3 <= buff2r[2];
						ai3 <= buff2i[2];
						br3 <= buff2r[6];
						bi3 <= buff2i[6];
						ar4 <= buff2r[3];
						ai4 <= buff2i[3];
						br4 <= buff2r[7];
						bi4 <= buff2i[7];
						state <= 1;
					end
					1: begin
						buff1r[0] <= sr1;
						buff1i[0] <= si1;
						buff1r[4] <= tr1;
						buff1i[4] <= ti1;
						buff1r[1] <= sr2;
						buff1i[1] <= si2;
						buff1r[5] <= tr2;
						buff1i[5] <= ti2;
						buff1r[2] <= sr3;
						buff1i[2] <= si3;
						buff1r[6] <= tr3;
						buff1i[6] <= ti3;
						buff1r[3] <= sr4;
						buff1i[3] <= si4;
						buff1r[7] <= tr4;
						buff1i[7] <= ti4;
						ar1 <= buff2r[8];
						ai1 <= buff2i[8];
						br1 <= buff2r[12];
						bi1 <= buff2i[12];
						ar2 <= buff2r[9];
						ai2 <= buff2i[9];
						br2 <= buff2r[13];
						bi2 <= buff2i[13];
						ar3 <= buff2r[10];
						ai3 <= buff2i[10];
						br3 <= buff2r[14];
						bi3 <= buff2i[14];
						ar4 <= buff2r[11];
						ai4 <= buff2i[11];
						br4 <= buff2r[15];
						bi4 <= buff2i[15];
						state <= 2;
					end
					2: begin
						buff1r[8] <= sr1;
						buff1i[8] <= si1;
						buff1r[12] <= tr1;
						buff1i[12] <= ti1;
						buff1r[9] <= sr2;
						buff1i[9] <= si2;
						buff1r[13] <= tr2;
						buff1i[13] <= ti2;
						buff1r[10] <= sr3;
						buff1i[10] <= si3;
						buff1r[14] <= tr3;
						buff1i[14] <= ti3;
						buff1r[11] <= sr4;
						buff1i[11] <= si4;
						buff1r[15] <= tr4;
						buff1i[15] <= ti4;
						ar1 <= buff2r[16];
						ai1 <= buff2i[16];
						br1 <= buff2r[20];
						bi1 <= buff2i[20];
						ar2 <= buff2r[17];
						ai2 <= buff2i[17];
						br2 <= buff2r[21];
						bi2 <= buff2i[21];
						ar3 <= buff2r[18];
						ai3 <= buff2i[18];
						br3 <= buff2r[22];
						bi3 <= buff2i[22];
						ar4 <= buff2r[19];
						ai4 <= buff2i[19];
						br4 <= buff2r[23];
						bi4 <= buff2i[23];
						state <= 3;
					end
					3: begin
						buff1r[16] <= sr1;
						buff1i[16] <= si1;
						buff1r[20] <= tr1;
						buff1i[20] <= ti1;
						buff1r[17] <= sr2;
						buff1i[17] <= si2;
						buff1r[21] <= tr2;
						buff1i[21] <= ti2;
						buff1r[18] <= sr3;
						buff1i[18] <= si3;
						buff1r[22] <= tr3;
						buff1i[22] <= ti3;
						buff1r[19] <= sr4;
						buff1i[19] <= si4;
						buff1r[23] <= tr4;
						buff1i[23] <= ti4;
						ar1 <= buff2r[24];
						ai1 <= buff2i[24];
						br1 <= buff2r[28];
						bi1 <= buff2i[28];
						ar2 <= buff2r[25];
						ai2 <= buff2i[25];
						br2 <= buff2r[29];
						bi2 <= buff2i[29];
						ar3 <= buff2r[26];
						ai3 <= buff2i[26];
						br3 <= buff2r[30];
						bi3 <= buff2i[30];
						ar4 <= buff2r[27];
						ai4 <= buff2i[27];
						br4 <= buff2r[31];
						bi4 <= buff2i[31];
						state <= 4;
					end
					4: begin
						buff1r[24] <= sr1;
						buff1i[24] <= si1;
						buff1r[28] <= tr1;
						buff1i[28] <= ti1;
						buff1r[25] <= sr2;
						buff1i[25] <= si2;
						buff1r[29] <= tr2;
						buff1i[29] <= ti2;
						buff1r[26] <= sr3;
						buff1i[26] <= si3;
						buff1r[30] <= tr3;
						buff1i[30] <= ti3;
						buff1r[27] <= sr4;
						buff1i[27] <= si4;
						buff1r[31] <= tr4;
						buff1i[31] <= ti4;
						ar1 <= buff2r[32];
						ai1 <= buff2i[32];
						br1 <= buff2r[36];
						bi1 <= buff2i[36];
						ar2 <= buff2r[33];
						ai2 <= buff2i[33];
						br2 <= buff2r[37];
						bi2 <= buff2i[37];
						ar3 <= buff2r[34];
						ai3 <= buff2i[34];
						br3 <= buff2r[38];
						bi3 <= buff2i[38];
						ar4 <= buff2r[35];
						ai4 <= buff2i[35];
						br4 <= buff2r[39];
						bi4 <= buff2i[39];
						state <= 5;
					end
					5: begin
						buff1r[32] <= sr1;
						buff1i[32] <= si1;
						buff1r[36] <= tr1;
						buff1i[36] <= ti1;
						buff1r[33] <= sr2;
						buff1i[33] <= si2;
						buff1r[37] <= tr2;
						buff1i[37] <= ti2;
						buff1r[34] <= sr3;
						buff1i[34] <= si3;
						buff1r[38] <= tr3;
						buff1i[38] <= ti3;
						buff1r[35] <= sr4;
						buff1i[35] <= si4;
						buff1r[39] <= tr4;
						buff1i[39] <= ti4;
						ar1 <= buff2r[40];
						ai1 <= buff2i[40];
						br1 <= buff2r[44];
						bi1 <= buff2i[44];
						ar2 <= buff2r[41];
						ai2 <= buff2i[41];
						br2 <= buff2r[45];
						bi2 <= buff2i[45];
						ar3 <= buff2r[42];
						ai3 <= buff2i[42];
						br3 <= buff2r[46];
						bi3 <= buff2i[46];
						ar4 <= buff2r[43];
						ai4 <= buff2i[43];
						br4 <= buff2r[47];
						bi4 <= buff2i[47];
						state <= 6;
					end
					6: begin
						buff1r[40] <= sr1;
						buff1i[40] <= si1;
						buff1r[44] <= tr1;
						buff1i[44] <= ti1;
						buff1r[41] <= sr2;
						buff1i[41] <= si2;
						buff1r[45] <= tr2;
						buff1i[45] <= ti2;
						buff1r[42] <= sr3;
						buff1i[42] <= si3;
						buff1r[46] <= tr3;
						buff1i[46] <= ti3;
						buff1r[43] <= sr4;
						buff1i[43] <= si4;
						buff1r[47] <= tr4;
						buff1i[47] <= ti4;
						ar1 <= buff2r[48];
						ai1 <= buff2i[48];
						br1 <= buff2r[52];
						bi1 <= buff2i[52];
						ar2 <= buff2r[49];
						ai2 <= buff2i[49];
						br2 <= buff2r[53];
						bi2 <= buff2i[53];
						ar3 <= buff2r[50];
						ai3 <= buff2i[50];
						br3 <= buff2r[54];
						bi3 <= buff2i[54];
						ar4 <= buff2r[51];
						ai4 <= buff2i[51];
						br4 <= buff2r[55];
						bi4 <= buff2i[55];
						state <= 7;
					end
					7: begin
						buff1r[48] <= sr1;
						buff1i[48] <= si1;
						buff1r[52] <= tr1;
						buff1i[52] <= ti1;
						buff1r[49] <= sr2;
						buff1i[49] <= si2;
						buff1r[53] <= tr2;
						buff1i[53] <= ti2;
						buff1r[50] <= sr3;
						buff1i[50] <= si3;
						buff1r[54] <= tr3;
						buff1i[54] <= ti3;
						buff1r[51] <= sr4;
						buff1i[51] <= si4;
						buff1r[55] <= tr4;
						buff1i[55] <= ti4;
						ar1 <= buff2r[56];
						ai1 <= buff2i[56];
						br1 <= buff2r[60];
						bi1 <= buff2i[60];
						ar2 <= buff2r[57];
						ai2 <= buff2i[57];
						br2 <= buff2r[61];
						bi2 <= buff2i[61];
						ar3 <= buff2r[58];
						ai3 <= buff2i[58];
						br3 <= buff2r[62];
						bi3 <= buff2i[62];
						ar4 <= buff2r[59];
						ai4 <= buff2i[59];
						br4 <= buff2r[63];
						bi4 <= buff2i[63];
						state <= 8;
					end
					8: begin
						buff1r[56] <= sr1;
						buff1i[56] <= si1;
						buff1r[60] <= tr1;
						buff1i[60] <= ti1;
						buff1r[57] <= sr2;
						buff1i[57] <= si2;
						buff1r[61] <= tr2;
						buff1i[61] <= ti2;
						buff1r[58] <= sr3;
						buff1i[58] <= si3;
						buff1r[62] <= tr3;
						buff1i[62] <= ti3;
						buff1r[59] <= sr4;
						buff1i[59] <= si4;
						buff1r[63] <= tr4;
						buff1i[63] <= ti4;
						state <= 0;
						stage <= 6;
					end
				endcase
			end
			6: begin //multiply twiddle factors 3
				case (state)
					0: begin
						for (i = 0; i < 64; i = i + 1) begin
							buff2r[i] <= buff1r[i];
							buff2i[i] <= buff1i[i];
							end	
						cr1 <= buff1r[8];
						ci1 <= buff1i[8];
						dr1 <= coefr[0];
						di1 <= coefi[0];
						cr2 <= buff1r[9];
						ci2 <= buff1i[9];
						dr2 <= coefr[4];
						di2 <= coefi[4];
						state <= 1;
					end
					1: begin
						buff2r[8] <= pr1[29:12];
						buff2i[8] <= pi1[29:12];
						buff2r[9] <= pr2[29:12];
						buff2i[9] <= pi2[29:12];
						cr1 <= buff1r[10];
						ci1 <= buff1i[10];
						dr1 <= coefr[8];
						di1 <= coefi[8];
						cr2 <= buff1r[11];
						ci2 <= buff1i[11];
						dr2 <= coefr[12];
						di2 <= coefi[12];
						state <= 2;
						end
					2: begin
						buff2r[10] <= pr1[29:12];
						buff2i[10] <= pi1[29:12];
						buff2r[11] <= pr2[29:12];
						buff2i[11] <= pi2[29:12];
						cr1 <= buff1r[12];
						ci1 <= buff1i[12];
						dr1 <= coefr[16];
						di1 <= coefi[16];
						cr2 <= buff1r[13];
						ci2 <= buff1i[13];
						dr2 <= coefr[20];
						di2 <= coefi[20];
						state <= 3;
					end
					3: begin
						buff2r[12] <= pr1[29:12];
						buff2i[12] <= pi1[29:12];
						buff2r[13] <= pr2[29:12];
						buff2i[13] <= pi2[29:12];
						cr1 <= buff1r[14];
						ci1 <= buff1i[14];
						dr1 <= coefr[24];
						di1 <= coefi[24];
						cr2 <= buff1r[15];
						ci2 <= buff1i[15];
						dr2 <= coefr[28];
						di2 <= coefi[28];
						state <= 4;
					end
					4: begin
						buff2r[14] <= pr1[29:12];
						buff2i[14] <= pi1[29:12];
						buff2r[15] <= pr2[29:12];
						buff2i[15] <= pi2[29:12];
						cr1 <= buff1r[24];
						ci1 <= buff1i[24];
						dr1 <= coefr[0];
						di1 <= coefi[0];
						cr2 <= buff1r[25];
						ci2 <= buff1i[25];
						dr2 <= coefr[4];
						di2 <= coefi[4];
						state <= 5;
					end
					5: begin
						buff2r[24] <= pr1[29:12];
						buff2i[24] <= pi1[29:12];
						buff2r[25] <= pr2[29:12];
						buff2i[25] <= pi2[29:12];
						cr1 <= buff1r[26];
						ci1 <= buff1i[26];
						dr1 <= coefr[8];
						di1 <= coefi[8];
						cr2 <= buff1r[27];
						ci2 <= buff1i[27];
						dr2 <= coefr[12];
						di2 <= coefi[12];
						state <= 6;
					end
					6: begin
						buff2r[26] <= pr1[29:12];
						buff2i[26] <= pi1[29:12];
						buff2r[27] <= pr2[29:12];
						buff2i[27] <= pi2[29:12];
						cr1 <= buff1r[28];
						ci1 <= buff1i[28];
						dr1 <= coefr[16];
						di1 <= coefi[16];
						cr2 <= buff1r[29];
						ci2 <= buff1i[29];
						dr2 <= coefr[20];
						di2 <= coefi[20];
						state <= 7;
					end
					7: begin
						buff2r[28] <= pr1[29:12];
						buff2i[28] <= pi1[29:12];
						buff2r[29] <= pr2[29:12];
						buff2i[29] <= pi2[29:12];
						cr1 <= buff1r[30];
						ci1 <= buff1i[30];
						dr1 <= coefr[24];
						di1 <= coefi[24];
						cr2 <= buff1r[31];
						ci2 <= buff1i[31];
						dr2 <= coefr[28];
						di2 <= coefi[28];
						state <= 8;
					end
					8: begin
						buff2r[30] <= pr1[29:12];
						buff2i[30] <= pi1[29:12];
						buff2r[31] <= pr2[29:12];
						buff2i[31] <= pi2[29:12];
						cr1 <= buff1r[40];
						ci1 <= buff1i[40];
						dr1 <= coefr[0];
						di1 <= coefi[0];
						cr2 <= buff1r[41];
						ci2 <= buff1i[41];
						dr2 <= coefr[4];
						di2 <= coefi[4];
						state <= 9;
					end
					9: begin
						buff2r[40] <= pr1[29:12];
						buff2i[40] <= pi1[29:12];
						buff2r[41] <= pr2[29:12];
						buff2i[41] <= pi2[29:12];
						cr1 <= buff1r[42];
						ci1 <= buff1i[42];
						dr1 <= coefr[8];
						di1 <= coefi[8];
						cr2 <= buff1r[43];
						ci2 <= buff1i[43];
						dr2 <= coefr[12];
						di2 <= coefi[12];
						state <= 10;
					end
					10: begin
						buff2r[42] <= pr1[29:12];
						buff2i[42] <= pi1[29:12];
						buff2r[43] <= pr2[29:12];
						buff2i[43] <= pi2[29:12];
						cr1 <= buff1r[44];
						ci1 <= buff1i[44];
						dr1 <= coefr[16];
						di1 <= coefi[16];
						cr2 <= buff1r[45];
						ci2 <= buff1i[45];
						dr2 <= coefr[20];
						di2 <= coefi[20];
						state <= 11;
					end
					11: begin
						buff2r[44] <= pr1[29:12];
						buff2i[44] <= pi1[29:12];
						buff2r[45] <= pr2[29:12];
						buff2i[45] <= pi2[29:12];
						cr1 <= buff1r[46];
						ci1 <= buff1i[46];
						dr1 <= coefr[24];
						di1 <= coefi[24];
						cr2 <= buff1r[47];
						ci2 <= buff1i[47];
						dr2 <= coefr[28];
						di2 <= coefi[28];
						state <= 12;
						end
					12: begin
						buff2r[46] <= pr1[29:12];
						buff2i[46] <= pi1[29:12];
						buff2r[47] <= pr2[29:12];
						buff2i[47] <= pi2[29:12];
						cr1 <= buff1r[56];
						ci1 <= buff1i[56];
						dr1 <= coefr[0];
						di1 <= coefi[0];
						cr2 <= buff1r[57];
						ci2 <= buff1i[57];
						dr2 <= coefr[4];
						di2 <= coefi[4];
						state <= 13;
					end
					13: begin
						buff2r[56] <= pr1[29:12];
						buff2i[56] <= pi1[29:12];
						buff2r[57] <= pr2[29:12];
						buff2i[57] <= pi2[29:12];
						cr1 <= buff1r[58];
						ci1 <= buff1i[58];
						dr1 <= coefr[8];
						di1 <= coefi[8];
						cr2 <= buff1r[59];
						ci2 <= buff1i[59];
						dr2 <= coefr[12];
						di2 <= coefi[12];
						state <= 14;
					end
					14: begin
						buff2r[58] <= pr1[29:12];
						buff2i[58] <= pi1[29:12];
						buff2r[59] <= pr2[29:12];
						buff2i[59] <= pi2[29:12];
						cr1 <= buff1r[60];
						ci1 <= buff1i[60];
						dr1 <= coefr[16];
						di1 <= coefi[16];
						cr2 <= buff1r[61];
						ci2 <= buff1i[61];
						dr2 <= coefr[20];
						di2 <= coefi[20];
						state <= 15;
					end
					15: begin
						buff2r[60] <= pr1[29:12];
						buff2i[60] <= pi1[29:12];
						buff2r[61] <= pr2[29:12];
						buff2i[61] <= pi2[29:12];
						cr1 <= buff1r[62];
						ci1 <= buff1i[62];
						dr1 <= coefr[24];
						di1 <= coefi[24];
						cr2 <= buff1r[63];
						ci2 <= buff1i[63];
						dr2 <= coefr[28];
						di2 <= coefi[28];
						state <= 16;
					end
					16: begin
						buff2r[62] <= pr1[29:12];
						buff2i[62] <= pi1[29:12];
						buff2r[63] <= pr2[29:12];
						buff2i[63] <= pi2[29:12];
						state <= 0;
						stage <= 7;
					end
				endcase
			end
			7: begin //butterfly 3
				case (state)
					0: begin
						ar1 <= buff2r[0];
						ai1 <= buff2i[0];
						br1 <= buff2r[8];
						bi1 <= buff2i[8];
						ar2 <= buff2r[1];
						ai2 <= buff2i[1];
						br2 <= buff2r[9];
						bi2 <= buff2i[9];
						ar3 <= buff2r[2];
						ai3 <= buff2i[2];
						br3 <= buff2r[10];
						bi3 <= buff2i[10];
						ar4 <= buff2r[3];
						ai4 <= buff2i[3];
						br4 <= buff2r[11];
						bi4 <= buff2i[11];
						state <= 1;
					end
					1: begin
						buff1r[0] <= sr1;
						buff1i[0] <= si1;
						buff1r[8] <= tr1;
						buff1i[8] <= ti1;
						buff1r[1] <= sr2;
						buff1i[1] <= si2;
						buff1r[9] <= tr2;
						buff1i[9] <= ti2;
						buff1r[2] <= sr3;
						buff1i[2] <= si3;
						buff1r[10] <= tr3;
						buff1i[10] <= ti3;
						buff1r[3] <= sr4;
						buff1i[3] <= si4;
						buff1r[11] <= tr4;
						buff1i[11] <= ti4;
						ar1 <= buff2r[4];
						ai1 <= buff2i[4];
						br1 <= buff2r[12];
						bi1 <= buff2i[12];
						ar2 <= buff2r[5];
						ai2 <= buff2i[5];
						br2 <= buff2r[13];
						bi2 <= buff2i[13];
						ar3 <= buff2r[6];
						ai3 <= buff2i[6];
						br3 <= buff2r[14];
						bi3 <= buff2i[14];
						ar4 <= buff2r[7];
						ai4 <= buff2i[7];
						br4 <= buff2r[15];
						bi4 <= buff2i[15];
						state <= 2;
					end
					2: begin
						buff1r[4] <= sr1;
						buff1i[4] <= si1;
						buff1r[12] <= tr1;
						buff1i[12] <= ti1;
						buff1r[5] <= sr2;
						buff1i[5] <= si2;
						buff1r[13] <= tr2;
						buff1i[13] <= ti2;
						buff1r[6] <= sr3;
						buff1i[6] <= si3;
						buff1r[14] <= tr3;
						buff1i[14] <= ti3;
						buff1r[7] <= sr4;
						buff1i[7] <= si4;
						buff1r[15] <= tr4;
						buff1i[15] <= ti4;
						ar1 <= buff2r[16];
						ai1 <= buff2i[16];
						br1 <= buff2r[24];
						bi1 <= buff2i[24];
						ar2 <= buff2r[17];
						ai2 <= buff2i[17];
						br2 <= buff2r[25];
						bi2 <= buff2i[25];
						ar3 <= buff2r[18];
						ai3 <= buff2i[18];
						br3 <= buff2r[26];
						bi3 <= buff2i[26];
						ar4 <= buff2r[19];
						ai4 <= buff2i[19];
						br4 <= buff2r[27];
						bi4 <= buff2i[27];
						state <= 3;
					end
					3: begin
						buff1r[16] <= sr1;
						buff1i[16] <= si1;
						buff1r[24] <= tr1;
						buff1i[24] <= ti1;
						buff1r[17] <= sr2;
						buff1i[17] <= si2;
						buff1r[25] <= tr2;
						buff1i[25] <= ti2;
						buff1r[18] <= sr3;
						buff1i[18] <= si3;
						buff1r[26] <= tr3;
						buff1i[26] <= ti3;
						buff1r[19] <= sr4;
						buff1i[19] <= si4;
						buff1r[27] <= tr4;
						buff1i[27] <= ti4;
						ar1 <= buff2r[20];
						ai1 <= buff2i[20];
						br1 <= buff2r[28];
						bi1 <= buff2i[28];
						ar2 <= buff2r[21];
						ai2 <= buff2i[21];
						br2 <= buff2r[29];
						bi2 <= buff2i[29];
						ar3 <= buff2r[22];
						ai3 <= buff2i[22];
						br3 <= buff2r[30];
						bi3 <= buff2i[30];
						ar4 <= buff2r[23];
						ai4 <= buff2i[23];
						br4 <= buff2r[31];
						bi4 <= buff2i[31];
						state <= 4;
					end
					4: begin
						buff1r[20] <= sr1;
						buff1i[20] <= si1;
						buff1r[28] <= tr1;
						buff1i[28] <= ti1;
						buff1r[21] <= sr2;
						buff1i[21] <= si2;
						buff1r[29] <= tr2;
						buff1i[29] <= ti2;
						buff1r[22] <= sr3;
						buff1i[22] <= si3;
						buff1r[30] <= tr3;
						buff1i[30] <= ti3;
						buff1r[23] <= sr4;
						buff1i[23] <= si4;
						buff1r[31] <= tr4;
						buff1i[31] <= ti4;
						ar1 <= buff2r[32];
						ai1 <= buff2i[32];
						br1 <= buff2r[40];
						bi1 <= buff2i[40];
						ar2 <= buff2r[33];
						ai2 <= buff2i[33];
						br2 <= buff2r[41];
						bi2 <= buff2i[41];
						ar3 <= buff2r[34];
						ai3 <= buff2i[34];
						br3 <= buff2r[42];
						bi3 <= buff2i[42];
						ar4 <= buff2r[35];
						ai4 <= buff2i[35];
						br4 <= buff2r[43];
						bi4 <= buff2i[43];
						state <= 5;
					end
					5: begin
						buff1r[32] <= sr1;
						buff1i[32] <= si1;
						buff1r[40] <= tr1;
						buff1i[40] <= ti1;
						buff1r[33] <= sr2;
						buff1i[33] <= si2;
						buff1r[41] <= tr2;
						buff1i[41] <= ti2;
						buff1r[34] <= sr3;
						buff1i[34] <= si3;
						buff1r[42] <= tr3;
						buff1i[42] <= ti3;
						buff1r[35] <= sr4;
						buff1i[35] <= si4;
						buff1r[43] <= tr4;
						buff1i[43] <= ti4;
						ar1 <= buff2r[36];
						ai1 <= buff2i[36];
						br1 <= buff2r[44];
						bi1 <= buff2i[44];
						ar2 <= buff2r[37];
						ai2 <= buff2i[37];
						br2 <= buff2r[45];
						bi2 <= buff2i[45];
						ar3 <= buff2r[38];
						ai3 <= buff2i[38];
						br3 <= buff2r[46];
						bi3 <= buff2i[46];
						ar4 <= buff2r[39];
						ai4 <= buff2i[39];
						br4 <= buff2r[47];
						bi4 <= buff2i[47];
						state <= 6;
					end
					6: begin
						buff1r[36] <= sr1;
						buff1i[36] <= si1;
						buff1r[44] <= tr1;
						buff1i[44] <= ti1;
						buff1r[37] <= sr2;
						buff1i[37] <= si2;
						buff1r[45] <= tr2;
						buff1i[45] <= ti2;
						buff1r[38] <= sr3;
						buff1i[38] <= si3;
						buff1r[46] <= tr3;
						buff1i[46] <= ti3;
						buff1r[39] <= sr4;
						buff1i[39] <= si4;
						buff1r[47] <= tr4;
						buff1i[47] <= ti4;
						ar1 <= buff2r[48];
						ai1 <= buff2i[48];
						br1 <= buff2r[56];
						bi1 <= buff2i[56];
						ar2 <= buff2r[49];
						ai2 <= buff2i[49];
						br2 <= buff2r[57];
						bi2 <= buff2i[57];
						ar3 <= buff2r[50];
						ai3 <= buff2i[50];
						br3 <= buff2r[58];
						bi3 <= buff2i[58];
						ar4 <= buff2r[51];
						ai4 <= buff2i[51];
						br4 <= buff2r[59];
						bi4 <= buff2i[59];
						state <= 7;
					end
					7: begin
						buff1r[48] <= sr1;
						buff1i[48] <= si1;
						buff1r[56] <= tr1;
						buff1i[56] <= ti1;
						buff1r[49] <= sr2;
						buff1i[49] <= si2;
						buff1r[57] <= tr2;
						buff1i[57] <= ti2;
						buff1r[50] <= sr3;
						buff1i[50] <= si3;
						buff1r[58] <= tr3;
						buff1i[58] <= ti3;
						buff1r[51] <= sr4;
						buff1i[51] <= si4;
						buff1r[59] <= tr4;
						buff1i[59] <= ti4;
						ar1 <= buff2r[52];
						ai1 <= buff2i[52];
						br1 <= buff2r[60];
						bi1 <= buff2i[60];
						ar2 <= buff2r[53];
						ai2 <= buff2i[53];
						br2 <= buff2r[61];
						bi2 <= buff2i[61];
						ar3 <= buff2r[54];
						ai3 <= buff2i[54];
						br3 <= buff2r[62];
						bi3 <= buff2i[62];
						ar4 <= buff2r[55];
						ai4 <= buff2i[55];
						br4 <= buff2r[63];
						bi4 <= buff2i[63];
						state <= 8;
					end
					8: begin
						buff1r[52] <= sr1;
						buff1i[52] <= si1;
						buff1r[60] <= tr1;
						buff1i[60] <= ti1;
						buff1r[53] <= sr2;
						buff1i[53] <= si2;
						buff1r[61] <= tr2;
						buff1i[61] <= ti2;
						buff1r[54] <= sr3;
						buff1i[54] <= si3;
						buff1r[62] <= tr3;
						buff1i[62] <= ti3;
						buff1r[55] <= sr4;
						buff1i[55] <= si4;
						buff1r[63] <= tr4;
						buff1i[63] <= ti4;
						state <= 0;
						stage <= 8;
					end
				endcase
			end
			8: begin //multiply twiddle factors 4
				case (state)
					0: begin
						for (i = 0; i < 64; i = i + 1) begin
							buff2r[i] <= buff1r[i];
							buff2i[i] <= buff1i[i];
							end	
						cr1 <= buff1r[16];
						ci1 <= buff1i[16];
						dr1 <= coefr[0];
						di1 <= coefi[0];
						cr2 <= buff1r[17];
						ci2 <= buff1i[17];
						dr2 <= coefr[2];
						di2 <= coefi[2];
						state <= 1;
					end
					1: begin
						buff2r[16] <= pr1[29:12];
						buff2i[16] <= pi1[29:12];
						buff2r[17] <= pr2[29:12];
						buff2i[17] <= pi2[29:12];
						cr1 <= buff1r[18];
						ci1 <= buff1i[18];
						dr1 <= coefr[4];
						di1 <= coefi[4];
						cr2 <= buff1r[19];
						ci2 <= buff1i[19];
						dr2 <= coefr[6];
						di2 <= coefi[6];
						state <= 2;
						end
					2: begin
						buff2r[18] <= pr1[29:12];
						buff2i[18] <= pi1[29:12];
						buff2r[19] <= pr2[29:12];
						buff2i[19] <= pi2[29:12];
						cr1 <= buff1r[20];
						ci1 <= buff1i[20];
						dr1 <= coefr[8];
						di1 <= coefi[8];
						cr2 <= buff1r[21];
						ci2 <= buff1i[21];
						dr2 <= coefr[10];
						di2 <= coefi[10];
						state <= 3;
					end
					3: begin
						buff2r[20] <= pr1[29:12];
						buff2i[20] <= pi1[29:12];
						buff2r[21] <= pr2[29:12];
						buff2i[21] <= pi2[29:12];
						cr1 <= buff1r[22];
						ci1 <= buff1i[22];
						dr1 <= coefr[12];
						di1 <= coefi[12];
						cr2 <= buff1r[23];
						ci2 <= buff1i[23];
						dr2 <= coefr[14];
						di2 <= coefi[14];
						state <= 4;
					end
					4: begin
						buff2r[22] <= pr1[29:12];
						buff2i[22] <= pi1[29:12];
						buff2r[23] <= pr2[29:12];
						buff2i[23] <= pi2[29:12];
						cr1 <= buff1r[24];
						ci1 <= buff1i[24];
						dr1 <= coefr[16];
						di1 <= coefi[16];
						cr2 <= buff1r[25];
						ci2 <= buff1i[25];
						dr2 <= coefr[18];
						di2 <= coefi[18];
						state <= 5;
					end
					5: begin
						buff2r[24] <= pr1[29:12];
						buff2i[24] <= pi1[29:12];
						buff2r[25] <= pr2[29:12];
						buff2i[25] <= pi2[29:12];
						cr1 <= buff1r[26];
						ci1 <= buff1i[26];
						dr1 <= coefr[20];
						di1 <= coefi[20];
						cr2 <= buff1r[27];
						ci2 <= buff1i[27];
						dr2 <= coefr[22];
						di2 <= coefi[22];
						state <= 6;
					end
					6: begin
						buff2r[26] <= pr1[29:12];
						buff2i[26] <= pi1[29:12];
						buff2r[27] <= pr2[29:12];
						buff2i[27] <= pi2[29:12];
						cr1 <= buff1r[28];
						ci1 <= buff1i[28];
						dr1 <= coefr[24];
						di1 <= coefi[24];
						cr2 <= buff1r[29];
						ci2 <= buff1i[29];
						dr2 <= coefr[26];
						di2 <= coefi[26];
						state <= 7;
					end
					7: begin
						buff2r[28] <= pr1[29:12];
						buff2i[28] <= pi1[29:12];
						buff2r[29] <= pr2[29:12];
						buff2i[29] <= pi2[29:12];
						cr1 <= buff1r[30];
						ci1 <= buff1i[30];
						dr1 <= coefr[28];
						di1 <= coefi[28];
						cr2 <= buff1r[31];
						ci2 <= buff1i[31];
						dr2 <= coefr[30];
						di2 <= coefi[30];
						state <= 8;
					end
					8: begin
						buff2r[30] <= pr1[29:12];
						buff2i[30] <= pi1[29:12];
						buff2r[31] <= pr2[29:12];
						buff2i[31] <= pi2[29:12];
						cr1 <= buff1r[48];
						ci1 <= buff1i[48];
						dr1 <= coefr[0];
						di1 <= coefi[0];
						cr2 <= buff1r[49];
						ci2 <= buff1i[49];
						dr2 <= coefr[2];
						di2 <= coefi[2];
						state <= 9;
					end
					9: begin
						buff2r[48] <= pr1[29:12];
						buff2i[48] <= pi1[29:12];
						buff2r[49] <= pr2[29:12];
						buff2i[49] <= pi2[29:12];
						cr1 <= buff1r[50];
						ci1 <= buff1i[50];
						dr1 <= coefr[4];
						di1 <= coefi[4];
						cr2 <= buff1r[51];
						ci2 <= buff1i[51];
						dr2 <= coefr[6];
						di2 <= coefi[6];
						state <= 10;
					end
					10: begin
						buff2r[50] <= pr1[29:12];
						buff2i[50] <= pi1[29:12];
						buff2r[51] <= pr2[29:12];
						buff2i[51] <= pi2[29:12];
						cr1 <= buff1r[52];
						ci1 <= buff1i[52];
						dr1 <= coefr[8];
						di1 <= coefi[8];
						cr2 <= buff1r[53];
						ci2 <= buff1i[53];
						dr2 <= coefr[10];
						di2 <= coefi[10];
						state <= 11;
					end
					11: begin
						buff2r[52] <= pr1[29:12];
						buff2i[52] <= pi1[29:12];
						buff2r[53] <= pr2[29:12];
						buff2i[53] <= pi2[29:12];
						cr1 <= buff1r[54];
						ci1 <= buff1i[54];
						dr1 <= coefr[12];
						di1 <= coefi[12];
						cr2 <= buff1r[55];
						ci2 <= buff1i[55];
						dr2 <= coefr[14];
						di2 <= coefi[14];
						state <= 12;
						end
					12: begin
						buff2r[54] <= pr1[29:12];
						buff2i[54] <= pi1[29:12];
						buff2r[55] <= pr2[29:12];
						buff2i[55] <= pi2[29:12];
						cr1 <= buff1r[56];
						ci1 <= buff1i[56];
						dr1 <= coefr[16];
						di1 <= coefi[16];
						cr2 <= buff1r[57];
						ci2 <= buff1i[57];
						dr2 <= coefr[18];
						di2 <= coefi[18];
						state <= 13;
					end
					13: begin
						buff2r[56] <= pr1[29:12];
						buff2i[56] <= pi1[29:12];
						buff2r[57] <= pr2[29:12];
						buff2i[57] <= pi2[29:12];
						cr1 <= buff1r[58];
						ci1 <= buff1i[58];
						dr1 <= coefr[20];
						di1 <= coefi[20];
						cr2 <= buff1r[59];
						ci2 <= buff1i[59];
						dr2 <= coefr[22];
						di2 <= coefi[22];
						state <= 14;
					end
					14: begin
						buff2r[58] <= pr1[29:12];
						buff2i[58] <= pi1[29:12];
						buff2r[59] <= pr2[29:12];
						buff2i[59] <= pi2[29:12];
						cr1 <= buff1r[60];
						ci1 <= buff1i[60];
						dr1 <= coefr[24];
						di1 <= coefi[24];
						cr2 <= buff1r[61];
						ci2 <= buff1i[61];
						dr2 <= coefr[26];
						di2 <= coefi[26];
						state <= 15;
					end
					15: begin
						buff2r[60] <= pr1[29:12];
						buff2i[60] <= pi1[29:12];
						buff2r[61] <= pr2[29:12];
						buff2i[61] <= pi2[29:12];
						cr1 <= buff1r[62];
						ci1 <= buff1i[62];
						dr1 <= coefr[28];
						di1 <= coefi[28];
						cr2 <= buff1r[63];
						ci2 <= buff1i[63];
						dr2 <= coefr[30];
						di2 <= coefi[30];
						state <= 16;
					end
					16: begin
						buff2r[62] <= pr1[29:12];
						buff2i[62] <= pi1[29:12];
						buff2r[63] <= pr2[29:12];
						buff2i[63] <= pi2[29:12];
						state <= 0;
						stage <= 9;
					end
				endcase
			end
			9: begin // butterfly 4
				case (state)
					0: begin
						ar1 <= buff2r[0];
						ai1 <= buff2i[0];
						br1 <= buff2r[16];
						bi1 <= buff2i[16];
						ar2 <= buff2r[1];
						ai2 <= buff2i[1];
						br2 <= buff2r[17];
						bi2 <= buff2i[17];
						ar3 <= buff2r[2];
						ai3 <= buff2i[2];
						br3 <= buff2r[18];
						bi3 <= buff2i[18];
						ar4 <= buff2r[3];
						ai4 <= buff2i[3];
						br4 <= buff2r[19];
						bi4 <= buff2i[19];
						state <= 1;
					end
					1: begin
						buff1r[0] <= sr1;
						buff1i[0] <= si1;
						buff1r[16] <= tr1;
						buff1i[16] <= ti1;
						buff1r[1] <= sr2;
						buff1i[1] <= si2;
						buff1r[17] <= tr2;
						buff1i[17] <= ti2;
						buff1r[2] <= sr3;
						buff1i[2] <= si3;
						buff1r[18] <= tr3;
						buff1i[18] <= ti3;
						buff1r[3] <= sr4;
						buff1i[3] <= si4;
						buff1r[19] <= tr4;
						buff1i[19] <= ti4;
						ar1 <= buff2r[4];
						ai1 <= buff2i[4];
						br1 <= buff2r[20];
						bi1 <= buff2i[20];
						ar2 <= buff2r[5];
						ai2 <= buff2i[5];
						br2 <= buff2r[21];
						bi2 <= buff2i[21];
						ar3 <= buff2r[6];
						ai3 <= buff2i[6];
						br3 <= buff2r[22];
						bi3 <= buff2i[22];
						ar4 <= buff2r[7];
						ai4 <= buff2i[7];
						br4 <= buff2r[23];
						bi4 <= buff2i[23];
						state <= 2;
					end
					2: begin
						buff1r[4] <= sr1;
						buff1i[4] <= si1;
						buff1r[20] <= tr1;
						buff1i[20] <= ti1;
						buff1r[5] <= sr2;
						buff1i[5] <= si2;
						buff1r[21] <= tr2;
						buff1i[21] <= ti2;
						buff1r[6] <= sr3;
						buff1i[6] <= si3;
						buff1r[22] <= tr3;
						buff1i[22] <= ti3;
						buff1r[7] <= sr4;
						buff1i[7] <= si4;
						buff1r[23] <= tr4;
						buff1i[23] <= ti4;
						ar1 <= buff2r[8];
						ai1 <= buff2i[8];
						br1 <= buff2r[24];
						bi1 <= buff2i[24];
						ar2 <= buff2r[9];
						ai2 <= buff2i[9];
						br2 <= buff2r[25];
						bi2 <= buff2i[25];
						ar3 <= buff2r[10];
						ai3 <= buff2i[10];
						br3 <= buff2r[26];
						bi3 <= buff2i[26];
						ar4 <= buff2r[11];
						ai4 <= buff2i[11];
						br4 <= buff2r[27];
						bi4 <= buff2i[27];
						state <= 3;
					end
					3: begin
						buff1r[8] <= sr1;
						buff1i[8] <= si1;
						buff1r[24] <= tr1;
						buff1i[24] <= ti1;
						buff1r[9] <= sr2;
						buff1i[9] <= si2;
						buff1r[25] <= tr2;
						buff1i[25] <= ti2;
						buff1r[10] <= sr3;
						buff1i[10] <= si3;
						buff1r[26] <= tr3;
						buff1i[26] <= ti3;
						buff1r[11] <= sr4;
						buff1i[11] <= si4;
						buff1r[27] <= tr4;
						buff1i[27] <= ti4;
						ar1 <= buff2r[12];
						ai1 <= buff2i[12];
						br1 <= buff2r[28];
						bi1 <= buff2i[28];
						ar2 <= buff2r[13];
						ai2 <= buff2i[13];
						br2 <= buff2r[29];
						bi2 <= buff2i[29];
						ar3 <= buff2r[14];
						ai3 <= buff2i[14];
						br3 <= buff2r[30];
						bi3 <= buff2i[30];
						ar4 <= buff2r[15];
						ai4 <= buff2i[15];
						br4 <= buff2r[31];
						bi4 <= buff2i[31];
						state <= 4;
					end
					4: begin
						buff1r[12] <= sr1;
						buff1i[12] <= si1;
						buff1r[28] <= tr1;
						buff1i[28] <= ti1;
						buff1r[13] <= sr2;
						buff1i[13] <= si2;
						buff1r[29] <= tr2;
						buff1i[29] <= ti2;
						buff1r[14] <= sr3;
						buff1i[14] <= si3;
						buff1r[30] <= tr3;
						buff1i[30] <= ti3;
						buff1r[15] <= sr4;
						buff1i[15] <= si4;
						buff1r[31] <= tr4;
						buff1i[31] <= ti4;
						ar1 <= buff2r[32];
						ai1 <= buff2i[32];
						br1 <= buff2r[48];
						bi1 <= buff2i[48];
						ar2 <= buff2r[33];
						ai2 <= buff2i[33];
						br2 <= buff2r[49];
						bi2 <= buff2i[49];
						ar3 <= buff2r[34];
						ai3 <= buff2i[34];
						br3 <= buff2r[50];
						bi3 <= buff2i[50];
						ar4 <= buff2r[35];
						ai4 <= buff2i[35];
						br4 <= buff2r[51];
						bi4 <= buff2i[51];
						state <= 5;
					end
					5: begin
						buff1r[32] <= sr1;
						buff1i[32] <= si1;
						buff1r[48] <= tr1;
						buff1i[48] <= ti1;
						buff1r[33] <= sr2;
						buff1i[33] <= si2;
						buff1r[49] <= tr2;
						buff1i[49] <= ti2;
						buff1r[34] <= sr3;
						buff1i[34] <= si3;
						buff1r[50] <= tr3;
						buff1i[50] <= ti3;
						buff1r[35] <= sr4;
						buff1i[35] <= si4;
						buff1r[51] <= tr4;
						buff1i[51] <= ti4;
						ar1 <= buff2r[36];
						ai1 <= buff2i[36];
						br1 <= buff2r[52];
						bi1 <= buff2i[52];
						ar2 <= buff2r[37];
						ai2 <= buff2i[37];
						br2 <= buff2r[53];
						bi2 <= buff2i[53];
						ar3 <= buff2r[38];
						ai3 <= buff2i[38];
						br3 <= buff2r[54];
						bi3 <= buff2i[54];
						ar4 <= buff2r[39];
						ai4 <= buff2i[39];
						br4 <= buff2r[55];
						bi4 <= buff2i[55];
						state <= 6;
					end
					6: begin
						buff1r[36] <= sr1;
						buff1i[36] <= si1;
						buff1r[52] <= tr1;
						buff1i[52] <= ti1;
						buff1r[37] <= sr2;
						buff1i[37] <= si2;
						buff1r[53] <= tr2;
						buff1i[53] <= ti2;
						buff1r[38] <= sr3;
						buff1i[38] <= si3;
						buff1r[54] <= tr3;
						buff1i[54] <= ti3;
						buff1r[39] <= sr4;
						buff1i[39] <= si4;
						buff1r[55] <= tr4;
						buff1i[55] <= ti4;
						ar1 <= buff2r[40];
						ai1 <= buff2i[40];
						br1 <= buff2r[56];
						bi1 <= buff2i[56];
						ar2 <= buff2r[41];
						ai2 <= buff2i[41];
						br2 <= buff2r[57];
						bi2 <= buff2i[57];
						ar3 <= buff2r[42];
						ai3 <= buff2i[42];
						br3 <= buff2r[58];
						bi3 <= buff2i[58];
						ar4 <= buff2r[43];
						ai4 <= buff2i[43];
						br4 <= buff2r[59];
						bi4 <= buff2i[59];
						state <= 7;
					end
					7: begin
						buff1r[40] <= sr1;
						buff1i[40] <= si1;
						buff1r[56] <= tr1;
						buff1i[56] <= ti1;
						buff1r[41] <= sr2;
						buff1i[41] <= si2;
						buff1r[57] <= tr2;
						buff1i[57] <= ti2;
						buff1r[42] <= sr3;
						buff1i[42] <= si3;
						buff1r[58] <= tr3;
						buff1i[58] <= ti3;
						buff1r[43] <= sr4;
						buff1i[43] <= si4;
						buff1r[59] <= tr4;
						buff1i[59] <= ti4;
						ar1 <= buff2r[44];
						ai1 <= buff2i[44];
						br1 <= buff2r[60];
						bi1 <= buff2i[60];
						ar2 <= buff2r[45];
						ai2 <= buff2i[45];
						br2 <= buff2r[61];
						bi2 <= buff2i[61];
						ar3 <= buff2r[46];
						ai3 <= buff2i[46];
						br3 <= buff2r[62];
						bi3 <= buff2i[62];
						ar4 <= buff2r[47];
						ai4 <= buff2i[47];
						br4 <= buff2r[63];
						bi4 <= buff2i[63];
						state <= 8;
					end
					8: begin
						buff1r[44] <= sr1;
						buff1i[44] <= si1;
						buff1r[60] <= tr1;
						buff1i[60] <= ti1;
						buff1r[45] <= sr2;
						buff1i[45] <= si2;
						buff1r[61] <= tr2;
						buff1i[61] <= ti2;
						buff1r[46] <= sr3;
						buff1i[46] <= si3;
						buff1r[62] <= tr3;
						buff1i[62] <= ti3;
						buff1r[47] <= sr4;
						buff1i[47] <= si4;
						buff1r[63] <= tr4;
						buff1i[63] <= ti4;
						state <= 0;
						stage <= 10;
					end
				endcase
			end
			10: begin // multiply twiddle factors 5
				case (state)
					0: begin
						for (i = 0; i < 64; i = i + 1) begin
							buff2r[i] <= buff1r[i];
							buff2i[i] <= buff1i[i];
							end	
						cr1 <= buff1r[32];
						ci1 <= buff1i[32];
						dr1 <= coefr[0];
						di1 <= coefi[0];
						cr2 <= buff1r[33];
						ci2 <= buff1i[33];
						dr2 <= coefr[1];
						di2 <= coefi[1];
						state <= 1;
					end
					1: begin
						buff2r[32] <= pr1[29:12];
						buff2i[32] <= pi1[29:12];
						buff2r[33] <= pr2[29:12];
						buff2i[33] <= pi2[29:12];
						cr1 <= buff1r[34];
						ci1 <= buff1i[34];
						dr1 <= coefr[2];
						di1 <= coefi[2];
						cr2 <= buff1r[35];
						ci2 <= buff1i[35];
						dr2 <= coefr[3];
						di2 <= coefi[3];
						state <= 2;
						end
					2: begin
						buff2r[34] <= pr1[29:12];
						buff2i[34] <= pi1[29:12];
						buff2r[35] <= pr2[29:12];
						buff2i[35] <= pi2[29:12];
						cr1 <= buff1r[36];
						ci1 <= buff1i[36];
						dr1 <= coefr[4];
						di1 <= coefi[4];
						cr2 <= buff1r[37];
						ci2 <= buff1i[37];
						dr2 <= coefr[5];
						di2 <= coefi[5];
						state <= 3;
					end
					3: begin
						buff2r[36] <= pr1[29:12];
						buff2i[36] <= pi1[29:12];
						buff2r[37] <= pr2[29:12];
						buff2i[37] <= pi2[29:12];
						cr1 <= buff1r[38];
						ci1 <= buff1i[38];
						dr1 <= coefr[6];
						di1 <= coefi[6];
						cr2 <= buff1r[39];
						ci2 <= buff1i[39];
						dr2 <= coefr[7];
						di2 <= coefi[7];
						state <= 4;
					end
					4: begin
						buff2r[38] <= pr1[29:12];
						buff2i[38] <= pi1[29:12];
						buff2r[39] <= pr2[29:12];
						buff2i[39] <= pi2[29:12];
						cr1 <= buff1r[40];
						ci1 <= buff1i[40];
						dr1 <= coefr[8];
						di1 <= coefi[8];
						cr2 <= buff1r[41];
						ci2 <= buff1i[41];
						dr2 <= coefr[9];
						di2 <= coefi[9];
						state <= 5;
					end
					5: begin
						buff2r[40] <= pr1[29:12];
						buff2i[40] <= pi1[29:12];
						buff2r[41] <= pr2[29:12];
						buff2i[41] <= pi2[29:12];
						cr1 <= buff1r[42];
						ci1 <= buff1i[42];
						dr1 <= coefr[10];
						di1 <= coefi[10];
						cr2 <= buff1r[43];
						ci2 <= buff1i[43];
						dr2 <= coefr[11];
						di2 <= coefi[11];
						state <= 6;
					end
					6: begin
						buff2r[42] <= pr1[29:12];
						buff2i[42] <= pi1[29:12];
						buff2r[43] <= pr2[29:12];
						buff2i[43] <= pi2[29:12];
						cr1 <= buff1r[44];
						ci1 <= buff1i[44];
						dr1 <= coefr[12];
						di1 <= coefi[12];
						cr2 <= buff1r[45];
						ci2 <= buff1i[45];
						dr2 <= coefr[13];
						di2 <= coefi[13];
						state <= 7;
					end
					7: begin
						buff2r[44] <= pr1[29:12];
						buff2i[44] <= pi1[29:12];
						buff2r[45] <= pr2[29:12];
						buff2i[45] <= pi2[29:12];
						cr1 <= buff1r[46];
						ci1 <= buff1i[46];
						dr1 <= coefr[14];
						di1 <= coefi[14];
						cr2 <= buff1r[47];
						ci2 <= buff1i[47];
						dr2 <= coefr[15];
						di2 <= coefi[15];
						state <= 8;
					end
					8: begin
						buff2r[46] <= pr1[29:12];
						buff2i[46] <= pi1[29:12];
						buff2r[47] <= pr2[29:12];
						buff2i[47] <= pi2[29:12];
						cr1 <= buff1r[48];
						ci1 <= buff1i[48];
						dr1 <= coefr[16];
						di1 <= coefi[16];
						cr2 <= buff1r[49];
						ci2 <= buff1i[49];
						dr2 <= coefr[17];
						di2 <= coefi[17];
						state <= 9;
					end
					9: begin
						buff2r[48] <= pr1[29:12];
						buff2i[48] <= pi1[29:12];
						buff2r[49] <= pr2[29:12];
						buff2i[49] <= pi2[29:12];
						cr1 <= buff1r[50];
						ci1 <= buff1i[50];
						dr1 <= coefr[18];
						di1 <= coefi[18];
						cr2 <= buff1r[51];
						ci2 <= buff1i[51];
						dr2 <= coefr[19];
						di2 <= coefi[19];
						state <= 10;
					end
					10: begin
						buff2r[50] <= pr1[29:12];
						buff2i[50] <= pi1[29:12];
						buff2r[51] <= pr2[29:12];
						buff2i[51] <= pi2[29:12];
						cr1 <= buff1r[52];
						ci1 <= buff1i[52];
						dr1 <= coefr[20];
						di1 <= coefi[20];
						cr2 <= buff1r[53];
						ci2 <= buff1i[53];
						dr2 <= coefr[21];
						di2 <= coefi[21];
						state <= 11;
					end
					11: begin
						buff2r[52] <= pr1[29:12];
						buff2i[52] <= pi1[29:12];
						buff2r[53] <= pr2[29:12];
						buff2i[53] <= pi2[29:12];
						cr1 <= buff1r[54];
						ci1 <= buff1i[54];
						dr1 <= coefr[22];
						di1 <= coefi[22];
						cr2 <= buff1r[55];
						ci2 <= buff1i[55];
						dr2 <= coefr[23];
						di2 <= coefi[23];
						state <= 12;
						end
					12: begin
						buff2r[54] <= pr1[29:12];
						buff2i[54] <= pi1[29:12];
						buff2r[55] <= pr2[29:12];
						buff2i[55] <= pi2[29:12];
						cr1 <= buff1r[56];
						ci1 <= buff1i[56];
						dr1 <= coefr[24];
						di1 <= coefi[24];
						cr2 <= buff1r[57];
						ci2 <= buff1i[57];
						dr2 <= coefr[25];
						di2 <= coefi[25];
						state <= 13;
					end
					13: begin
						buff2r[56] <= pr1[29:12];
						buff2i[56] <= pi1[29:12];
						buff2r[57] <= pr2[29:12];
						buff2i[57] <= pi2[29:12];
						cr1 <= buff1r[58];
						ci1 <= buff1i[58];
						dr1 <= coefr[26];
						di1 <= coefi[26];
						cr2 <= buff1r[59];
						ci2 <= buff1i[59];
						dr2 <= coefr[27];
						di2 <= coefi[27];
						state <= 14;
					end
					14: begin
						buff2r[58] <= pr1[29:12];
						buff2i[58] <= pi1[29:12];
						buff2r[59] <= pr2[29:12];
						buff2i[59] <= pi2[29:12];
						cr1 <= buff1r[60];
						ci1 <= buff1i[60];
						dr1 <= coefr[28];
						di1 <= coefi[28];
						cr2 <= buff1r[61];
						ci2 <= buff1i[61];
						dr2 <= coefr[29];
						di2 <= coefi[29];
						state <= 15;
					end
					15: begin
						buff2r[60] <= pr1[29:12];
						buff2i[60] <= pi1[29:12];
						buff2r[61] <= pr2[29:12];
						buff2i[61] <= pi2[29:12];
						cr1 <= buff1r[62];
						ci1 <= buff1i[62];
						dr1 <= coefr[30];
						di1 <= coefi[30];
						cr2 <= buff1r[63];
						ci2 <= buff1i[63];
						dr2 <= coefr[31];
						di2 <= coefi[31];
						state <= 16;
					end
					16: begin
						buff2r[62] <= pr1[29:12];
						buff2i[62] <= pi1[29:12];
						buff2r[63] <= pr2[29:12];
						buff2i[63] <= pi2[29:12];
						state <= 0;
						stage <= 11;
					end
				endcase
			end
			11: begin // butterfly 5
				case (state)
					0: begin
						ar1 <= buff2r[0];
						ai1 <= buff2i[0];
						br1 <= buff2r[32];
						bi1 <= buff2i[32];
						ar2 <= buff2r[1];
						ai2 <= buff2i[1];
						br2 <= buff2r[33];
						bi2 <= buff2i[33];
						ar3 <= buff2r[2];
						ai3 <= buff2i[2];
						br3 <= buff2r[34];
						bi3 <= buff2i[34];
						ar4 <= buff2r[3];
						ai4 <= buff2i[3];
						br4 <= buff2r[35];
						bi4 <= buff2i[35];
						state <= 1;
					end
					1: begin
						Yreal[0 +: 18] <= sr1;
						Yimag[0 +: 18] <= si1;
						Yreal[32*18 +: 18] <= tr1;
						Yimag[32*18 +: 18] <= ti1;
						Yreal[1*18 +: 18] <= sr2;
						Yimag[1*18 +: 18] <= si2;
						Yreal[33*18 +: 18] <= tr2;
						Yimag[33*18 +: 18] <= ti2;
						Yreal[2*18 +: 18] <= sr3;
						Yimag[2*18 +: 18] <= si3;
						Yreal[34*18 +: 18] <= tr3;
						Yimag[34*18 +: 18] <= ti3;
						Yreal[3*18 +: 18] <= sr4;
						Yimag[3*18 +: 18] <= si4;
						Yreal[35*18 +: 18] <= tr4;
						Yimag[35*18 +: 18] <= ti4;
						ar1 <= buff2r[4];
						ai1 <= buff2i[4];
						br1 <= buff2r[36];
						bi1 <= buff2i[36];
						ar2 <= buff2r[5];
						ai2 <= buff2i[5];
						br2 <= buff2r[37];
						bi2 <= buff2i[37];
						ar3 <= buff2r[6];
						ai3 <= buff2i[6];
						br3 <= buff2r[38];
						bi3 <= buff2i[38];
						ar4 <= buff2r[7];
						ai4 <= buff2i[7];
						br4 <= buff2r[39];
						bi4 <= buff2i[39];
						state <= 2;
					end
					2: begin
						Yreal[4*18 +: 18] <= sr1;
						Yimag[4*18 +: 18] <= si1;
						Yreal[36*18 +: 18] <= tr1;
						Yimag[36*18 +: 18] <= ti1;
						Yreal[5*18 +: 18] <= sr2;
						Yimag[5*18 +: 18] <= si2;
						Yreal[37*18 +: 18] <= tr2;
						Yimag[37*18 +: 18] <= ti2;
						Yreal[6*18 +: 18] <= sr3;
						Yimag[6*18 +: 18] <= si3;
						Yreal[38*18 +: 18] <= tr3;
						Yimag[38*18 +: 18] <= ti3;
						Yreal[7*18 +: 18] <= sr4;
						Yimag[7*18 +: 18] <= si4;
						Yreal[39*18 +: 18] <= tr4;
						Yimag[39*18 +: 18] <= ti4;
						ar1 <= buff2r[8];
						ai1 <= buff2i[8];
						br1 <= buff2r[40];
						bi1 <= buff2i[40];
						ar2 <= buff2r[9];
						ai2 <= buff2i[9];
						br2 <= buff2r[41];
						bi2 <= buff2i[41];
						ar3 <= buff2r[10];
						ai3 <= buff2i[10];
						br3 <= buff2r[42];
						bi3 <= buff2i[42];
						ar4 <= buff2r[11];
						ai4 <= buff2i[11];
						br4 <= buff2r[43];
						bi4 <= buff2i[43];
						state <= 3;
					end
					3: begin
						Yreal[8*18 +: 18] <= sr1;
						Yimag[8*18 +: 18] <= si1;
						Yreal[40*18 +: 18] <= tr1;
						Yimag[40*18 +: 18] <= ti1;
						Yreal[9*18 +: 18] <= sr2;
						Yimag[9*18 +: 18] <= si2;
						Yreal[41*18 +: 18] <= tr2;
						Yimag[41*18 +: 18] <= ti2;
						Yreal[10*18 +: 18] <= sr3;
						Yimag[10*18 +: 18] <= si3;
						Yreal[42*18 +: 18] <= tr3;
						Yimag[42*18 +: 18] <= ti3;
						Yreal[11*18 +: 18] <= sr4;
						Yimag[11*18 +: 18] <= si4;
						Yreal[43*18 +: 18] <= tr4;
						Yimag[43*18 +: 18] <= ti4;
						ar1 <= buff2r[12];
						ai1 <= buff2i[12];
						br1 <= buff2r[44];
						bi1 <= buff2i[44];
						ar2 <= buff2r[13];
						ai2 <= buff2i[13];
						br2 <= buff2r[45];
						bi2 <= buff2i[45];
						ar3 <= buff2r[14];
						ai3 <= buff2i[14];
						br3 <= buff2r[46];
						bi3 <= buff2i[46];
						ar4 <= buff2r[15];
						ai4 <= buff2i[15];
						br4 <= buff2r[47];
						bi4 <= buff2i[47];
						state <= 4;
					end
					4: begin
						Yreal[12*18 +: 18] <= sr1;
						Yimag[12*18 +: 18] <= si1;
						Yreal[44*18 +: 18] <= tr1;
						Yimag[44*18 +: 18] <= ti1;
						Yreal[13*18 +: 18] <= sr2;
						Yimag[13*18 +: 18] <= si2;
						Yreal[45*18 +: 18] <= tr2;
						Yimag[45*18 +: 18] <= ti2;
						Yreal[14*18 +: 18] <= sr3;
						Yimag[14*18 +: 18] <= si3;
						Yreal[46*18 +: 18] <= tr3;
						Yimag[46*18 +: 18] <= ti3;
						Yreal[15*18 +: 18] <= sr4;
						Yimag[15*18 +: 18] <= si4;
						Yreal[47*18 +: 18] <= tr4;
						Yimag[47*18 +: 18] <= ti4;
						ar1 <= buff2r[16];
						ai1 <= buff2i[16];
						br1 <= buff2r[48];
						bi1 <= buff2i[48];
						ar2 <= buff2r[17];
						ai2 <= buff2i[17];
						br2 <= buff2r[49];
						bi2 <= buff2i[49];
						ar3 <= buff2r[18];
						ai3 <= buff2i[18];
						br3 <= buff2r[50];
						bi3 <= buff2i[50];
						ar4 <= buff2r[19];
						ai4 <= buff2i[19];
						br4 <= buff2r[51];
						bi4 <= buff2i[51];
						state <= 5;
					end
					5: begin
						Yreal[16*18 +: 18] <= sr1;
						Yimag[16*18 +: 18] <= si1;
						Yreal[48*18 +: 18] <= tr1;
						Yimag[48*18 +: 18] <= ti1;
						Yreal[17*18 +: 18] <= sr2;
						Yimag[17*18 +: 18] <= si2;
						Yreal[49*18 +: 18] <= tr2;
						Yimag[49*18 +: 18] <= ti2;
						Yreal[18*18 +: 18] <= sr3;
						Yimag[18*18 +: 18] <= si3;
						Yreal[50*18 +: 18] <= tr3;
						Yimag[50*18 +: 18] <= ti3;
						Yreal[19*18 +: 18] <= sr4;
						Yimag[19*18 +: 18] <= si4;
						Yreal[51*18 +: 18] <= tr4;
						Yimag[51*18 +: 18] <= ti4;
						ar1 <= buff2r[20];
						ai1 <= buff2i[20];
						br1 <= buff2r[52];
						bi1 <= buff2i[52];
						ar2 <= buff2r[21];
						ai2 <= buff2i[21];
						br2 <= buff2r[53];
						bi2 <= buff2i[53];
						ar3 <= buff2r[22];
						ai3 <= buff2i[22];
						br3 <= buff2r[54];
						bi3 <= buff2i[54];
						ar4 <= buff2r[23];
						ai4 <= buff2i[23];
						br4 <= buff2r[55];
						bi4 <= buff2i[55];
						state <= 6;
					end
					6: begin
						Yreal[20*18 +: 18] <= sr1;
						Yimag[20*18 +: 18] <= si1;
						Yreal[52*18 +: 18] <= tr1;
						Yimag[52*18 +: 18] <= ti1;
						Yreal[21*18 +: 18] <= sr2;
						Yimag[21*18 +: 18] <= si2;
						Yreal[53*18 +: 18] <= tr2;
						Yimag[53*18 +: 18] <= ti2;
						Yreal[22*18 +: 18] <= sr3;
						Yimag[22*18 +: 18] <= si3;
						Yreal[54*18 +: 18] <= tr3;
						Yimag[54*18 +: 18] <= ti3;
						Yreal[23*18 +: 18] <= sr4;
						Yimag[23*18 +: 18] <= si4;
						Yreal[55*18 +: 18] <= tr4;
						Yimag[55*18 +: 18] <= ti4;
						ar1 <= buff2r[24];
						ai1 <= buff2i[24];
						br1 <= buff2r[56];
						bi1 <= buff2i[56];
						ar2 <= buff2r[25];
						ai2 <= buff2i[25];
						br2 <= buff2r[57];
						bi2 <= buff2i[57];
						ar3 <= buff2r[26];
						ai3 <= buff2i[26];
						br3 <= buff2r[58];
						bi3 <= buff2i[58];
						ar4 <= buff2r[27];
						ai4 <= buff2i[27];
						br4 <= buff2r[59];
						bi4 <= buff2i[59];
						state <= 7;
					end
					7: begin
						Yreal[24*18 +: 18] <= sr1;
						Yimag[24*18 +: 18] <= si1;
						Yreal[56*18 +: 18] <= tr1;
						Yimag[56*18 +: 18] <= ti1;
						Yreal[25*18 +: 18] <= sr2;
						Yimag[25*18 +: 18] <= si2;
						Yreal[57*18 +: 18] <= tr2;
						Yimag[57*18 +: 18] <= ti2;
						Yreal[26*18 +: 18] <= sr3;
						Yimag[26*18 +: 18] <= si3;
						Yreal[58*18 +: 18] <= tr3;
						Yimag[58*18 +: 18] <= ti3;
						Yreal[27*18 +: 18] <= sr4;
						Yimag[27*18 +: 18] <= si4;
						Yreal[59*18 +: 18] <= tr4;
						Yimag[59*18 +: 18] <= ti4;
						ar1 <= buff2r[28];
						ai1 <= buff2i[28];
						br1 <= buff2r[60];
						bi1 <= buff2i[60];
						ar2 <= buff2r[29];
						ai2 <= buff2i[29];
						br2 <= buff2r[61];
						bi2 <= buff2i[61];
						ar3 <= buff2r[30];
						ai3 <= buff2i[30];
						br3 <= buff2r[62];
						bi3 <= buff2i[62];
						ar4 <= buff2r[31];
						ai4 <= buff2i[31];
						br4 <= buff2r[63];
						bi4 <= buff2i[63];
						state <= 8;
					end
					8: begin
						Yreal[28*18 +: 18] <= sr1;
						Yimag[28*18 +: 18] <= si1;
						Yreal[60*18 +: 18] <= tr1;
						Yimag[60*18 +: 18] <= ti1;
						Yreal[29*18 +: 18] <= sr2;
						Yimag[29*18 +: 18] <= si2;
						Yreal[61*18 +: 18] <= tr2;
						Yimag[61*18 +: 18] <= ti2;
						Yreal[30*18 +: 18] <= sr3;
						Yimag[30*18 +: 18] <= si3;
						Yreal[62*18 +: 18] <= tr3;
						Yimag[62*18 +: 18] <= ti3;
						Yreal[31*18 +: 18] <= sr4;
						Yimag[31*18 +: 18] <= si4;
						Yreal[63*18 +: 18] <= tr4;
						Yimag[63*18 +: 18] <= ti4;
						state <= 0;
						stage <= 0;
						dataReady <= 1;
					end
				endcase
			end
			
		endcase
	end
	
end

endmodule	

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
	 
always @(posedge clk or negedge clk)
begin
	s1r <= ar + br;
	s1i <= ai + bi;
	s2r <= ar - br;
	s2i <= ai - bi;
end


endmodule

