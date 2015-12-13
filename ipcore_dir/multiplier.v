////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.40xd
//  \   \         Application: netgen
//  /   /         Filename: multiplier.v
// /___/   /\     Timestamp: Tue Nov 03 18:37:04 2015
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog C:/Users/tnt1/Downloads/Project2/ipcore_dir/tmp/_cg/multiplier.ngc C:/Users/tnt1/Downloads/Project2/ipcore_dir/tmp/_cg/multiplier.v 
// Device	: 3s500efg320-5
// Input file	: C:/Users/tnt1/Downloads/Project2/ipcore_dir/tmp/_cg/multiplier.ngc
// Output file	: C:/Users/tnt1/Downloads/Project2/ipcore_dir/tmp/_cg/multiplier.v
// # of Modules	: 1
// Design Name	: multiplier
// Xilinx        : C:\Xilinx\14.3\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module multiplier (
  clk, operation_nd, operation_rfd, rdy, result, a, b
)/* synthesis syn_black_box syn_noprune=1 */;
  input clk;
  input operation_nd;
  output operation_rfd;
  output rdy;
  output [31 : 0] result;
  input [31 : 0] a;
  input [31 : 0] b;
  
  // synthesis translate_off
  
  wire sig00000001;
  wire sig00000002;
  wire sig00000003;
  wire sig00000004;
  wire sig00000005;
  wire sig00000006;
  wire sig00000007;
  wire sig00000008;
  wire \U0/op_inst/FLT_PT_OP/HND_SHK/RDY ;
  wire sig00000009;
  wire sig0000000a;
  wire sig0000000b;
  wire sig0000000c;
  wire sig0000000d;
  wire sig0000000e;
  wire sig0000000f;
  wire sig00000010;
  wire sig00000011;
  wire sig00000012;
  wire sig00000013;
  wire sig00000014;
  wire sig00000015;
  wire sig00000016;
  wire sig00000017;
  wire sig00000018;
  wire sig00000019;
  wire sig0000001a;
  wire sig0000001b;
  wire sig0000001c;
  wire sig0000001d;
  wire sig0000001e;
  wire sig0000001f;
  wire sig00000020;
  wire sig00000021;
  wire sig00000022;
  wire sig00000023;
  wire sig00000024;
  wire sig00000025;
  wire sig00000026;
  wire sig00000027;
  wire sig00000028;
  wire sig00000029;
  wire sig0000002a;
  wire sig0000002b;
  wire sig0000002c;
  wire sig0000002d;
  wire sig0000002e;
  wire sig0000002f;
  wire sig00000030;
  wire sig00000031;
  wire sig00000032;
  wire sig00000033;
  wire sig00000034;
  wire sig00000035;
  wire sig00000036;
  wire sig00000037;
  wire sig00000038;
  wire sig00000039;
  wire sig0000003a;
  wire sig0000003b;
  wire sig0000003c;
  wire sig0000003d;
  wire sig0000003e;
  wire sig0000003f;
  wire sig00000040;
  wire sig00000041;
  wire sig00000042;
  wire sig00000043;
  wire sig00000044;
  wire sig00000045;
  wire sig00000046;
  wire sig00000047;
  wire sig00000048;
  wire sig00000049;
  wire sig0000004a;
  wire sig0000004b;
  wire sig0000004c;
  wire sig0000004d;
  wire sig0000004e;
  wire sig0000004f;
  wire sig00000050;
  wire sig00000051;
  wire sig00000052;
  wire sig00000053;
  wire sig00000054;
  wire sig00000055;
  wire sig00000056;
  wire sig00000057;
  wire sig00000058;
  wire sig00000059;
  wire sig0000005a;
  wire sig0000005b;
  wire sig0000005c;
  wire sig0000005d;
  wire sig0000005e;
  wire sig0000005f;
  wire sig00000060;
  wire sig00000061;
  wire sig00000062;
  wire sig00000063;
  wire sig00000064;
  wire sig00000065;
  wire sig00000066;
  wire sig00000067;
  wire sig00000068;
  wire sig00000069;
  wire sig0000006a;
  wire sig0000006b;
  wire sig0000006c;
  wire sig0000006d;
  wire sig0000006e;
  wire sig0000006f;
  wire sig00000070;
  wire sig00000071;
  wire sig00000072;
  wire sig00000073;
  wire sig00000074;
  wire sig00000075;
  wire sig00000076;
  wire sig00000077;
  wire sig00000078;
  wire sig00000079;
  wire sig0000007a;
  wire sig0000007b;
  wire sig0000007c;
  wire sig0000007d;
  wire sig0000007e;
  wire sig0000007f;
  wire sig00000080;
  wire sig00000081;
  wire sig00000082;
  wire sig00000083;
  wire sig00000084;
  wire sig00000085;
  wire sig00000086;
  wire sig00000087;
  wire sig00000088;
  wire sig00000089;
  wire sig0000008a;
  wire sig0000008b;
  wire sig0000008c;
  wire sig0000008d;
  wire sig0000008e;
  wire sig0000008f;
  wire sig00000090;
  wire sig00000091;
  wire sig00000092;
  wire sig00000093;
  wire sig00000094;
  wire sig00000095;
  wire sig00000096;
  wire sig00000097;
  wire sig00000098;
  wire sig00000099;
  wire sig0000009a;
  wire sig0000009b;
  wire sig0000009c;
  wire sig0000009d;
  wire sig0000009e;
  wire sig0000009f;
  wire sig000000a0;
  wire sig000000a1;
  wire sig000000a2;
  wire sig000000a3;
  wire sig000000a4;
  wire sig000000a5;
  wire sig000000a6;
  wire sig000000a7;
  wire sig000000a8;
  wire sig000000a9;
  wire sig000000aa;
  wire sig000000ab;
  wire sig000000ac;
  wire sig000000ad;
  wire sig000000ae;
  wire sig000000af;
  wire sig000000b0;
  wire sig000000b1;
  wire sig000000b2;
  wire sig000000b3;
  wire sig000000b4;
  wire sig000000b5;
  wire sig000000b6;
  wire sig000000b7;
  wire sig000000b8;
  wire sig000000b9;
  wire sig000000ba;
  wire sig000000bb;
  wire sig000000bc;
  wire sig000000bd;
  wire sig000000be;
  wire sig000000bf;
  wire sig000000c0;
  wire sig000000c1;
  wire sig000000c2;
  wire sig000000c3;
  wire sig000000c4;
  wire sig000000c5;
  wire sig000000c6;
  wire sig000000c7;
  wire sig000000c8;
  wire sig000000c9;
  wire sig000000ca;
  wire sig000000cb;
  wire sig000000cc;
  wire sig000000cd;
  wire sig000000ce;
  wire sig000000cf;
  wire sig000000d0;
  wire sig000000d1;
  wire sig000000d2;
  wire sig000000d3;
  wire sig000000d4;
  wire sig000000d5;
  wire sig000000d6;
  wire sig000000d7;
  wire sig000000d8;
  wire sig000000d9;
  wire sig000000da;
  wire sig000000db;
  wire sig000000dc;
  wire sig000000dd;
  wire sig000000de;
  wire sig000000df;
  wire sig000000e0;
  wire sig000000e1;
  wire sig000000e2;
  wire sig000000e3;
  wire sig000000e4;
  wire sig000000e5;
  wire sig000000e6;
  wire sig000000e7;
  wire sig000000e8;
  wire sig000000e9;
  wire sig000000ea;
  wire sig000000eb;
  wire sig000000ec;
  wire sig000000ed;
  wire sig000000ee;
  wire sig000000ef;
  wire sig000000f0;
  wire sig000000f1;
  wire sig000000f2;
  wire sig000000f3;
  wire sig000000f4;
  wire sig000000f5;
  wire sig000000f6;
  wire sig000000f7;
  wire sig000000f8;
  wire sig000000f9;
  wire sig000000fa;
  wire sig000000fb;
  wire sig000000fc;
  wire sig000000fd;
  wire sig000000fe;
  wire sig000000ff;
  wire sig00000100;
  wire sig00000101;
  wire sig00000102;
  wire sig00000103;
  wire sig00000104;
  wire sig00000105;
  wire sig00000106;
  wire sig00000107;
  wire sig00000108;
  wire sig00000109;
  wire sig0000010a;
  wire sig0000010b;
  wire sig0000010c;
  wire sig0000010d;
  wire sig0000010e;
  wire sig0000010f;
  wire sig00000110;
  wire sig00000111;
  wire sig00000112;
  wire sig00000113;
  wire sig00000114;
  wire sig00000115;
  wire sig00000116;
  wire sig00000117;
  wire sig00000118;
  wire sig00000119;
  wire sig0000011a;
  wire sig0000011b;
  wire sig0000011c;
  wire sig0000011d;
  wire sig0000011e;
  wire sig0000011f;
  wire sig00000120;
  wire sig00000121;
  wire sig00000122;
  wire sig00000123;
  wire sig00000124;
  wire sig00000125;
  wire sig00000126;
  wire sig00000127;
  wire sig00000128;
  wire sig00000129;
  wire sig0000012a;
  wire sig0000012b;
  wire sig0000012c;
  wire sig0000012d;
  wire sig0000012e;
  wire sig0000012f;
  wire sig00000130;
  wire sig00000131;
  wire sig00000132;
  wire sig00000133;
  wire sig00000134;
  wire sig00000135;
  wire sig00000136;
  wire sig00000137;
  wire sig00000138;
  wire sig00000139;
  wire sig0000013a;
  wire sig0000013b;
  wire sig0000013c;
  wire sig0000013d;
  wire sig0000013e;
  wire sig0000013f;
  wire sig00000140;
  wire sig00000141;
  wire sig00000142;
  wire sig00000143;
  wire sig00000144;
  wire sig00000145;
  wire sig00000146;
  wire sig00000147;
  wire sig00000148;
  wire sig00000149;
  wire sig0000014a;
  wire sig0000014b;
  wire sig0000014c;
  wire sig0000014d;
  wire sig0000014e;
  wire sig0000014f;
  wire sig00000150;
  wire sig00000151;
  wire sig00000152;
  wire sig00000153;
  wire sig00000154;
  wire sig00000155;
  wire sig00000156;
  wire sig00000157;
  wire sig00000158;
  wire sig00000159;
  wire sig0000015a;
  wire sig0000015b;
  wire sig0000015c;
  wire sig0000015d;
  wire sig0000015e;
  wire sig0000015f;
  wire sig00000160;
  wire sig00000161;
  wire sig00000162;
  wire sig00000163;
  wire sig00000164;
  wire sig00000165;
  wire sig00000166;
  wire sig00000167;
  wire sig00000168;
  wire sig00000169;
  wire sig0000016a;
  wire sig0000016b;
  wire sig0000016c;
  wire sig0000016d;
  wire sig0000016e;
  wire sig0000016f;
  wire sig00000170;
  wire sig00000171;
  wire sig00000172;
  wire sig00000173;
  wire sig00000174;
  wire sig00000175;
  wire sig00000176;
  wire sig00000177;
  wire sig00000178;
  wire sig00000179;
  wire sig0000017a;
  wire sig0000017b;
  wire sig0000017c;
  wire sig0000017d;
  wire sig0000017e;
  wire sig0000017f;
  wire sig00000180;
  wire sig00000181;
  wire sig00000182;
  wire sig00000183;
  wire sig00000184;
  wire sig00000185;
  wire sig00000186;
  wire sig00000187;
  wire sig00000188;
  wire sig00000189;
  wire sig0000018a;
  wire sig0000018b;
  wire sig0000018c;
  wire sig0000018d;
  wire sig0000018e;
  wire sig0000018f;
  wire sig00000190;
  wire sig00000191;
  wire sig00000192;
  wire sig00000193;
  wire sig00000194;
  wire sig00000195;
  wire sig00000196;
  wire sig00000197;
  wire sig00000198;
  wire sig00000199;
  wire sig0000019a;
  wire sig0000019b;
  wire sig0000019c;
  wire sig0000019d;
  wire sig0000019e;
  wire sig0000019f;
  wire sig000001a0;
  wire sig000001a1;
  wire sig000001a2;
  wire sig000001a3;
  wire sig000001a4;
  wire sig000001a5;
  wire sig000001a6;
  wire sig000001a7;
  wire sig000001a8;
  wire sig000001a9;
  wire sig000001aa;
  wire sig000001ab;
  wire sig000001ac;
  wire sig000001ad;
  wire sig000001ae;
  wire sig000001af;
  wire sig000001b0;
  wire sig000001b1;
  wire sig000001b2;
  wire sig000001b3;
  wire sig000001b4;
  wire sig000001b5;
  wire sig000001b6;
  wire sig000001b7;
  wire sig000001b8;
  wire sig000001b9;
  wire sig000001ba;
  wire sig000001bb;
  wire sig000001bc;
  wire sig000001bd;
  wire sig000001be;
  wire sig000001bf;
  wire sig000001c0;
  wire sig000001c1;
  wire sig000001c2;
  wire sig000001c3;
  wire sig000001c4;
  wire sig000001c5;
  wire sig000001c6;
  wire sig000001c7;
  wire sig000001c8;
  wire sig000001c9;
  wire sig000001ca;
  wire sig000001cb;
  wire sig000001cc;
  wire sig000001cd;
  wire sig000001ce;
  wire sig000001cf;
  wire sig000001d0;
  wire sig000001d1;
  wire sig000001d2;
  wire sig000001d3;
  wire sig000001d4;
  wire sig000001d5;
  wire sig000001d6;
  wire sig000001d7;
  wire sig000001d8;
  wire sig000001d9;
  wire sig000001da;
  wire sig000001db;
  wire sig000001dc;
  wire sig000001dd;
  wire sig000001de;
  wire sig000001df;
  wire sig000001e0;
  wire sig000001e1;
  wire sig000001e2;
  wire sig000001e3;
  wire sig000001e4;
  wire sig000001e5;
  wire sig000001e6;
  wire sig000001e7;
  wire sig000001e8;
  wire sig000001e9;
  wire sig000001ea;
  wire sig000001eb;
  wire sig000001ec;
  wire sig000001ed;
  wire sig000001ee;
  wire sig000001ef;
  wire sig000001f0;
  wire sig000001f1;
  wire sig000001f2;
  wire sig000001f3;
  wire sig000001f4;
  wire sig000001f5;
  wire sig000001f6;
  wire sig000001f7;
  wire sig000001f8;
  wire sig000001f9;
  wire sig000001fa;
  wire sig000001fb;
  wire sig000001fc;
  wire sig000001fd;
  wire sig000001fe;
  wire sig000001ff;
  wire sig00000200;
  wire sig00000201;
  wire sig00000202;
  wire sig00000203;
  wire sig00000204;
  wire sig00000205;
  wire sig00000206;
  wire sig00000207;
  wire sig00000208;
  wire sig00000209;
  wire sig0000020a;
  wire sig0000020b;
  wire sig0000020c;
  wire sig0000020d;
  wire sig0000020e;
  wire sig0000020f;
  wire sig00000210;
  wire sig00000211;
  wire sig00000212;
  wire sig00000213;
  wire sig00000214;
  wire sig00000215;
  wire sig00000216;
  wire sig00000217;
  wire sig00000218;
  wire sig00000219;
  wire sig0000021a;
  wire sig0000021b;
  wire sig0000021c;
  wire sig0000021d;
  wire sig0000021e;
  wire sig0000021f;
  wire sig00000220;
  wire sig00000221;
  wire sig00000222;
  wire sig00000223;
  wire sig00000224;
  wire sig00000225;
  wire sig00000226;
  wire sig00000227;
  wire sig00000228;
  wire sig00000229;
  wire sig0000022a;
  wire sig0000022b;
  wire sig0000022c;
  wire sig0000022d;
  wire sig0000022e;
  wire sig0000022f;
  wire sig00000230;
  wire sig00000231;
  wire sig00000232;
  wire sig00000233;
  wire sig00000234;
  wire sig00000235;
  wire sig00000236;
  wire sig00000237;
  wire sig00000238;
  wire sig00000239;
  wire sig0000023a;
  wire sig0000023b;
  wire sig0000023c;
  wire sig0000023d;
  wire sig0000023e;
  wire sig0000023f;
  wire sig00000240;
  wire sig00000241;
  wire sig00000242;
  wire sig00000243;
  wire sig00000244;
  wire sig00000245;
  wire sig00000246;
  wire sig00000247;
  wire sig00000248;
  wire sig00000249;
  wire sig0000024a;
  wire sig0000024b;
  wire sig0000024c;
  wire sig0000024d;
  wire sig0000024e;
  wire sig0000024f;
  wire sig00000250;
  wire sig00000251;
  wire sig00000252;
  wire sig00000253;
  wire sig00000254;
  wire sig00000255;
  wire sig00000256;
  wire sig00000257;
  wire sig00000258;
  wire sig00000259;
  wire sig0000025a;
  wire sig0000025b;
  wire sig0000025c;
  wire sig0000025d;
  wire sig0000025e;
  wire \U0/op_inst/FLT_PT_OP/MULT.OP/OP/sign_op ;
  wire sig0000025f;
  wire sig00000260;
  wire sig00000261;
  wire sig00000262;
  wire sig00000263;
  wire sig00000264;
  wire sig00000265;
  wire sig00000266;
  wire sig00000267;
  wire sig00000268;
  wire sig00000269;
  wire sig0000026a;
  wire sig0000026b;
  wire sig0000026c;
  wire sig0000026d;
  wire sig0000026e;
  wire sig0000026f;
  wire sig00000270;
  wire sig00000271;
  wire sig00000272;
  wire sig00000273;
  wire sig00000274;
  wire sig00000275;
  wire sig00000276;
  wire sig00000277;
  wire sig00000278;
  wire sig00000279;
  wire sig0000027a;
  wire sig0000027b;
  wire sig0000027c;
  wire sig0000027d;
  wire sig0000027e;
  wire sig0000027f;
  wire sig00000280;
  wire sig00000281;
  wire sig00000282;
  wire sig00000283;
  wire sig00000284;
  wire sig00000285;
  wire sig00000286;
  wire sig00000287;
  wire sig00000288;
  wire sig00000289;
  wire sig0000028a;
  wire sig0000028b;
  wire sig0000028c;
  wire sig0000028d;
  wire sig0000028e;
  wire sig0000028f;
  wire sig00000290;
  wire sig00000291;
  wire sig00000292;
  wire sig00000293;
  wire sig00000294;
  wire sig00000295;
  wire sig00000296;
  wire sig00000297;
  wire sig00000298;
  wire sig00000299;
  wire sig0000029a;
  wire sig0000029b;
  wire sig0000029c;
  wire sig0000029d;
  wire sig0000029e;
  wire sig0000029f;
  wire sig000002a0;
  wire sig000002a1;
  wire sig000002a2;
  wire sig000002a3;
  wire sig000002a4;
  wire sig000002a5;
  wire sig000002a6;
  wire sig000002a7;
  wire sig000002a8;
  wire sig000002a9;
  wire sig000002aa;
  wire sig000002ab;
  wire sig000002ac;
  wire sig000002ad;
  wire sig000002ae;
  wire sig000002af;
  wire sig000002b0;
  wire sig000002b1;
  wire sig000002b2;
  wire sig000002b3;
  wire sig000002b4;
  wire sig000002b5;
  wire sig000002b6;
  wire sig000002b7;
  wire sig000002b8;
  wire sig000002b9;
  wire sig000002ba;
  wire sig000002bb;
  wire sig000002bc;
  wire sig000002bd;
  wire sig000002be;
  wire sig000002bf;
  wire sig000002c0;
  wire sig000002c1;
  wire sig000002c2;
  wire sig000002c3;
  wire sig000002c4;
  wire sig000002c5;
  wire sig000002c6;
  wire sig000002c7;
  wire sig000002c8;
  wire sig000002c9;
  wire sig000002ca;
  wire sig000002cb;
  wire sig000002cc;
  wire sig000002cd;
  wire sig000002ce;
  wire sig000002cf;
  wire sig000002d0;
  wire sig000002d1;
  wire sig000002d2;
  wire sig000002d3;
  wire sig000002d4;
  wire sig000002d5;
  wire sig000002d6;
  wire sig000002d7;
  wire sig000002d8;
  wire sig000002d9;
  wire sig000002da;
  wire sig000002db;
  wire sig000002dc;
  wire sig000002dd;
  wire sig000002de;
  wire sig000002df;
  wire sig000002e0;
  wire sig000002e1;
  wire sig000002e2;
  wire sig000002e3;
  wire sig000002e4;
  wire sig000002e5;
  wire sig000002e6;
  wire sig000002e7;
  wire sig000002e8;
  wire sig000002e9;
  wire sig000002ea;
  wire sig000002eb;
  wire sig000002ec;
  wire sig000002ed;
  wire sig000002ee;
  wire sig000002ef;
  wire sig000002f0;
  wire sig000002f1;
  wire sig000002f2;
  wire sig000002f3;
  wire sig000002f4;
  wire sig000002f5;
  wire sig000002f6;
  wire sig000002f7;
  wire sig000002f8;
  wire sig000002f9;
  wire sig000002fa;
  wire sig000002fb;
  wire sig000002fc;
  wire sig000002fd;
  wire sig000002fe;
  wire NlwRenamedSig_OI_operation_rfd;
  wire NLW_blk00000092_O_UNCONNECTED;
  wire NLW_blk000001e6_Q_UNCONNECTED;
  wire NLW_blk000001e7_Q_UNCONNECTED;
  wire NLW_blk000001e8_Q_UNCONNECTED;
  wire NLW_blk000001e9_Q_UNCONNECTED;
  wire NLW_blk000001ea_Q_UNCONNECTED;
  wire NLW_blk000001eb_Q_UNCONNECTED;
  wire NLW_blk000001ec_Q_UNCONNECTED;
  wire NLW_blk000001ed_Q_UNCONNECTED;
  wire NLW_blk000001ee_Q_UNCONNECTED;
  wire NLW_blk000001ef_Q_UNCONNECTED;
  wire NLW_blk000001f0_Q_UNCONNECTED;
  wire NLW_blk000001f1_Q_UNCONNECTED;
  wire NLW_blk000001f2_Q_UNCONNECTED;
  wire NLW_blk000001f3_Q_UNCONNECTED;
  wire NLW_blk000001f4_Q_UNCONNECTED;
  wire NLW_blk000001f5_Q_UNCONNECTED;
  wire NLW_blk000001f6_Q_UNCONNECTED;
  wire NLW_blk000001f7_Q_UNCONNECTED;
  wire NLW_blk000001f8_Q_UNCONNECTED;
  wire NLW_blk000001f9_Q_UNCONNECTED;
  wire NLW_blk000001fa_Q_UNCONNECTED;
  wire NLW_blk000001fb_Q_UNCONNECTED;
  wire \NLW_blk00000266_BCIN<17>_UNCONNECTED ;
  wire \NLW_blk00000266_BCIN<16>_UNCONNECTED ;
  wire \NLW_blk00000266_BCIN<15>_UNCONNECTED ;
  wire \NLW_blk00000266_BCIN<14>_UNCONNECTED ;
  wire \NLW_blk00000266_BCIN<13>_UNCONNECTED ;
  wire \NLW_blk00000266_BCIN<12>_UNCONNECTED ;
  wire \NLW_blk00000266_BCIN<11>_UNCONNECTED ;
  wire \NLW_blk00000266_BCIN<10>_UNCONNECTED ;
  wire \NLW_blk00000266_BCIN<9>_UNCONNECTED ;
  wire \NLW_blk00000266_BCIN<8>_UNCONNECTED ;
  wire \NLW_blk00000266_BCIN<7>_UNCONNECTED ;
  wire \NLW_blk00000266_BCIN<6>_UNCONNECTED ;
  wire \NLW_blk00000266_BCIN<5>_UNCONNECTED ;
  wire \NLW_blk00000266_BCIN<4>_UNCONNECTED ;
  wire \NLW_blk00000266_BCIN<3>_UNCONNECTED ;
  wire \NLW_blk00000266_BCIN<2>_UNCONNECTED ;
  wire \NLW_blk00000266_BCIN<1>_UNCONNECTED ;
  wire \NLW_blk00000266_BCIN<0>_UNCONNECTED ;
  wire \NLW_blk00000266_P<35>_UNCONNECTED ;
  wire \NLW_blk00000266_P<34>_UNCONNECTED ;
  wire \NLW_blk00000266_P<33>_UNCONNECTED ;
  wire \NLW_blk00000266_P<32>_UNCONNECTED ;
  wire \NLW_blk00000266_P<31>_UNCONNECTED ;
  wire \NLW_blk00000266_P<30>_UNCONNECTED ;
  wire \NLW_blk00000266_P<29>_UNCONNECTED ;
  wire \NLW_blk00000266_P<28>_UNCONNECTED ;
  wire \NLW_blk00000266_P<27>_UNCONNECTED ;
  wire \NLW_blk00000266_P<26>_UNCONNECTED ;
  wire \NLW_blk00000266_P<25>_UNCONNECTED ;
  wire \NLW_blk00000266_P<24>_UNCONNECTED ;
  wire \NLW_blk00000266_P<23>_UNCONNECTED ;
  wire \NLW_blk00000266_P<22>_UNCONNECTED ;
  wire \NLW_blk00000266_P<21>_UNCONNECTED ;
  wire \NLW_blk00000266_P<20>_UNCONNECTED ;
  wire \NLW_blk00000266_P<19>_UNCONNECTED ;
  wire \NLW_blk00000266_P<18>_UNCONNECTED ;
  wire \NLW_blk00000266_P<17>_UNCONNECTED ;
  wire \NLW_blk00000266_P<16>_UNCONNECTED ;
  wire \NLW_blk00000266_P<15>_UNCONNECTED ;
  wire \NLW_blk00000266_P<14>_UNCONNECTED ;
  wire \NLW_blk00000266_BCOUT<17>_UNCONNECTED ;
  wire \NLW_blk00000266_BCOUT<16>_UNCONNECTED ;
  wire \NLW_blk00000266_BCOUT<15>_UNCONNECTED ;
  wire \NLW_blk00000266_BCOUT<14>_UNCONNECTED ;
  wire \NLW_blk00000266_BCOUT<13>_UNCONNECTED ;
  wire \NLW_blk00000266_BCOUT<12>_UNCONNECTED ;
  wire \NLW_blk00000266_BCOUT<11>_UNCONNECTED ;
  wire \NLW_blk00000266_BCOUT<10>_UNCONNECTED ;
  wire \NLW_blk00000266_BCOUT<9>_UNCONNECTED ;
  wire \NLW_blk00000266_BCOUT<8>_UNCONNECTED ;
  wire \NLW_blk00000266_BCOUT<7>_UNCONNECTED ;
  wire \NLW_blk00000266_BCOUT<6>_UNCONNECTED ;
  wire \NLW_blk00000266_BCOUT<5>_UNCONNECTED ;
  wire \NLW_blk00000266_BCOUT<4>_UNCONNECTED ;
  wire \NLW_blk00000266_BCOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000266_BCOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000266_BCOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000266_BCOUT<0>_UNCONNECTED ;
  wire \NLW_blk00000267_BCIN<17>_UNCONNECTED ;
  wire \NLW_blk00000267_BCIN<16>_UNCONNECTED ;
  wire \NLW_blk00000267_BCIN<15>_UNCONNECTED ;
  wire \NLW_blk00000267_BCIN<14>_UNCONNECTED ;
  wire \NLW_blk00000267_BCIN<13>_UNCONNECTED ;
  wire \NLW_blk00000267_BCIN<12>_UNCONNECTED ;
  wire \NLW_blk00000267_BCIN<11>_UNCONNECTED ;
  wire \NLW_blk00000267_BCIN<10>_UNCONNECTED ;
  wire \NLW_blk00000267_BCIN<9>_UNCONNECTED ;
  wire \NLW_blk00000267_BCIN<8>_UNCONNECTED ;
  wire \NLW_blk00000267_BCIN<7>_UNCONNECTED ;
  wire \NLW_blk00000267_BCIN<6>_UNCONNECTED ;
  wire \NLW_blk00000267_BCIN<5>_UNCONNECTED ;
  wire \NLW_blk00000267_BCIN<4>_UNCONNECTED ;
  wire \NLW_blk00000267_BCIN<3>_UNCONNECTED ;
  wire \NLW_blk00000267_BCIN<2>_UNCONNECTED ;
  wire \NLW_blk00000267_BCIN<1>_UNCONNECTED ;
  wire \NLW_blk00000267_BCIN<0>_UNCONNECTED ;
  wire \NLW_blk00000267_P<35>_UNCONNECTED ;
  wire \NLW_blk00000267_P<34>_UNCONNECTED ;
  wire \NLW_blk00000267_P<33>_UNCONNECTED ;
  wire \NLW_blk00000267_P<32>_UNCONNECTED ;
  wire \NLW_blk00000267_P<31>_UNCONNECTED ;
  wire \NLW_blk00000267_P<30>_UNCONNECTED ;
  wire \NLW_blk00000267_P<29>_UNCONNECTED ;
  wire \NLW_blk00000267_P<28>_UNCONNECTED ;
  wire \NLW_blk00000267_P<27>_UNCONNECTED ;
  wire \NLW_blk00000267_P<26>_UNCONNECTED ;
  wire \NLW_blk00000267_P<25>_UNCONNECTED ;
  wire \NLW_blk00000267_P<24>_UNCONNECTED ;
  wire \NLW_blk00000267_BCOUT<17>_UNCONNECTED ;
  wire \NLW_blk00000267_BCOUT<16>_UNCONNECTED ;
  wire \NLW_blk00000267_BCOUT<15>_UNCONNECTED ;
  wire \NLW_blk00000267_BCOUT<14>_UNCONNECTED ;
  wire \NLW_blk00000267_BCOUT<13>_UNCONNECTED ;
  wire \NLW_blk00000267_BCOUT<12>_UNCONNECTED ;
  wire \NLW_blk00000267_BCOUT<11>_UNCONNECTED ;
  wire \NLW_blk00000267_BCOUT<10>_UNCONNECTED ;
  wire \NLW_blk00000267_BCOUT<9>_UNCONNECTED ;
  wire \NLW_blk00000267_BCOUT<8>_UNCONNECTED ;
  wire \NLW_blk00000267_BCOUT<7>_UNCONNECTED ;
  wire \NLW_blk00000267_BCOUT<6>_UNCONNECTED ;
  wire \NLW_blk00000267_BCOUT<5>_UNCONNECTED ;
  wire \NLW_blk00000267_BCOUT<4>_UNCONNECTED ;
  wire \NLW_blk00000267_BCOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000267_BCOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000267_BCOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000267_BCOUT<0>_UNCONNECTED ;
  wire \NLW_blk00000268_BCIN<17>_UNCONNECTED ;
  wire \NLW_blk00000268_BCIN<16>_UNCONNECTED ;
  wire \NLW_blk00000268_BCIN<15>_UNCONNECTED ;
  wire \NLW_blk00000268_BCIN<14>_UNCONNECTED ;
  wire \NLW_blk00000268_BCIN<13>_UNCONNECTED ;
  wire \NLW_blk00000268_BCIN<12>_UNCONNECTED ;
  wire \NLW_blk00000268_BCIN<11>_UNCONNECTED ;
  wire \NLW_blk00000268_BCIN<10>_UNCONNECTED ;
  wire \NLW_blk00000268_BCIN<9>_UNCONNECTED ;
  wire \NLW_blk00000268_BCIN<8>_UNCONNECTED ;
  wire \NLW_blk00000268_BCIN<7>_UNCONNECTED ;
  wire \NLW_blk00000268_BCIN<6>_UNCONNECTED ;
  wire \NLW_blk00000268_BCIN<5>_UNCONNECTED ;
  wire \NLW_blk00000268_BCIN<4>_UNCONNECTED ;
  wire \NLW_blk00000268_BCIN<3>_UNCONNECTED ;
  wire \NLW_blk00000268_BCIN<2>_UNCONNECTED ;
  wire \NLW_blk00000268_BCIN<1>_UNCONNECTED ;
  wire \NLW_blk00000268_BCIN<0>_UNCONNECTED ;
  wire \NLW_blk00000268_P<35>_UNCONNECTED ;
  wire \NLW_blk00000268_P<34>_UNCONNECTED ;
  wire \NLW_blk00000268_P<33>_UNCONNECTED ;
  wire \NLW_blk00000268_P<32>_UNCONNECTED ;
  wire \NLW_blk00000268_P<31>_UNCONNECTED ;
  wire \NLW_blk00000268_P<30>_UNCONNECTED ;
  wire \NLW_blk00000268_P<29>_UNCONNECTED ;
  wire \NLW_blk00000268_P<28>_UNCONNECTED ;
  wire \NLW_blk00000268_P<27>_UNCONNECTED ;
  wire \NLW_blk00000268_P<26>_UNCONNECTED ;
  wire \NLW_blk00000268_P<25>_UNCONNECTED ;
  wire \NLW_blk00000268_P<24>_UNCONNECTED ;
  wire \NLW_blk00000268_BCOUT<17>_UNCONNECTED ;
  wire \NLW_blk00000268_BCOUT<16>_UNCONNECTED ;
  wire \NLW_blk00000268_BCOUT<15>_UNCONNECTED ;
  wire \NLW_blk00000268_BCOUT<14>_UNCONNECTED ;
  wire \NLW_blk00000268_BCOUT<13>_UNCONNECTED ;
  wire \NLW_blk00000268_BCOUT<12>_UNCONNECTED ;
  wire \NLW_blk00000268_BCOUT<11>_UNCONNECTED ;
  wire \NLW_blk00000268_BCOUT<10>_UNCONNECTED ;
  wire \NLW_blk00000268_BCOUT<9>_UNCONNECTED ;
  wire \NLW_blk00000268_BCOUT<8>_UNCONNECTED ;
  wire \NLW_blk00000268_BCOUT<7>_UNCONNECTED ;
  wire \NLW_blk00000268_BCOUT<6>_UNCONNECTED ;
  wire \NLW_blk00000268_BCOUT<5>_UNCONNECTED ;
  wire \NLW_blk00000268_BCOUT<4>_UNCONNECTED ;
  wire \NLW_blk00000268_BCOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000268_BCOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000268_BCOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000268_BCOUT<0>_UNCONNECTED ;
  wire \NLW_blk00000269_BCIN<17>_UNCONNECTED ;
  wire \NLW_blk00000269_BCIN<16>_UNCONNECTED ;
  wire \NLW_blk00000269_BCIN<15>_UNCONNECTED ;
  wire \NLW_blk00000269_BCIN<14>_UNCONNECTED ;
  wire \NLW_blk00000269_BCIN<13>_UNCONNECTED ;
  wire \NLW_blk00000269_BCIN<12>_UNCONNECTED ;
  wire \NLW_blk00000269_BCIN<11>_UNCONNECTED ;
  wire \NLW_blk00000269_BCIN<10>_UNCONNECTED ;
  wire \NLW_blk00000269_BCIN<9>_UNCONNECTED ;
  wire \NLW_blk00000269_BCIN<8>_UNCONNECTED ;
  wire \NLW_blk00000269_BCIN<7>_UNCONNECTED ;
  wire \NLW_blk00000269_BCIN<6>_UNCONNECTED ;
  wire \NLW_blk00000269_BCIN<5>_UNCONNECTED ;
  wire \NLW_blk00000269_BCIN<4>_UNCONNECTED ;
  wire \NLW_blk00000269_BCIN<3>_UNCONNECTED ;
  wire \NLW_blk00000269_BCIN<2>_UNCONNECTED ;
  wire \NLW_blk00000269_BCIN<1>_UNCONNECTED ;
  wire \NLW_blk00000269_BCIN<0>_UNCONNECTED ;
  wire \NLW_blk00000269_P<35>_UNCONNECTED ;
  wire \NLW_blk00000269_P<34>_UNCONNECTED ;
  wire \NLW_blk00000269_BCOUT<17>_UNCONNECTED ;
  wire \NLW_blk00000269_BCOUT<16>_UNCONNECTED ;
  wire \NLW_blk00000269_BCOUT<15>_UNCONNECTED ;
  wire \NLW_blk00000269_BCOUT<14>_UNCONNECTED ;
  wire \NLW_blk00000269_BCOUT<13>_UNCONNECTED ;
  wire \NLW_blk00000269_BCOUT<12>_UNCONNECTED ;
  wire \NLW_blk00000269_BCOUT<11>_UNCONNECTED ;
  wire \NLW_blk00000269_BCOUT<10>_UNCONNECTED ;
  wire \NLW_blk00000269_BCOUT<9>_UNCONNECTED ;
  wire \NLW_blk00000269_BCOUT<8>_UNCONNECTED ;
  wire \NLW_blk00000269_BCOUT<7>_UNCONNECTED ;
  wire \NLW_blk00000269_BCOUT<6>_UNCONNECTED ;
  wire \NLW_blk00000269_BCOUT<5>_UNCONNECTED ;
  wire \NLW_blk00000269_BCOUT<4>_UNCONNECTED ;
  wire \NLW_blk00000269_BCOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000269_BCOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000269_BCOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000269_BCOUT<0>_UNCONNECTED ;
  wire [7 : 0] \U0/op_inst/FLT_PT_OP/MULT.OP/OP/exp_op ;
  wire [22 : 0] \U0/op_inst/FLT_PT_OP/MULT.OP/OP/mant_op ;
  assign
    operation_rfd = NlwRenamedSig_OI_operation_rfd,
    rdy = \U0/op_inst/FLT_PT_OP/HND_SHK/RDY ,
    result[31] = \U0/op_inst/FLT_PT_OP/MULT.OP/OP/sign_op ,
    result[30] = \U0/op_inst/FLT_PT_OP/MULT.OP/OP/exp_op [7],
    result[29] = \U0/op_inst/FLT_PT_OP/MULT.OP/OP/exp_op [6],
    result[28] = \U0/op_inst/FLT_PT_OP/MULT.OP/OP/exp_op [5],
    result[27] = \U0/op_inst/FLT_PT_OP/MULT.OP/OP/exp_op [4],
    result[26] = \U0/op_inst/FLT_PT_OP/MULT.OP/OP/exp_op [3],
    result[25] = \U0/op_inst/FLT_PT_OP/MULT.OP/OP/exp_op [2],
    result[24] = \U0/op_inst/FLT_PT_OP/MULT.OP/OP/exp_op [1],
    result[23] = \U0/op_inst/FLT_PT_OP/MULT.OP/OP/exp_op [0],
    result[22] = \U0/op_inst/FLT_PT_OP/MULT.OP/OP/mant_op [22],
    result[21] = \U0/op_inst/FLT_PT_OP/MULT.OP/OP/mant_op [21],
    result[20] = \U0/op_inst/FLT_PT_OP/MULT.OP/OP/mant_op [20],
    result[19] = \U0/op_inst/FLT_PT_OP/MULT.OP/OP/mant_op [19],
    result[18] = \U0/op_inst/FLT_PT_OP/MULT.OP/OP/mant_op [18],
    result[17] = \U0/op_inst/FLT_PT_OP/MULT.OP/OP/mant_op [17],
    result[16] = \U0/op_inst/FLT_PT_OP/MULT.OP/OP/mant_op [16],
    result[15] = \U0/op_inst/FLT_PT_OP/MULT.OP/OP/mant_op [15],
    result[14] = \U0/op_inst/FLT_PT_OP/MULT.OP/OP/mant_op [14],
    result[13] = \U0/op_inst/FLT_PT_OP/MULT.OP/OP/mant_op [13],
    result[12] = \U0/op_inst/FLT_PT_OP/MULT.OP/OP/mant_op [12],
    result[11] = \U0/op_inst/FLT_PT_OP/MULT.OP/OP/mant_op [11],
    result[10] = \U0/op_inst/FLT_PT_OP/MULT.OP/OP/mant_op [10],
    result[9] = \U0/op_inst/FLT_PT_OP/MULT.OP/OP/mant_op [9],
    result[8] = \U0/op_inst/FLT_PT_OP/MULT.OP/OP/mant_op [8],
    result[7] = \U0/op_inst/FLT_PT_OP/MULT.OP/OP/mant_op [7],
    result[6] = \U0/op_inst/FLT_PT_OP/MULT.OP/OP/mant_op [6],
    result[5] = \U0/op_inst/FLT_PT_OP/MULT.OP/OP/mant_op [5],
    result[4] = \U0/op_inst/FLT_PT_OP/MULT.OP/OP/mant_op [4],
    result[3] = \U0/op_inst/FLT_PT_OP/MULT.OP/OP/mant_op [3],
    result[2] = \U0/op_inst/FLT_PT_OP/MULT.OP/OP/mant_op [2],
    result[1] = \U0/op_inst/FLT_PT_OP/MULT.OP/OP/mant_op [1],
    result[0] = \U0/op_inst/FLT_PT_OP/MULT.OP/OP/mant_op [0];
  GND   blk00000001 (
    .G(sig00000001)
  );
  VCC   blk00000002 (
    .P(NlwRenamedSig_OI_operation_rfd)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000003 (
    .C(clk),
    .D(sig0000006b),
    .Q(sig0000006c)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000004 (
    .C(clk),
    .D(sig00000098),
    .Q(sig0000006b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000005 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000084),
    .Q(sig0000000b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000006 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000082),
    .Q(sig00000009)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000007 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000097),
    .Q(sig00000067)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000008 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000083),
    .Q(sig0000000a)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000009 (
    .C(clk),
    .D(sig0000007e),
    .Q(sig0000007c)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000000a (
    .C(clk),
    .D(sig0000007d),
    .Q(sig0000007b)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000000b (
    .C(clk),
    .D(sig00000069),
    .Q(sig00000068)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000000c (
    .C(clk),
    .D(sig00000068),
    .Q(sig0000006d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000000d (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000021),
    .Q(sig0000008d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000000e (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000025),
    .Q(sig0000008e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000000f (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig0000000d),
    .Q(sig0000007f)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000010 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000011),
    .Q(sig00000080)
  );
  MUXCY   blk00000011 (
    .CI(sig00000020),
    .DI(sig00000001),
    .S(sig00000023),
    .O(sig00000021)
  );
  MUXCY   blk00000012 (
    .CI(NlwRenamedSig_OI_operation_rfd),
    .DI(sig00000001),
    .S(sig00000022),
    .O(sig00000020)
  );
  MUXCY   blk00000013 (
    .CI(sig00000024),
    .DI(sig00000001),
    .S(sig00000027),
    .O(sig00000025)
  );
  MUXCY   blk00000014 (
    .CI(NlwRenamedSig_OI_operation_rfd),
    .DI(sig00000001),
    .S(sig00000026),
    .O(sig00000024)
  );
  MUXCY   blk00000015 (
    .CI(sig0000000c),
    .DI(sig00000001),
    .S(sig0000000f),
    .O(sig0000000d)
  );
  MUXCY   blk00000016 (
    .CI(NlwRenamedSig_OI_operation_rfd),
    .DI(sig00000001),
    .S(sig0000000e),
    .O(sig0000000c)
  );
  MUXCY   blk00000017 (
    .CI(sig00000010),
    .DI(sig00000001),
    .S(sig00000013),
    .O(sig00000011)
  );
  MUXCY   blk00000018 (
    .CI(NlwRenamedSig_OI_operation_rfd),
    .DI(sig00000001),
    .S(sig00000012),
    .O(sig00000010)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000019 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000019),
    .Q(sig00000081)
  );
  MUXCY   blk0000001a (
    .CI(NlwRenamedSig_OI_operation_rfd),
    .DI(sig00000001),
    .S(sig0000001a),
    .O(sig00000014)
  );
  MUXCY   blk0000001b (
    .CI(sig00000014),
    .DI(sig00000001),
    .S(sig0000001b),
    .O(sig00000015)
  );
  MUXCY   blk0000001c (
    .CI(sig00000015),
    .DI(sig00000001),
    .S(sig0000001c),
    .O(sig00000016)
  );
  MUXCY   blk0000001d (
    .CI(sig00000016),
    .DI(sig00000001),
    .S(sig0000001d),
    .O(sig00000017)
  );
  MUXCY   blk0000001e (
    .CI(sig00000017),
    .DI(sig00000001),
    .S(sig0000001e),
    .O(sig00000018)
  );
  MUXCY   blk0000001f (
    .CI(sig00000018),
    .DI(sig00000001),
    .S(sig0000001f),
    .O(sig00000019)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000020 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig0000002d),
    .Q(sig0000008f)
  );
  MUXCY   blk00000021 (
    .CI(NlwRenamedSig_OI_operation_rfd),
    .DI(sig00000001),
    .S(sig0000002e),
    .O(sig00000028)
  );
  MUXCY   blk00000022 (
    .CI(sig00000028),
    .DI(sig00000001),
    .S(sig0000002f),
    .O(sig00000029)
  );
  MUXCY   blk00000023 (
    .CI(sig00000029),
    .DI(sig00000001),
    .S(sig00000030),
    .O(sig0000002a)
  );
  MUXCY   blk00000024 (
    .CI(sig0000002a),
    .DI(sig00000001),
    .S(sig00000031),
    .O(sig0000002b)
  );
  MUXCY   blk00000025 (
    .CI(sig0000002b),
    .DI(sig00000001),
    .S(sig00000032),
    .O(sig0000002c)
  );
  MUXCY   blk00000026 (
    .CI(sig0000002c),
    .DI(sig00000001),
    .S(sig00000033),
    .O(sig0000002d)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000027 (
    .C(clk),
    .D(sig00000075),
    .Q(sig00000071)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000028 (
    .C(clk),
    .D(sig00000074),
    .Q(sig00000070)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000029 (
    .C(clk),
    .D(sig00000073),
    .Q(sig0000006f)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000002a (
    .C(clk),
    .D(sig00000072),
    .Q(sig0000006e)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000002b (
    .C(clk),
    .D(sig00000091),
    .Q(sig00000075)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000002c (
    .C(clk),
    .D(sig00000090),
    .Q(sig00000072)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000002d (
    .C(clk),
    .D(sig0000009c),
    .Q(sig00000076)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000002e (
    .C(clk),
    .D(sig0000009e),
    .Q(sig00000079)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000002f (
    .C(clk),
    .D(sig0000004f),
    .Q(sig0000003d)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000030 (
    .C(clk),
    .D(sig00000050),
    .Q(sig0000003e)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000031 (
    .C(clk),
    .D(sig00000051),
    .Q(sig0000003f)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000032 (
    .C(clk),
    .D(sig00000052),
    .Q(sig00000040)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000033 (
    .C(clk),
    .D(sig00000053),
    .Q(sig00000041)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000034 (
    .C(clk),
    .D(sig00000054),
    .Q(sig00000042)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000035 (
    .C(clk),
    .D(sig00000055),
    .Q(sig00000043)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000036 (
    .C(clk),
    .D(sig00000056),
    .Q(sig00000044)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000037 (
    .C(clk),
    .D(sig0000003d),
    .Q(sig00000035)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000038 (
    .C(clk),
    .D(sig0000003e),
    .Q(sig00000036)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000039 (
    .C(clk),
    .D(sig0000003f),
    .Q(sig00000037)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000003a (
    .C(clk),
    .D(sig00000040),
    .Q(sig00000038)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000003b (
    .C(clk),
    .D(sig00000041),
    .Q(sig00000039)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000003c (
    .C(clk),
    .D(sig00000042),
    .Q(sig0000003a)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000003d (
    .C(clk),
    .D(sig00000043),
    .Q(sig0000003b)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk0000003e (
    .C(clk),
    .D(sig00000044),
    .Q(sig0000003c)
  );
  XORCY   blk0000003f (
    .CI(sig0000004c),
    .LI(sig00000001),
    .O(sig0000004d)
  );
  XORCY   blk00000040 (
    .CI(sig0000004b),
    .LI(sig0000008c),
    .O(sig00000056)
  );
  MUXCY   blk00000041 (
    .CI(sig0000004b),
    .DI(b[30]),
    .S(sig0000008c),
    .O(sig0000004c)
  );
  XORCY   blk00000042 (
    .CI(sig0000004a),
    .LI(sig0000008b),
    .O(sig00000055)
  );
  MUXCY   blk00000043 (
    .CI(sig0000004a),
    .DI(b[29]),
    .S(sig0000008b),
    .O(sig0000004b)
  );
  XORCY   blk00000044 (
    .CI(sig00000049),
    .LI(sig0000008a),
    .O(sig00000054)
  );
  MUXCY   blk00000045 (
    .CI(sig00000049),
    .DI(b[28]),
    .S(sig0000008a),
    .O(sig0000004a)
  );
  XORCY   blk00000046 (
    .CI(sig00000048),
    .LI(sig00000089),
    .O(sig00000053)
  );
  MUXCY   blk00000047 (
    .CI(sig00000048),
    .DI(b[27]),
    .S(sig00000089),
    .O(sig00000049)
  );
  XORCY   blk00000048 (
    .CI(sig00000047),
    .LI(sig00000088),
    .O(sig00000052)
  );
  MUXCY   blk00000049 (
    .CI(sig00000047),
    .DI(b[26]),
    .S(sig00000088),
    .O(sig00000048)
  );
  XORCY   blk0000004a (
    .CI(sig00000046),
    .LI(sig00000087),
    .O(sig00000051)
  );
  MUXCY   blk0000004b (
    .CI(sig00000046),
    .DI(b[25]),
    .S(sig00000087),
    .O(sig00000047)
  );
  XORCY   blk0000004c (
    .CI(sig00000045),
    .LI(sig00000086),
    .O(sig00000050)
  );
  MUXCY   blk0000004d (
    .CI(sig00000045),
    .DI(b[24]),
    .S(sig00000086),
    .O(sig00000046)
  );
  XORCY   blk0000004e (
    .CI(NlwRenamedSig_OI_operation_rfd),
    .LI(sig00000085),
    .O(sig0000004f)
  );
  MUXCY   blk0000004f (
    .CI(NlwRenamedSig_OI_operation_rfd),
    .DI(b[23]),
    .S(sig00000085),
    .O(sig00000045)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk00000050 (
    .C(clk),
    .D(sig0000004e),
    .Q(sig00000034)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000051 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig0000004d),
    .Q(sig0000004e)
  );
  MUXCY   blk00000052 (
    .CI(NlwRenamedSig_OI_operation_rfd),
    .DI(sig00000001),
    .S(sig000002be),
    .O(sig000002bc)
  );
  MUXCY   blk00000053 (
    .CI(sig000002bc),
    .DI(NlwRenamedSig_OI_operation_rfd),
    .S(sig000002c1),
    .O(sig000002bd)
  );
  MUXCY   blk00000054 (
    .CI(sig000002bd),
    .DI(sig00000001),
    .S(sig000002c0),
    .O(sig000002db)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000055 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(NlwRenamedSig_OI_operation_rfd),
    .Q(sig00000275)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000056 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000066),
    .Q(sig00000274)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000057 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000065),
    .Q(sig00000273)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000058 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000064),
    .Q(sig00000272)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000059 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000063),
    .Q(sig00000271)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000005a (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000062),
    .Q(sig00000270)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000005b (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000061),
    .Q(sig0000026f)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000005c (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000060),
    .Q(sig0000026e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000005d (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig0000005f),
    .Q(sig0000026d)
  );
  XORCY   blk0000005e (
    .CI(sig0000026c),
    .LI(sig000002c2),
    .O(sig000002e4)
  );
  XORCY   blk0000005f (
    .CI(sig0000026b),
    .LI(sig00000265),
    .O(sig000002e3)
  );
  MUXCY   blk00000060 (
    .CI(sig0000026b),
    .DI(sig00000001),
    .S(sig00000265),
    .O(sig0000026c)
  );
  XORCY   blk00000061 (
    .CI(sig0000026a),
    .LI(sig00000264),
    .O(sig000002e2)
  );
  MUXCY   blk00000062 (
    .CI(sig0000026a),
    .DI(sig00000001),
    .S(sig00000264),
    .O(sig0000026b)
  );
  XORCY   blk00000063 (
    .CI(sig00000269),
    .LI(sig00000263),
    .O(sig000002e1)
  );
  MUXCY   blk00000064 (
    .CI(sig00000269),
    .DI(sig00000001),
    .S(sig00000263),
    .O(sig0000026a)
  );
  XORCY   blk00000065 (
    .CI(sig00000268),
    .LI(sig00000262),
    .O(sig000002e0)
  );
  MUXCY   blk00000066 (
    .CI(sig00000268),
    .DI(sig00000001),
    .S(sig00000262),
    .O(sig00000269)
  );
  XORCY   blk00000067 (
    .CI(sig00000267),
    .LI(sig00000261),
    .O(sig000002df)
  );
  MUXCY   blk00000068 (
    .CI(sig00000267),
    .DI(sig00000001),
    .S(sig00000261),
    .O(sig00000268)
  );
  XORCY   blk00000069 (
    .CI(sig00000266),
    .LI(sig00000260),
    .O(sig000002de)
  );
  MUXCY   blk0000006a (
    .CI(sig00000266),
    .DI(sig00000001),
    .S(sig00000260),
    .O(sig00000267)
  );
  XORCY   blk0000006b (
    .CI(sig000002c3),
    .LI(sig0000025f),
    .O(sig000002dd)
  );
  MUXCY   blk0000006c (
    .CI(sig000002c3),
    .DI(sig00000001),
    .S(sig0000025f),
    .O(sig00000266)
  );
  XORCY   blk0000006d (
    .CI(sig00000283),
    .LI(sig000002c6),
    .O(sig0000028f)
  );
  MUXCY   blk0000006e (
    .CI(sig00000283),
    .DI(sig00000001),
    .S(sig000002c6),
    .O(sig000002c4)
  );
  XORCY   blk0000006f (
    .CI(sig00000282),
    .LI(sig000002c5),
    .O(sig0000028e)
  );
  MUXCY   blk00000070 (
    .CI(sig00000282),
    .DI(sig00000001),
    .S(sig000002c5),
    .O(sig00000283)
  );
  XORCY   blk00000071 (
    .CI(sig0000028c),
    .LI(sig000002cf),
    .O(sig00000298)
  );
  MUXCY   blk00000072 (
    .CI(sig0000028c),
    .DI(sig00000001),
    .S(sig000002cf),
    .O(sig00000282)
  );
  XORCY   blk00000073 (
    .CI(sig0000028b),
    .LI(sig000002ce),
    .O(sig00000297)
  );
  MUXCY   blk00000074 (
    .CI(sig0000028b),
    .DI(sig00000001),
    .S(sig000002ce),
    .O(sig0000028c)
  );
  XORCY   blk00000075 (
    .CI(sig0000028a),
    .LI(sig000002cd),
    .O(sig00000296)
  );
  MUXCY   blk00000076 (
    .CI(sig0000028a),
    .DI(sig00000001),
    .S(sig000002cd),
    .O(sig0000028b)
  );
  XORCY   blk00000077 (
    .CI(sig00000289),
    .LI(sig000002cc),
    .O(sig00000295)
  );
  MUXCY   blk00000078 (
    .CI(sig00000289),
    .DI(sig00000001),
    .S(sig000002cc),
    .O(sig0000028a)
  );
  XORCY   blk00000079 (
    .CI(sig00000288),
    .LI(sig000002cb),
    .O(sig00000294)
  );
  MUXCY   blk0000007a (
    .CI(sig00000288),
    .DI(sig00000001),
    .S(sig000002cb),
    .O(sig00000289)
  );
  XORCY   blk0000007b (
    .CI(sig00000287),
    .LI(sig000002ca),
    .O(sig00000293)
  );
  MUXCY   blk0000007c (
    .CI(sig00000287),
    .DI(sig00000001),
    .S(sig000002ca),
    .O(sig00000288)
  );
  XORCY   blk0000007d (
    .CI(sig00000286),
    .LI(sig000002c9),
    .O(sig00000292)
  );
  MUXCY   blk0000007e (
    .CI(sig00000286),
    .DI(sig00000001),
    .S(sig000002c9),
    .O(sig00000287)
  );
  XORCY   blk0000007f (
    .CI(sig00000285),
    .LI(sig000002c8),
    .O(sig00000291)
  );
  MUXCY   blk00000080 (
    .CI(sig00000285),
    .DI(sig00000001),
    .S(sig000002c8),
    .O(sig00000286)
  );
  XORCY   blk00000081 (
    .CI(sig00000284),
    .LI(sig000002c7),
    .O(sig00000290)
  );
  MUXCY   blk00000082 (
    .CI(sig00000284),
    .DI(sig00000001),
    .S(sig000002c7),
    .O(sig00000285)
  );
  XORCY   blk00000083 (
    .CI(sig000002db),
    .LI(sig000002bf),
    .O(sig0000028d)
  );
  MUXCY   blk00000084 (
    .CI(sig000002db),
    .DI(sig00000001),
    .S(sig000002bf),
    .O(sig00000284)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000085 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig0000028d),
    .Q(sig00000276)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000086 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000290),
    .Q(sig00000277)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000087 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000291),
    .Q(sig0000027a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000088 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000292),
    .Q(sig0000027b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000089 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000293),
    .Q(sig0000027c)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000008a (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000294),
    .Q(sig0000027d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000008b (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000295),
    .Q(sig0000027e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000008c (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000296),
    .Q(sig0000027f)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000008d (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000297),
    .Q(sig00000280)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000008e (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000298),
    .Q(sig00000281)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000008f (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig0000028e),
    .Q(sig00000278)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000090 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig0000028f),
    .Q(sig00000279)
  );
  XORCY   blk00000091 (
    .CI(sig000002a6),
    .LI(sig00000001),
    .O(sig000002b0)
  );
  XORCY   blk00000092 (
    .CI(sig000002a5),
    .LI(sig000002dc),
    .O(NLW_blk00000092_O_UNCONNECTED)
  );
  MUXCY   blk00000093 (
    .CI(sig000002a5),
    .DI(NlwRenamedSig_OI_operation_rfd),
    .S(sig000002dc),
    .O(sig000002a6)
  );
  XORCY   blk00000094 (
    .CI(sig000002a4),
    .LI(sig000002d1),
    .O(sig000002b2)
  );
  MUXCY   blk00000095 (
    .CI(sig000002a4),
    .DI(sig00000001),
    .S(sig000002d1),
    .O(sig000002a5)
  );
  XORCY   blk00000096 (
    .CI(sig000002af),
    .LI(sig000002da),
    .O(sig000002bb)
  );
  MUXCY   blk00000097 (
    .CI(sig000002af),
    .DI(sig00000001),
    .S(sig000002da),
    .O(sig000002a4)
  );
  XORCY   blk00000098 (
    .CI(sig000002ae),
    .LI(sig000002d9),
    .O(sig000002ba)
  );
  MUXCY   blk00000099 (
    .CI(sig000002ae),
    .DI(sig00000001),
    .S(sig000002d9),
    .O(sig000002af)
  );
  XORCY   blk0000009a (
    .CI(sig000002ad),
    .LI(sig000002d8),
    .O(sig000002b9)
  );
  MUXCY   blk0000009b (
    .CI(sig000002ad),
    .DI(sig00000001),
    .S(sig000002d8),
    .O(sig000002ae)
  );
  XORCY   blk0000009c (
    .CI(sig000002ac),
    .LI(sig000002d7),
    .O(sig000002b8)
  );
  MUXCY   blk0000009d (
    .CI(sig000002ac),
    .DI(sig00000001),
    .S(sig000002d7),
    .O(sig000002ad)
  );
  XORCY   blk0000009e (
    .CI(sig000002ab),
    .LI(sig000002d6),
    .O(sig000002b7)
  );
  MUXCY   blk0000009f (
    .CI(sig000002ab),
    .DI(sig00000001),
    .S(sig000002d6),
    .O(sig000002ac)
  );
  XORCY   blk000000a0 (
    .CI(sig000002aa),
    .LI(sig000002d5),
    .O(sig000002b6)
  );
  MUXCY   blk000000a1 (
    .CI(sig000002aa),
    .DI(sig00000001),
    .S(sig000002d5),
    .O(sig000002ab)
  );
  XORCY   blk000000a2 (
    .CI(sig000002a9),
    .LI(sig000002d4),
    .O(sig000002b5)
  );
  MUXCY   blk000000a3 (
    .CI(sig000002a9),
    .DI(sig00000001),
    .S(sig000002d4),
    .O(sig000002aa)
  );
  XORCY   blk000000a4 (
    .CI(sig000002a8),
    .LI(sig000002d3),
    .O(sig000002b4)
  );
  MUXCY   blk000000a5 (
    .CI(sig000002a8),
    .DI(sig00000001),
    .S(sig000002d3),
    .O(sig000002a9)
  );
  XORCY   blk000000a6 (
    .CI(sig000002a7),
    .LI(sig000002d2),
    .O(sig000002b3)
  );
  MUXCY   blk000000a7 (
    .CI(sig000002a7),
    .DI(sig00000001),
    .S(sig000002d2),
    .O(sig000002a8)
  );
  XORCY   blk000000a8 (
    .CI(sig000002c4),
    .LI(sig000002d0),
    .O(sig000002b1)
  );
  MUXCY   blk000000a9 (
    .CI(sig000002c4),
    .DI(sig00000001),
    .S(sig000002d0),
    .O(sig000002a7)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000aa (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig000002b1),
    .Q(sig00000299)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000ab (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig000002b3),
    .Q(sig0000029a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000ac (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig000002b4),
    .Q(sig0000029c)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000ad (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig000002b5),
    .Q(sig0000029d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000ae (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig000002b6),
    .Q(sig0000029e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000af (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig000002b7),
    .Q(sig0000029f)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000b0 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig000002b8),
    .Q(sig000002a0)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000b1 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig000002b9),
    .Q(sig000002a1)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000b2 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig000002ba),
    .Q(sig000002a2)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000b3 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig000002bb),
    .Q(sig000002a3)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000b4 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig000002b2),
    .Q(sig0000029b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000000b5 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig000002b0),
    .Q(sig000002c3)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk000000b6 (
    .I0(sig00000178),
    .I1(sig00000001),
    .O(sig00000118)
  );
  MUXCY   blk000000b7 (
    .CI(sig00000001),
    .DI(sig00000178),
    .S(sig00000118),
    .O(sig000000f3)
  );
  XORCY   blk000000b8 (
    .CI(sig00000001),
    .LI(sig00000118),
    .O(sig00000148)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk000000b9 (
    .I0(sig00000183),
    .I1(sig00000001),
    .O(sig00000123)
  );
  MUXCY   blk000000ba (
    .CI(sig000000f3),
    .DI(sig00000183),
    .S(sig00000123),
    .O(sig000000fe)
  );
  XORCY   blk000000bb (
    .CI(sig000000f3),
    .LI(sig00000123),
    .O(sig00000153)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk000000bc (
    .I0(sig0000018e),
    .I1(sig00000001),
    .O(sig0000012e)
  );
  MUXCY   blk000000bd (
    .CI(sig000000fe),
    .DI(sig0000018e),
    .S(sig0000012e),
    .O(sig00000109)
  );
  XORCY   blk000000be (
    .CI(sig000000fe),
    .LI(sig0000012e),
    .O(sig0000015e)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk000000bf (
    .I0(sig00000199),
    .I1(sig00000001),
    .O(sig00000139)
  );
  MUXCY   blk000000c0 (
    .CI(sig00000109),
    .DI(sig00000199),
    .S(sig00000139),
    .O(sig00000112)
  );
  XORCY   blk000000c1 (
    .CI(sig00000109),
    .LI(sig00000139),
    .O(sig00000169)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk000000c2 (
    .I0(sig000001a2),
    .I1(sig00000001),
    .O(sig00000142)
  );
  MUXCY   blk000000c3 (
    .CI(sig00000112),
    .DI(sig000001a2),
    .S(sig00000142),
    .O(sig00000113)
  );
  XORCY   blk000000c4 (
    .CI(sig00000112),
    .LI(sig00000142),
    .O(sig00000172)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk000000c5 (
    .I0(sig000001a3),
    .I1(sig00000001),
    .O(sig00000143)
  );
  MUXCY   blk000000c6 (
    .CI(sig00000113),
    .DI(sig000001a3),
    .S(sig00000143),
    .O(sig00000114)
  );
  XORCY   blk000000c7 (
    .CI(sig00000113),
    .LI(sig00000143),
    .O(sig00000173)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk000000c8 (
    .I0(sig000001a4),
    .I1(sig00000001),
    .O(sig00000144)
  );
  MUXCY   blk000000c9 (
    .CI(sig00000114),
    .DI(sig000001a4),
    .S(sig00000144),
    .O(sig00000115)
  );
  XORCY   blk000000ca (
    .CI(sig00000114),
    .LI(sig00000144),
    .O(sig00000174)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk000000cb (
    .I0(sig000001a5),
    .I1(sig000001a8),
    .O(sig00000145)
  );
  MUXCY   blk000000cc (
    .CI(sig00000115),
    .DI(sig000001a5),
    .S(sig00000145),
    .O(sig00000116)
  );
  XORCY   blk000000cd (
    .CI(sig00000115),
    .LI(sig00000145),
    .O(sig00000175)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk000000ce (
    .I0(sig000001a6),
    .I1(sig000001b3),
    .O(sig00000146)
  );
  MUXCY   blk000000cf (
    .CI(sig00000116),
    .DI(sig000001a6),
    .S(sig00000146),
    .O(sig00000117)
  );
  XORCY   blk000000d0 (
    .CI(sig00000116),
    .LI(sig00000146),
    .O(sig00000176)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk000000d1 (
    .I0(sig000001a7),
    .I1(sig000001b9),
    .O(sig00000147)
  );
  MUXCY   blk000000d2 (
    .CI(sig00000117),
    .DI(sig000001a7),
    .S(sig00000147),
    .O(sig000000e9)
  );
  XORCY   blk000000d3 (
    .CI(sig00000117),
    .LI(sig00000147),
    .O(sig00000177)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk000000d4 (
    .I0(sig00000179),
    .I1(sig000001ba),
    .O(sig00000119)
  );
  MUXCY   blk000000d5 (
    .CI(sig000000e9),
    .DI(sig00000179),
    .S(sig00000119),
    .O(sig000000ea)
  );
  XORCY   blk000000d6 (
    .CI(sig000000e9),
    .LI(sig00000119),
    .O(sig00000149)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk000000d7 (
    .I0(sig0000017a),
    .I1(sig000001bb),
    .O(sig0000011a)
  );
  MUXCY   blk000000d8 (
    .CI(sig000000ea),
    .DI(sig0000017a),
    .S(sig0000011a),
    .O(sig000000eb)
  );
  XORCY   blk000000d9 (
    .CI(sig000000ea),
    .LI(sig0000011a),
    .O(sig0000014a)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk000000da (
    .I0(sig0000017b),
    .I1(sig000001bc),
    .O(sig0000011b)
  );
  MUXCY   blk000000db (
    .CI(sig000000eb),
    .DI(sig0000017b),
    .S(sig0000011b),
    .O(sig000000ec)
  );
  XORCY   blk000000dc (
    .CI(sig000000eb),
    .LI(sig0000011b),
    .O(sig0000014b)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk000000dd (
    .I0(sig0000017c),
    .I1(sig000001bd),
    .O(sig0000011c)
  );
  MUXCY   blk000000de (
    .CI(sig000000ec),
    .DI(sig0000017c),
    .S(sig0000011c),
    .O(sig000000ed)
  );
  XORCY   blk000000df (
    .CI(sig000000ec),
    .LI(sig0000011c),
    .O(sig0000014c)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk000000e0 (
    .I0(sig0000017d),
    .I1(sig000001be),
    .O(sig0000011d)
  );
  MUXCY   blk000000e1 (
    .CI(sig000000ed),
    .DI(sig0000017d),
    .S(sig0000011d),
    .O(sig000000ee)
  );
  XORCY   blk000000e2 (
    .CI(sig000000ed),
    .LI(sig0000011d),
    .O(sig0000014d)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk000000e3 (
    .I0(sig0000017e),
    .I1(sig000001bf),
    .O(sig0000011e)
  );
  MUXCY   blk000000e4 (
    .CI(sig000000ee),
    .DI(sig0000017e),
    .S(sig0000011e),
    .O(sig000000ef)
  );
  XORCY   blk000000e5 (
    .CI(sig000000ee),
    .LI(sig0000011e),
    .O(sig0000014e)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk000000e6 (
    .I0(sig0000017f),
    .I1(sig000001c0),
    .O(sig0000011f)
  );
  MUXCY   blk000000e7 (
    .CI(sig000000ef),
    .DI(sig0000017f),
    .S(sig0000011f),
    .O(sig000000f0)
  );
  XORCY   blk000000e8 (
    .CI(sig000000ef),
    .LI(sig0000011f),
    .O(sig0000014f)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk000000e9 (
    .I0(sig00000180),
    .I1(sig000001a9),
    .O(sig00000120)
  );
  MUXCY   blk000000ea (
    .CI(sig000000f0),
    .DI(sig00000180),
    .S(sig00000120),
    .O(sig000000f1)
  );
  XORCY   blk000000eb (
    .CI(sig000000f0),
    .LI(sig00000120),
    .O(sig00000150)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk000000ec (
    .I0(sig00000181),
    .I1(sig000001aa),
    .O(sig00000121)
  );
  MUXCY   blk000000ed (
    .CI(sig000000f1),
    .DI(sig00000181),
    .S(sig00000121),
    .O(sig000000f2)
  );
  XORCY   blk000000ee (
    .CI(sig000000f1),
    .LI(sig00000121),
    .O(sig00000151)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk000000ef (
    .I0(sig00000182),
    .I1(sig000001ab),
    .O(sig00000122)
  );
  MUXCY   blk000000f0 (
    .CI(sig000000f2),
    .DI(sig00000182),
    .S(sig00000122),
    .O(sig000000f4)
  );
  XORCY   blk000000f1 (
    .CI(sig000000f2),
    .LI(sig00000122),
    .O(sig00000152)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk000000f2 (
    .I0(sig00000184),
    .I1(sig000001ac),
    .O(sig00000124)
  );
  MUXCY   blk000000f3 (
    .CI(sig000000f4),
    .DI(sig00000184),
    .S(sig00000124),
    .O(sig000000f5)
  );
  XORCY   blk000000f4 (
    .CI(sig000000f4),
    .LI(sig00000124),
    .O(sig00000154)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk000000f5 (
    .I0(sig00000185),
    .I1(sig000001ad),
    .O(sig00000125)
  );
  MUXCY   blk000000f6 (
    .CI(sig000000f5),
    .DI(sig00000185),
    .S(sig00000125),
    .O(sig000000f6)
  );
  XORCY   blk000000f7 (
    .CI(sig000000f5),
    .LI(sig00000125),
    .O(sig00000155)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk000000f8 (
    .I0(sig00000186),
    .I1(sig000001ae),
    .O(sig00000126)
  );
  MUXCY   blk000000f9 (
    .CI(sig000000f6),
    .DI(sig00000186),
    .S(sig00000126),
    .O(sig000000f7)
  );
  XORCY   blk000000fa (
    .CI(sig000000f6),
    .LI(sig00000126),
    .O(sig00000156)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk000000fb (
    .I0(sig00000187),
    .I1(sig000001af),
    .O(sig00000127)
  );
  MUXCY   blk000000fc (
    .CI(sig000000f7),
    .DI(sig00000187),
    .S(sig00000127),
    .O(sig000000f8)
  );
  XORCY   blk000000fd (
    .CI(sig000000f7),
    .LI(sig00000127),
    .O(sig00000157)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk000000fe (
    .I0(sig00000188),
    .I1(sig000001b0),
    .O(sig00000128)
  );
  MUXCY   blk000000ff (
    .CI(sig000000f8),
    .DI(sig00000188),
    .S(sig00000128),
    .O(sig000000f9)
  );
  XORCY   blk00000100 (
    .CI(sig000000f8),
    .LI(sig00000128),
    .O(sig00000158)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000101 (
    .I0(sig00000189),
    .I1(sig000001b1),
    .O(sig00000129)
  );
  MUXCY   blk00000102 (
    .CI(sig000000f9),
    .DI(sig00000189),
    .S(sig00000129),
    .O(sig000000fa)
  );
  XORCY   blk00000103 (
    .CI(sig000000f9),
    .LI(sig00000129),
    .O(sig00000159)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000104 (
    .I0(sig0000018a),
    .I1(sig000001b2),
    .O(sig0000012a)
  );
  MUXCY   blk00000105 (
    .CI(sig000000fa),
    .DI(sig0000018a),
    .S(sig0000012a),
    .O(sig000000fb)
  );
  XORCY   blk00000106 (
    .CI(sig000000fa),
    .LI(sig0000012a),
    .O(sig0000015a)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000107 (
    .I0(sig0000018b),
    .I1(sig000001b4),
    .O(sig0000012b)
  );
  MUXCY   blk00000108 (
    .CI(sig000000fb),
    .DI(sig0000018b),
    .S(sig0000012b),
    .O(sig000000fc)
  );
  XORCY   blk00000109 (
    .CI(sig000000fb),
    .LI(sig0000012b),
    .O(sig0000015b)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk0000010a (
    .I0(sig0000018c),
    .I1(sig000001b5),
    .O(sig0000012c)
  );
  MUXCY   blk0000010b (
    .CI(sig000000fc),
    .DI(sig0000018c),
    .S(sig0000012c),
    .O(sig000000fd)
  );
  XORCY   blk0000010c (
    .CI(sig000000fc),
    .LI(sig0000012c),
    .O(sig0000015c)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk0000010d (
    .I0(sig0000018d),
    .I1(sig000001b6),
    .O(sig0000012d)
  );
  MUXCY   blk0000010e (
    .CI(sig000000fd),
    .DI(sig0000018d),
    .S(sig0000012d),
    .O(sig000000ff)
  );
  XORCY   blk0000010f (
    .CI(sig000000fd),
    .LI(sig0000012d),
    .O(sig0000015d)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000110 (
    .I0(sig0000018f),
    .I1(sig000001b7),
    .O(sig0000012f)
  );
  MUXCY   blk00000111 (
    .CI(sig000000ff),
    .DI(sig0000018f),
    .S(sig0000012f),
    .O(sig00000100)
  );
  XORCY   blk00000112 (
    .CI(sig000000ff),
    .LI(sig0000012f),
    .O(sig0000015f)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000113 (
    .I0(sig00000190),
    .I1(sig000001b8),
    .O(sig00000130)
  );
  MUXCY   blk00000114 (
    .CI(sig00000100),
    .DI(sig00000190),
    .S(sig00000130),
    .O(sig00000101)
  );
  XORCY   blk00000115 (
    .CI(sig00000100),
    .LI(sig00000130),
    .O(sig00000160)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000116 (
    .I0(sig00000191),
    .I1(sig00000001),
    .O(sig00000131)
  );
  MUXCY   blk00000117 (
    .CI(sig00000101),
    .DI(sig00000191),
    .S(sig00000131),
    .O(sig00000102)
  );
  XORCY   blk00000118 (
    .CI(sig00000101),
    .LI(sig00000131),
    .O(sig00000161)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000119 (
    .I0(sig00000192),
    .I1(sig00000001),
    .O(sig00000132)
  );
  MUXCY   blk0000011a (
    .CI(sig00000102),
    .DI(sig00000192),
    .S(sig00000132),
    .O(sig00000103)
  );
  XORCY   blk0000011b (
    .CI(sig00000102),
    .LI(sig00000132),
    .O(sig00000162)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk0000011c (
    .I0(sig00000193),
    .I1(sig00000001),
    .O(sig00000133)
  );
  MUXCY   blk0000011d (
    .CI(sig00000103),
    .DI(sig00000193),
    .S(sig00000133),
    .O(sig00000104)
  );
  XORCY   blk0000011e (
    .CI(sig00000103),
    .LI(sig00000133),
    .O(sig00000163)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk0000011f (
    .I0(sig00000194),
    .I1(sig00000001),
    .O(sig00000134)
  );
  MUXCY   blk00000120 (
    .CI(sig00000104),
    .DI(sig00000194),
    .S(sig00000134),
    .O(sig00000105)
  );
  XORCY   blk00000121 (
    .CI(sig00000104),
    .LI(sig00000134),
    .O(sig00000164)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000122 (
    .I0(sig00000195),
    .I1(sig00000001),
    .O(sig00000135)
  );
  MUXCY   blk00000123 (
    .CI(sig00000105),
    .DI(sig00000195),
    .S(sig00000135),
    .O(sig00000106)
  );
  XORCY   blk00000124 (
    .CI(sig00000105),
    .LI(sig00000135),
    .O(sig00000165)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000125 (
    .I0(sig00000196),
    .I1(sig00000001),
    .O(sig00000136)
  );
  MUXCY   blk00000126 (
    .CI(sig00000106),
    .DI(sig00000196),
    .S(sig00000136),
    .O(sig00000107)
  );
  XORCY   blk00000127 (
    .CI(sig00000106),
    .LI(sig00000136),
    .O(sig00000166)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000128 (
    .I0(sig00000197),
    .I1(sig00000001),
    .O(sig00000137)
  );
  MUXCY   blk00000129 (
    .CI(sig00000107),
    .DI(sig00000197),
    .S(sig00000137),
    .O(sig00000108)
  );
  XORCY   blk0000012a (
    .CI(sig00000107),
    .LI(sig00000137),
    .O(sig00000167)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk0000012b (
    .I0(sig00000198),
    .I1(sig00000001),
    .O(sig00000138)
  );
  MUXCY   blk0000012c (
    .CI(sig00000108),
    .DI(sig00000198),
    .S(sig00000138),
    .O(sig0000010a)
  );
  XORCY   blk0000012d (
    .CI(sig00000108),
    .LI(sig00000138),
    .O(sig00000168)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk0000012e (
    .I0(sig0000019a),
    .I1(sig00000001),
    .O(sig0000013a)
  );
  MUXCY   blk0000012f (
    .CI(sig0000010a),
    .DI(sig0000019a),
    .S(sig0000013a),
    .O(sig0000010b)
  );
  XORCY   blk00000130 (
    .CI(sig0000010a),
    .LI(sig0000013a),
    .O(sig0000016a)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000131 (
    .I0(sig0000019b),
    .I1(sig00000001),
    .O(sig0000013b)
  );
  MUXCY   blk00000132 (
    .CI(sig0000010b),
    .DI(sig0000019b),
    .S(sig0000013b),
    .O(sig0000010c)
  );
  XORCY   blk00000133 (
    .CI(sig0000010b),
    .LI(sig0000013b),
    .O(sig0000016b)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000134 (
    .I0(sig0000019c),
    .I1(sig00000001),
    .O(sig0000013c)
  );
  MUXCY   blk00000135 (
    .CI(sig0000010c),
    .DI(sig0000019c),
    .S(sig0000013c),
    .O(sig0000010d)
  );
  XORCY   blk00000136 (
    .CI(sig0000010c),
    .LI(sig0000013c),
    .O(sig0000016c)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000137 (
    .I0(sig0000019d),
    .I1(sig00000001),
    .O(sig0000013d)
  );
  MUXCY   blk00000138 (
    .CI(sig0000010d),
    .DI(sig0000019d),
    .S(sig0000013d),
    .O(sig0000010e)
  );
  XORCY   blk00000139 (
    .CI(sig0000010d),
    .LI(sig0000013d),
    .O(sig0000016d)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk0000013a (
    .I0(sig0000019e),
    .I1(sig00000001),
    .O(sig0000013e)
  );
  MUXCY   blk0000013b (
    .CI(sig0000010e),
    .DI(sig0000019e),
    .S(sig0000013e),
    .O(sig0000010f)
  );
  XORCY   blk0000013c (
    .CI(sig0000010e),
    .LI(sig0000013e),
    .O(sig0000016e)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk0000013d (
    .I0(sig0000019f),
    .I1(sig00000001),
    .O(sig0000013f)
  );
  MUXCY   blk0000013e (
    .CI(sig0000010f),
    .DI(sig0000019f),
    .S(sig0000013f),
    .O(sig00000110)
  );
  XORCY   blk0000013f (
    .CI(sig0000010f),
    .LI(sig0000013f),
    .O(sig0000016f)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000140 (
    .I0(sig000001a0),
    .I1(sig00000001),
    .O(sig00000140)
  );
  MUXCY   blk00000141 (
    .CI(sig00000110),
    .DI(sig000001a0),
    .S(sig00000140),
    .O(sig00000111)
  );
  XORCY   blk00000142 (
    .CI(sig00000110),
    .LI(sig00000140),
    .O(sig00000170)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000143 (
    .I0(sig000001a1),
    .I1(sig00000001),
    .O(sig00000141)
  );
  XORCY   blk00000144 (
    .CI(sig00000111),
    .LI(sig00000141),
    .O(sig00000171)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000145 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000171),
    .Q(sig00000258)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000146 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000170),
    .Q(sig00000257)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000147 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig0000016f),
    .Q(sig00000256)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000148 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig0000016e),
    .Q(sig00000255)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000149 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig0000016d),
    .Q(sig00000254)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000014a (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig0000016c),
    .Q(sig00000253)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000014b (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig0000016b),
    .Q(sig00000252)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000014c (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig0000016a),
    .Q(sig00000251)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000014d (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000168),
    .Q(sig0000024f)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000014e (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000167),
    .Q(sig0000024e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000014f (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000166),
    .Q(sig0000024d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000150 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000165),
    .Q(sig0000024c)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000151 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000164),
    .Q(sig0000024b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000152 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000163),
    .Q(sig0000024a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000153 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000162),
    .Q(sig00000249)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000154 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000161),
    .Q(sig00000248)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000155 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000160),
    .Q(sig00000247)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000156 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig0000015f),
    .Q(sig00000246)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000157 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig0000015d),
    .Q(sig00000244)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000158 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig0000015c),
    .Q(sig00000243)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000159 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig0000015b),
    .Q(sig00000242)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000015a (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig0000015a),
    .Q(sig00000241)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000015b (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000159),
    .Q(sig00000240)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000015c (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000158),
    .Q(sig0000023f)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000015d (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000157),
    .Q(sig0000023e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000015e (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000156),
    .Q(sig0000023d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000015f (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000155),
    .Q(sig0000023c)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000160 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000154),
    .Q(sig0000023b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000161 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000152),
    .Q(sig00000239)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000162 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000151),
    .Q(sig00000238)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000163 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000150),
    .Q(sig00000237)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000164 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig0000014f),
    .Q(sig00000236)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000165 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig0000014e),
    .Q(sig00000235)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000166 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig0000014d),
    .Q(sig00000234)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000167 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig0000014c),
    .Q(sig00000233)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000168 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig0000014b),
    .Q(sig00000232)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000169 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig0000014a),
    .Q(sig00000231)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000016a (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000149),
    .Q(sig00000230)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000016b (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000177),
    .Q(sig0000025e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000016c (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000176),
    .Q(sig0000025d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000016d (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000175),
    .Q(sig0000025c)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000016e (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000174),
    .Q(sig0000025b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000016f (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000173),
    .Q(sig0000025a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000170 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000172),
    .Q(sig00000259)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000171 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000169),
    .Q(sig00000250)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000172 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig0000015e),
    .Q(sig00000245)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000173 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000153),
    .Q(sig0000023a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000174 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000148),
    .Q(sig0000022f)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000175 (
    .I0(sig000001fb),
    .I1(sig000001e3),
    .O(sig000000b7)
  );
  MUXCY   blk00000176 (
    .CI(sig00000001),
    .DI(sig000001fb),
    .S(sig000000b7),
    .O(sig000000a9)
  );
  XORCY   blk00000177 (
    .CI(sig00000001),
    .LI(sig000000b7),
    .O(sig000000d0)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000178 (
    .I0(sig00000206),
    .I1(sig000001ee),
    .O(sig000000c2)
  );
  MUXCY   blk00000179 (
    .CI(sig000000a9),
    .DI(sig00000206),
    .S(sig000000c2),
    .O(sig000000af)
  );
  XORCY   blk0000017a (
    .CI(sig000000a9),
    .LI(sig000000c2),
    .O(sig000000db)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk0000017b (
    .I0(sig0000020b),
    .I1(sig000001f3),
    .O(sig000000c8)
  );
  MUXCY   blk0000017c (
    .CI(sig000000af),
    .DI(sig0000020b),
    .S(sig000000c8),
    .O(sig000000b0)
  );
  XORCY   blk0000017d (
    .CI(sig000000af),
    .LI(sig000000c8),
    .O(sig000000e1)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk0000017e (
    .I0(sig0000020c),
    .I1(sig000001f4),
    .O(sig000000c9)
  );
  MUXCY   blk0000017f (
    .CI(sig000000b0),
    .DI(sig0000020c),
    .S(sig000000c9),
    .O(sig000000b1)
  );
  XORCY   blk00000180 (
    .CI(sig000000b0),
    .LI(sig000000c9),
    .O(sig000000e2)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000181 (
    .I0(sig0000020d),
    .I1(sig000001f5),
    .O(sig000000ca)
  );
  MUXCY   blk00000182 (
    .CI(sig000000b1),
    .DI(sig0000020d),
    .S(sig000000ca),
    .O(sig000000b2)
  );
  XORCY   blk00000183 (
    .CI(sig000000b1),
    .LI(sig000000ca),
    .O(sig000000e3)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000184 (
    .I0(sig0000020e),
    .I1(sig000001f6),
    .O(sig000000cb)
  );
  MUXCY   blk00000185 (
    .CI(sig000000b2),
    .DI(sig0000020e),
    .S(sig000000cb),
    .O(sig000000b3)
  );
  XORCY   blk00000186 (
    .CI(sig000000b2),
    .LI(sig000000cb),
    .O(sig000000e4)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000187 (
    .I0(sig0000020f),
    .I1(sig000001f7),
    .O(sig000000cc)
  );
  MUXCY   blk00000188 (
    .CI(sig000000b3),
    .DI(sig0000020f),
    .S(sig000000cc),
    .O(sig000000b4)
  );
  XORCY   blk00000189 (
    .CI(sig000000b3),
    .LI(sig000000cc),
    .O(sig000000e5)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk0000018a (
    .I0(sig00000210),
    .I1(sig000001f8),
    .O(sig000000cd)
  );
  MUXCY   blk0000018b (
    .CI(sig000000b4),
    .DI(sig00000210),
    .S(sig000000cd),
    .O(sig000000b5)
  );
  XORCY   blk0000018c (
    .CI(sig000000b4),
    .LI(sig000000cd),
    .O(sig000000e6)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk0000018d (
    .I0(sig00000211),
    .I1(sig000001f9),
    .O(sig000000ce)
  );
  MUXCY   blk0000018e (
    .CI(sig000000b5),
    .DI(sig00000211),
    .S(sig000000ce),
    .O(sig000000b6)
  );
  XORCY   blk0000018f (
    .CI(sig000000b5),
    .LI(sig000000ce),
    .O(sig000000e7)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000190 (
    .I0(sig00000212),
    .I1(sig000001fa),
    .O(sig000000cf)
  );
  MUXCY   blk00000191 (
    .CI(sig000000b6),
    .DI(sig00000212),
    .S(sig000000cf),
    .O(sig0000009f)
  );
  XORCY   blk00000192 (
    .CI(sig000000b6),
    .LI(sig000000cf),
    .O(sig000000e8)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000193 (
    .I0(sig000001fc),
    .I1(sig000001e4),
    .O(sig000000b8)
  );
  MUXCY   blk00000194 (
    .CI(sig0000009f),
    .DI(sig000001fc),
    .S(sig000000b8),
    .O(sig000000a0)
  );
  XORCY   blk00000195 (
    .CI(sig0000009f),
    .LI(sig000000b8),
    .O(sig000000d1)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000196 (
    .I0(sig000001fd),
    .I1(sig000001e5),
    .O(sig000000b9)
  );
  MUXCY   blk00000197 (
    .CI(sig000000a0),
    .DI(sig000001fd),
    .S(sig000000b9),
    .O(sig000000a1)
  );
  XORCY   blk00000198 (
    .CI(sig000000a0),
    .LI(sig000000b9),
    .O(sig000000d2)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000199 (
    .I0(sig000001fe),
    .I1(sig000001e6),
    .O(sig000000ba)
  );
  MUXCY   blk0000019a (
    .CI(sig000000a1),
    .DI(sig000001fe),
    .S(sig000000ba),
    .O(sig000000a2)
  );
  XORCY   blk0000019b (
    .CI(sig000000a1),
    .LI(sig000000ba),
    .O(sig000000d3)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk0000019c (
    .I0(sig000001ff),
    .I1(sig000001e7),
    .O(sig000000bb)
  );
  MUXCY   blk0000019d (
    .CI(sig000000a2),
    .DI(sig000001ff),
    .S(sig000000bb),
    .O(sig000000a3)
  );
  XORCY   blk0000019e (
    .CI(sig000000a2),
    .LI(sig000000bb),
    .O(sig000000d4)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk0000019f (
    .I0(sig00000200),
    .I1(sig000001e8),
    .O(sig000000bc)
  );
  MUXCY   blk000001a0 (
    .CI(sig000000a3),
    .DI(sig00000200),
    .S(sig000000bc),
    .O(sig000000a4)
  );
  XORCY   blk000001a1 (
    .CI(sig000000a3),
    .LI(sig000000bc),
    .O(sig000000d5)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk000001a2 (
    .I0(sig00000201),
    .I1(sig000001e9),
    .O(sig000000bd)
  );
  MUXCY   blk000001a3 (
    .CI(sig000000a4),
    .DI(sig00000201),
    .S(sig000000bd),
    .O(sig000000a5)
  );
  XORCY   blk000001a4 (
    .CI(sig000000a4),
    .LI(sig000000bd),
    .O(sig000000d6)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk000001a5 (
    .I0(sig00000202),
    .I1(sig000001ea),
    .O(sig000000be)
  );
  MUXCY   blk000001a6 (
    .CI(sig000000a5),
    .DI(sig00000202),
    .S(sig000000be),
    .O(sig000000a6)
  );
  XORCY   blk000001a7 (
    .CI(sig000000a5),
    .LI(sig000000be),
    .O(sig000000d7)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk000001a8 (
    .I0(sig00000203),
    .I1(sig000001eb),
    .O(sig000000bf)
  );
  MUXCY   blk000001a9 (
    .CI(sig000000a6),
    .DI(sig00000203),
    .S(sig000000bf),
    .O(sig000000a7)
  );
  XORCY   blk000001aa (
    .CI(sig000000a6),
    .LI(sig000000bf),
    .O(sig000000d8)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk000001ab (
    .I0(sig00000204),
    .I1(sig000001ec),
    .O(sig000000c0)
  );
  MUXCY   blk000001ac (
    .CI(sig000000a7),
    .DI(sig00000204),
    .S(sig000000c0),
    .O(sig000000a8)
  );
  XORCY   blk000001ad (
    .CI(sig000000a7),
    .LI(sig000000c0),
    .O(sig000000d9)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk000001ae (
    .I0(sig00000205),
    .I1(sig000001ed),
    .O(sig000000c1)
  );
  MUXCY   blk000001af (
    .CI(sig000000a8),
    .DI(sig00000205),
    .S(sig000000c1),
    .O(sig000000aa)
  );
  XORCY   blk000001b0 (
    .CI(sig000000a8),
    .LI(sig000000c1),
    .O(sig000000da)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk000001b1 (
    .I0(sig00000207),
    .I1(sig000001ef),
    .O(sig000000c3)
  );
  MUXCY   blk000001b2 (
    .CI(sig000000aa),
    .DI(sig00000207),
    .S(sig000000c3),
    .O(sig000000ab)
  );
  XORCY   blk000001b3 (
    .CI(sig000000aa),
    .LI(sig000000c3),
    .O(sig000000dc)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk000001b4 (
    .I0(sig00000208),
    .I1(sig000001f0),
    .O(sig000000c4)
  );
  MUXCY   blk000001b5 (
    .CI(sig000000ab),
    .DI(sig00000208),
    .S(sig000000c4),
    .O(sig000000ac)
  );
  XORCY   blk000001b6 (
    .CI(sig000000ab),
    .LI(sig000000c4),
    .O(sig000000dd)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk000001b7 (
    .I0(sig00000209),
    .I1(sig000001f1),
    .O(sig000000c5)
  );
  MUXCY   blk000001b8 (
    .CI(sig000000ac),
    .DI(sig00000209),
    .S(sig000000c5),
    .O(sig000000ad)
  );
  XORCY   blk000001b9 (
    .CI(sig000000ac),
    .LI(sig000000c5),
    .O(sig000000de)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk000001ba (
    .I0(sig0000020a),
    .I1(sig000001f2),
    .O(sig000000c6)
  );
  MUXCY   blk000001bb (
    .CI(sig000000ad),
    .DI(sig0000020a),
    .S(sig000000c6),
    .O(sig000000ae)
  );
  XORCY   blk000001bc (
    .CI(sig000000ad),
    .LI(sig000000c6),
    .O(sig000000df)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk000001bd (
    .I0(sig00000001),
    .I1(sig00000001),
    .O(sig000000c7)
  );
  XORCY   blk000001be (
    .CI(sig000000ae),
    .LI(sig000000c7),
    .O(sig000000e0)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000001bf (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig000000e0),
    .Q(sig000001b8)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000001c0 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig000000df),
    .Q(sig000001b7)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000001c1 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig000000de),
    .Q(sig000001b6)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000001c2 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig000000dd),
    .Q(sig000001b5)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000001c3 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig000000dc),
    .Q(sig000001b4)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000001c4 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig000000da),
    .Q(sig000001b2)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000001c5 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig000000d9),
    .Q(sig000001b1)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000001c6 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig000000d8),
    .Q(sig000001b0)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000001c7 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig000000d7),
    .Q(sig000001af)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000001c8 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig000000d6),
    .Q(sig000001ae)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000001c9 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig000000d5),
    .Q(sig000001ad)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000001ca (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig000000d4),
    .Q(sig000001ac)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000001cb (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig000000d3),
    .Q(sig000001ab)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000001cc (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig000000d2),
    .Q(sig000001aa)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000001cd (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig000000d1),
    .Q(sig000001a9)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000001ce (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig000000e8),
    .Q(sig000001c0)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000001cf (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig000000e7),
    .Q(sig000001bf)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000001d0 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig000000e6),
    .Q(sig000001be)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000001d1 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig000000e5),
    .Q(sig000001bd)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000001d2 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig000000e4),
    .Q(sig000001bc)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000001d3 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig000000e3),
    .Q(sig000001bb)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000001d4 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig000000e2),
    .Q(sig000001ba)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000001d5 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig000000e1),
    .Q(sig000001b9)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000001d6 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig000000db),
    .Q(sig000001b3)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000001d7 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig000000d0),
    .Q(sig000001a8)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000001d8 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000227),
    .Q(sig00000228)
  );
  MUXCY   blk000001d9 (
    .CI(NlwRenamedSig_OI_operation_rfd),
    .DI(sig00000001),
    .S(sig00000229),
    .O(sig00000221)
  );
  MUXCY   blk000001da (
    .CI(sig00000221),
    .DI(sig00000001),
    .S(sig0000022a),
    .O(sig00000222)
  );
  MUXCY   blk000001db (
    .CI(sig00000222),
    .DI(sig00000001),
    .S(sig0000022b),
    .O(sig00000223)
  );
  MUXCY   blk000001dc (
    .CI(sig00000223),
    .DI(sig00000001),
    .S(sig0000022c),
    .O(sig00000224)
  );
  MUXCY   blk000001dd (
    .CI(sig00000224),
    .DI(sig00000001),
    .S(sig0000022d),
    .O(sig00000225)
  );
  MUXCY   blk000001de (
    .CI(sig00000225),
    .DI(sig00000001),
    .S(sig0000022e),
    .O(sig00000226)
  );
  XORCY   blk000001df (
    .CI(sig00000226),
    .LI(NlwRenamedSig_OI_operation_rfd),
    .O(sig00000227)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  blk000001e0 (
    .I0(sig00000236),
    .I1(sig00000237),
    .I2(sig00000238),
    .I3(sig00000239),
    .O(sig0000022d)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  blk000001e1 (
    .I0(sig00000232),
    .I1(sig00000233),
    .I2(sig00000234),
    .I3(sig00000235),
    .O(sig0000022c)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  blk000001e2 (
    .I0(sig0000025d),
    .I1(sig0000025e),
    .I2(sig00000230),
    .I3(sig00000231),
    .O(sig0000022b)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  blk000001e3 (
    .I0(sig00000259),
    .I1(sig0000025a),
    .I2(sig0000025b),
    .I3(sig0000025c),
    .O(sig0000022a)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  blk000001e4 (
    .I0(sig0000022f),
    .I1(sig0000023a),
    .I2(sig00000245),
    .I3(sig00000250),
    .O(sig00000229)
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  blk000001e5 (
    .I0(sig0000023b),
    .I1(sig0000023c),
    .O(sig0000022e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000001e6 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig0000022f),
    .Q(NLW_blk000001e6_Q_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000001e7 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig0000023a),
    .Q(NLW_blk000001e7_Q_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000001e8 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000245),
    .Q(NLW_blk000001e8_Q_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000001e9 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000250),
    .Q(NLW_blk000001e9_Q_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000001ea (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000259),
    .Q(NLW_blk000001ea_Q_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000001eb (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig0000025a),
    .Q(NLW_blk000001eb_Q_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000001ec (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig0000025b),
    .Q(NLW_blk000001ec_Q_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000001ed (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig0000025c),
    .Q(NLW_blk000001ed_Q_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000001ee (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig0000025d),
    .Q(NLW_blk000001ee_Q_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000001ef (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig0000025e),
    .Q(NLW_blk000001ef_Q_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000001f0 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000230),
    .Q(NLW_blk000001f0_Q_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000001f1 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000231),
    .Q(NLW_blk000001f1_Q_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000001f2 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000232),
    .Q(NLW_blk000001f2_Q_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000001f3 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000233),
    .Q(NLW_blk000001f3_Q_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000001f4 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000234),
    .Q(NLW_blk000001f4_Q_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000001f5 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000235),
    .Q(NLW_blk000001f5_Q_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000001f6 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000236),
    .Q(NLW_blk000001f6_Q_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000001f7 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000237),
    .Q(NLW_blk000001f7_Q_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000001f8 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000238),
    .Q(NLW_blk000001f8_Q_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000001f9 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000239),
    .Q(NLW_blk000001f9_Q_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000001fa (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig0000023b),
    .Q(NLW_blk000001fa_Q_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000001fb (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig0000023c),
    .Q(NLW_blk000001fb_Q_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000001fc (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig0000023d),
    .Q(sig000002e5)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000001fd (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig0000023e),
    .Q(sig000002f0)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000001fe (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig0000023f),
    .Q(sig000002f7)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk000001ff (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000240),
    .Q(sig000002f8)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000200 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000241),
    .Q(sig000002f9)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000201 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000242),
    .Q(sig000002fa)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000202 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000243),
    .Q(sig000002fb)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000203 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000244),
    .Q(sig000002fc)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000204 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000246),
    .Q(sig000002fd)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000205 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000247),
    .Q(sig000002fe)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000206 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000248),
    .Q(sig000002e6)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000207 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000249),
    .Q(sig000002e7)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000208 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig0000024a),
    .Q(sig000002e8)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000209 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig0000024b),
    .Q(sig000002e9)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000020a (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig0000024c),
    .Q(sig000002ea)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000020b (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig0000024d),
    .Q(sig000002eb)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000020c (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig0000024e),
    .Q(sig000002ec)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000020d (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig0000024f),
    .Q(sig000002ed)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000020e (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000251),
    .Q(sig000002ee)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000020f (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000252),
    .Q(sig000002ef)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000210 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000253),
    .Q(sig000002f1)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000211 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000254),
    .Q(sig000002f2)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000212 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000255),
    .Q(sig000002f3)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000213 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000256),
    .Q(sig000002f4)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000214 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000257),
    .Q(sig000002f5)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000215 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000258),
    .Q(sig000002f6)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000216 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000213),
    .Q(sig00000178)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000217 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000218),
    .Q(sig00000183)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000218 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000219),
    .Q(sig0000018e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000219 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig0000021a),
    .Q(sig00000199)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000021a (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig0000021b),
    .Q(sig000001a2)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000021b (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig0000021c),
    .Q(sig000001a3)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000021c (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig0000021d),
    .Q(sig000001a4)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000021d (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig0000021e),
    .Q(sig000001a5)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000021e (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig0000021f),
    .Q(sig000001a6)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000021f (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000220),
    .Q(sig000001a7)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000220 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000214),
    .Q(sig00000179)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000221 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000215),
    .Q(sig0000017a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000222 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000216),
    .Q(sig0000017b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000223 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig00000217),
    .Q(sig0000017c)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000224 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig000001c1),
    .Q(sig0000017d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000225 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig000001cc),
    .Q(sig0000017e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000226 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig000001d7),
    .Q(sig0000017f)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000227 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig000001dc),
    .Q(sig00000180)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000228 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig000001dd),
    .Q(sig00000181)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000229 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig000001de),
    .Q(sig00000182)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000022a (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig000001df),
    .Q(sig00000184)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000022b (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig000001e0),
    .Q(sig00000185)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000022c (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig000001e1),
    .Q(sig00000186)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000022d (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig000001e2),
    .Q(sig00000187)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000022e (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig000001c2),
    .Q(sig00000188)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000022f (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig000001c3),
    .Q(sig00000189)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000230 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig000001c4),
    .Q(sig0000018a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000231 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig000001c5),
    .Q(sig0000018b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000232 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig000001c6),
    .Q(sig0000018c)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000233 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig000001c7),
    .Q(sig0000018d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000234 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig000001c8),
    .Q(sig0000018f)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000235 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig000001c9),
    .Q(sig00000190)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000236 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig000001ca),
    .Q(sig00000191)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000237 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig000001cb),
    .Q(sig00000192)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000238 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig000001cd),
    .Q(sig00000193)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000239 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig000001ce),
    .Q(sig00000194)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000023a (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig000001cf),
    .Q(sig00000195)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000023b (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig000001d0),
    .Q(sig00000196)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000023c (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig000001d1),
    .Q(sig00000197)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000023d (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig000001d2),
    .Q(sig00000198)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000023e (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig000001d3),
    .Q(sig0000019a)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk0000023f (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig000001d4),
    .Q(sig0000019b)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000240 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig000001d5),
    .Q(sig0000019c)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000241 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig000001d6),
    .Q(sig0000019d)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000242 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig000001d8),
    .Q(sig0000019e)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000243 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig000001d9),
    .Q(sig0000019f)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000244 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig000001da),
    .Q(sig000001a0)
  );
  FDE #(
    .INIT ( 1'b0 ))
  blk00000245 (
    .C(clk),
    .CE(NlwRenamedSig_OI_operation_rfd),
    .D(sig000001db),
    .Q(sig000001a1)
  );
  FDRS #(
    .INIT ( 1'b0 ))
  blk00000246 (
    .C(clk),
    .D(sig000002dd),
    .R(sig00000077),
    .S(sig00000076),
    .Q(\U0/op_inst/FLT_PT_OP/MULT.OP/OP/exp_op [0])
  );
  FDRS #(
    .INIT ( 1'b0 ))
  blk00000247 (
    .C(clk),
    .D(sig00000278),
    .R(sig0000007a),
    .S(sig00000001),
    .Q(\U0/op_inst/FLT_PT_OP/MULT.OP/OP/mant_op [10])
  );
  FDRS #(
    .INIT ( 1'b0 ))
  blk00000248 (
    .C(clk),
    .D(sig00000279),
    .R(sig0000007a),
    .S(sig00000001),
    .Q(\U0/op_inst/FLT_PT_OP/MULT.OP/OP/mant_op [11])
  );
  FDRS #(
    .INIT ( 1'b0 ))
  blk00000249 (
    .C(clk),
    .D(sig000002de),
    .R(sig00000077),
    .S(sig00000076),
    .Q(\U0/op_inst/FLT_PT_OP/MULT.OP/OP/exp_op [1])
  );
  FDRS #(
    .INIT ( 1'b0 ))
  blk0000024a (
    .C(clk),
    .D(sig00000299),
    .R(sig0000007a),
    .S(sig00000001),
    .Q(\U0/op_inst/FLT_PT_OP/MULT.OP/OP/mant_op [12])
  );
  FDRS #(
    .INIT ( 1'b0 ))
  blk0000024b (
    .C(clk),
    .D(sig000002df),
    .R(sig00000077),
    .S(sig00000076),
    .Q(\U0/op_inst/FLT_PT_OP/MULT.OP/OP/exp_op [2])
  );
  FDRS #(
    .INIT ( 1'b0 ))
  blk0000024c (
    .C(clk),
    .D(sig0000029a),
    .R(sig0000007a),
    .S(sig00000001),
    .Q(\U0/op_inst/FLT_PT_OP/MULT.OP/OP/mant_op [13])
  );
  FDRS #(
    .INIT ( 1'b0 ))
  blk0000024d (
    .C(clk),
    .D(sig000002e1),
    .R(sig00000077),
    .S(sig00000076),
    .Q(\U0/op_inst/FLT_PT_OP/MULT.OP/OP/exp_op [4])
  );
  FDRS #(
    .INIT ( 1'b0 ))
  blk0000024e (
    .C(clk),
    .D(sig000002e0),
    .R(sig00000077),
    .S(sig00000076),
    .Q(\U0/op_inst/FLT_PT_OP/MULT.OP/OP/exp_op [3])
  );
  FDRS #(
    .INIT ( 1'b0 ))
  blk0000024f (
    .C(clk),
    .D(sig0000029c),
    .R(sig0000007a),
    .S(sig00000001),
    .Q(\U0/op_inst/FLT_PT_OP/MULT.OP/OP/mant_op [14])
  );
  FDRS #(
    .INIT ( 1'b0 ))
  blk00000250 (
    .C(clk),
    .D(sig000002a2),
    .R(sig0000007a),
    .S(sig00000001),
    .Q(\U0/op_inst/FLT_PT_OP/MULT.OP/OP/mant_op [20])
  );
  FDRS #(
    .INIT ( 1'b0 ))
  blk00000251 (
    .C(clk),
    .D(sig0000029d),
    .R(sig0000007a),
    .S(sig00000001),
    .Q(\U0/op_inst/FLT_PT_OP/MULT.OP/OP/mant_op [15])
  );
  FDRS #(
    .INIT ( 1'b0 ))
  blk00000252 (
    .C(clk),
    .D(sig000002e2),
    .R(sig00000077),
    .S(sig00000076),
    .Q(\U0/op_inst/FLT_PT_OP/MULT.OP/OP/exp_op [5])
  );
  FDRS #(
    .INIT ( 1'b0 ))
  blk00000253 (
    .C(clk),
    .D(sig000002a3),
    .R(sig0000007a),
    .S(sig00000001),
    .Q(\U0/op_inst/FLT_PT_OP/MULT.OP/OP/mant_op [21])
  );
  FDRS #(
    .INIT ( 1'b0 ))
  blk00000254 (
    .C(clk),
    .D(sig0000029e),
    .R(sig0000007a),
    .S(sig00000001),
    .Q(\U0/op_inst/FLT_PT_OP/MULT.OP/OP/mant_op [16])
  );
  FDRS #(
    .INIT ( 1'b0 ))
  blk00000255 (
    .C(clk),
    .D(sig0000029f),
    .R(sig0000007a),
    .S(sig00000001),
    .Q(\U0/op_inst/FLT_PT_OP/MULT.OP/OP/mant_op [17])
  );
  FDRS #(
    .INIT ( 1'b0 ))
  blk00000256 (
    .C(clk),
    .D(sig000002e3),
    .R(sig00000077),
    .S(sig00000076),
    .Q(\U0/op_inst/FLT_PT_OP/MULT.OP/OP/exp_op [6])
  );
  FDRS #(
    .INIT ( 1'b0 ))
  blk00000257 (
    .C(clk),
    .D(sig0000029b),
    .R(sig00000079),
    .S(sig00000078),
    .Q(\U0/op_inst/FLT_PT_OP/MULT.OP/OP/mant_op [22])
  );
  FDRS #(
    .INIT ( 1'b0 ))
  blk00000258 (
    .C(clk),
    .D(sig000002e4),
    .R(sig00000077),
    .S(sig00000076),
    .Q(\U0/op_inst/FLT_PT_OP/MULT.OP/OP/exp_op [7])
  );
  FDRS #(
    .INIT ( 1'b0 ))
  blk00000259 (
    .C(clk),
    .D(sig000002a0),
    .R(sig0000007a),
    .S(sig00000001),
    .Q(\U0/op_inst/FLT_PT_OP/MULT.OP/OP/mant_op [18])
  );
  FDRS #(
    .INIT ( 1'b0 ))
  blk0000025a (
    .C(clk),
    .D(sig000002a1),
    .R(sig0000007a),
    .S(sig00000001),
    .Q(\U0/op_inst/FLT_PT_OP/MULT.OP/OP/mant_op [19])
  );
  FDRS #(
    .INIT ( 1'b0 ))
  blk0000025b (
    .C(clk),
    .D(sig00000276),
    .R(sig0000007a),
    .S(sig00000001),
    .Q(\U0/op_inst/FLT_PT_OP/MULT.OP/OP/mant_op [0])
  );
  FDRS #(
    .INIT ( 1'b0 ))
  blk0000025c (
    .C(clk),
    .D(sig00000277),
    .R(sig0000007a),
    .S(sig00000001),
    .Q(\U0/op_inst/FLT_PT_OP/MULT.OP/OP/mant_op [1])
  );
  FDRS #(
    .INIT ( 1'b0 ))
  blk0000025d (
    .C(clk),
    .D(sig0000027a),
    .R(sig0000007a),
    .S(sig00000001),
    .Q(\U0/op_inst/FLT_PT_OP/MULT.OP/OP/mant_op [2])
  );
  FDRS #(
    .INIT ( 1'b0 ))
  blk0000025e (
    .C(clk),
    .D(sig0000027b),
    .R(sig0000007a),
    .S(sig00000001),
    .Q(\U0/op_inst/FLT_PT_OP/MULT.OP/OP/mant_op [3])
  );
  FDRS #(
    .INIT ( 1'b0 ))
  blk0000025f (
    .C(clk),
    .D(sig0000027c),
    .R(sig0000007a),
    .S(sig00000001),
    .Q(\U0/op_inst/FLT_PT_OP/MULT.OP/OP/mant_op [4])
  );
  FDRS #(
    .INIT ( 1'b0 ))
  blk00000260 (
    .C(clk),
    .D(sig0000027d),
    .R(sig0000007a),
    .S(sig00000001),
    .Q(\U0/op_inst/FLT_PT_OP/MULT.OP/OP/mant_op [5])
  );
  FDRS #(
    .INIT ( 1'b0 ))
  blk00000261 (
    .C(clk),
    .D(sig0000027e),
    .R(sig0000007a),
    .S(sig00000001),
    .Q(\U0/op_inst/FLT_PT_OP/MULT.OP/OP/mant_op [6])
  );
  FDRS #(
    .INIT ( 1'b0 ))
  blk00000262 (
    .C(clk),
    .D(sig0000027f),
    .R(sig0000007a),
    .S(sig00000001),
    .Q(\U0/op_inst/FLT_PT_OP/MULT.OP/OP/mant_op [7])
  );
  FDRS #(
    .INIT ( 1'b0 ))
  blk00000263 (
    .C(clk),
    .D(sig00000280),
    .R(sig0000007a),
    .S(sig00000001),
    .Q(\U0/op_inst/FLT_PT_OP/MULT.OP/OP/mant_op [8])
  );
  FDRS #(
    .INIT ( 1'b0 ))
  blk00000264 (
    .C(clk),
    .D(sig00000281),
    .R(sig0000007a),
    .S(sig00000001),
    .Q(\U0/op_inst/FLT_PT_OP/MULT.OP/OP/mant_op [9])
  );
  FDRS #(
    .INIT ( 1'b0 ))
  blk00000265 (
    .C(clk),
    .D(sig0000006d),
    .R(sig00000001),
    .S(sig00000001),
    .Q(\U0/op_inst/FLT_PT_OP/MULT.OP/OP/sign_op )
  );
  MULT18X18SIO #(
    .AREG ( 0 ),
    .BREG ( 0 ),
    .PREG ( 1 ),
    .B_INPUT ( "DIRECT" ))
  blk00000266 (
    .CEA(NlwRenamedSig_OI_operation_rfd),
    .CEB(NlwRenamedSig_OI_operation_rfd),
    .CEP(NlwRenamedSig_OI_operation_rfd),
    .CLK(clk),
    .RSTA(sig00000001),
    .RSTB(sig00000001),
    .RSTP(sig00000001),
    .A({sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001
, a[6], a[5], a[4], a[3], a[2], a[1], a[0]}),
    .B({sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001
, b[6], b[5], b[4], b[3], b[2], b[1], b[0]}),
    .BCIN({\NLW_blk00000266_BCIN<17>_UNCONNECTED , \NLW_blk00000266_BCIN<16>_UNCONNECTED , \NLW_blk00000266_BCIN<15>_UNCONNECTED , 
\NLW_blk00000266_BCIN<14>_UNCONNECTED , \NLW_blk00000266_BCIN<13>_UNCONNECTED , \NLW_blk00000266_BCIN<12>_UNCONNECTED , 
\NLW_blk00000266_BCIN<11>_UNCONNECTED , \NLW_blk00000266_BCIN<10>_UNCONNECTED , \NLW_blk00000266_BCIN<9>_UNCONNECTED , 
\NLW_blk00000266_BCIN<8>_UNCONNECTED , \NLW_blk00000266_BCIN<7>_UNCONNECTED , \NLW_blk00000266_BCIN<6>_UNCONNECTED , 
\NLW_blk00000266_BCIN<5>_UNCONNECTED , \NLW_blk00000266_BCIN<4>_UNCONNECTED , \NLW_blk00000266_BCIN<3>_UNCONNECTED , 
\NLW_blk00000266_BCIN<2>_UNCONNECTED , \NLW_blk00000266_BCIN<1>_UNCONNECTED , \NLW_blk00000266_BCIN<0>_UNCONNECTED }),
    .P({\NLW_blk00000266_P<35>_UNCONNECTED , \NLW_blk00000266_P<34>_UNCONNECTED , \NLW_blk00000266_P<33>_UNCONNECTED , 
\NLW_blk00000266_P<32>_UNCONNECTED , \NLW_blk00000266_P<31>_UNCONNECTED , \NLW_blk00000266_P<30>_UNCONNECTED , \NLW_blk00000266_P<29>_UNCONNECTED , 
\NLW_blk00000266_P<28>_UNCONNECTED , \NLW_blk00000266_P<27>_UNCONNECTED , \NLW_blk00000266_P<26>_UNCONNECTED , \NLW_blk00000266_P<25>_UNCONNECTED , 
\NLW_blk00000266_P<24>_UNCONNECTED , \NLW_blk00000266_P<23>_UNCONNECTED , \NLW_blk00000266_P<22>_UNCONNECTED , \NLW_blk00000266_P<21>_UNCONNECTED , 
\NLW_blk00000266_P<20>_UNCONNECTED , \NLW_blk00000266_P<19>_UNCONNECTED , \NLW_blk00000266_P<18>_UNCONNECTED , \NLW_blk00000266_P<17>_UNCONNECTED , 
\NLW_blk00000266_P<16>_UNCONNECTED , \NLW_blk00000266_P<15>_UNCONNECTED , \NLW_blk00000266_P<14>_UNCONNECTED , sig00000217, sig00000216, sig00000215, 
sig00000214, sig00000220, sig0000021f, sig0000021e, sig0000021d, sig0000021c, sig0000021b, sig0000021a, sig00000219, sig00000218, sig00000213}),
    .BCOUT({\NLW_blk00000266_BCOUT<17>_UNCONNECTED , \NLW_blk00000266_BCOUT<16>_UNCONNECTED , \NLW_blk00000266_BCOUT<15>_UNCONNECTED , 
\NLW_blk00000266_BCOUT<14>_UNCONNECTED , \NLW_blk00000266_BCOUT<13>_UNCONNECTED , \NLW_blk00000266_BCOUT<12>_UNCONNECTED , 
\NLW_blk00000266_BCOUT<11>_UNCONNECTED , \NLW_blk00000266_BCOUT<10>_UNCONNECTED , \NLW_blk00000266_BCOUT<9>_UNCONNECTED , 
\NLW_blk00000266_BCOUT<8>_UNCONNECTED , \NLW_blk00000266_BCOUT<7>_UNCONNECTED , \NLW_blk00000266_BCOUT<6>_UNCONNECTED , 
\NLW_blk00000266_BCOUT<5>_UNCONNECTED , \NLW_blk00000266_BCOUT<4>_UNCONNECTED , \NLW_blk00000266_BCOUT<3>_UNCONNECTED , 
\NLW_blk00000266_BCOUT<2>_UNCONNECTED , \NLW_blk00000266_BCOUT<1>_UNCONNECTED , \NLW_blk00000266_BCOUT<0>_UNCONNECTED })
  );
  MULT18X18SIO #(
    .AREG ( 0 ),
    .BREG ( 0 ),
    .PREG ( 1 ),
    .B_INPUT ( "DIRECT" ))
  blk00000267 (
    .CEA(NlwRenamedSig_OI_operation_rfd),
    .CEB(NlwRenamedSig_OI_operation_rfd),
    .CEP(NlwRenamedSig_OI_operation_rfd),
    .CLK(clk),
    .RSTA(sig00000001),
    .RSTB(sig00000001),
    .RSTP(sig00000001),
    .A({sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001
, a[6], a[5], a[4], a[3], a[2], a[1], a[0]}),
    .B({sig00000001, NlwRenamedSig_OI_operation_rfd, b[22], b[21], b[20], b[19], b[18], b[17], b[16], b[15], b[14], b[13], b[12], b[11], b[10], b[9], 
b[8], b[7]}),
    .BCIN({\NLW_blk00000267_BCIN<17>_UNCONNECTED , \NLW_blk00000267_BCIN<16>_UNCONNECTED , \NLW_blk00000267_BCIN<15>_UNCONNECTED , 
\NLW_blk00000267_BCIN<14>_UNCONNECTED , \NLW_blk00000267_BCIN<13>_UNCONNECTED , \NLW_blk00000267_BCIN<12>_UNCONNECTED , 
\NLW_blk00000267_BCIN<11>_UNCONNECTED , \NLW_blk00000267_BCIN<10>_UNCONNECTED , \NLW_blk00000267_BCIN<9>_UNCONNECTED , 
\NLW_blk00000267_BCIN<8>_UNCONNECTED , \NLW_blk00000267_BCIN<7>_UNCONNECTED , \NLW_blk00000267_BCIN<6>_UNCONNECTED , 
\NLW_blk00000267_BCIN<5>_UNCONNECTED , \NLW_blk00000267_BCIN<4>_UNCONNECTED , \NLW_blk00000267_BCIN<3>_UNCONNECTED , 
\NLW_blk00000267_BCIN<2>_UNCONNECTED , \NLW_blk00000267_BCIN<1>_UNCONNECTED , \NLW_blk00000267_BCIN<0>_UNCONNECTED }),
    .P({\NLW_blk00000267_P<35>_UNCONNECTED , \NLW_blk00000267_P<34>_UNCONNECTED , \NLW_blk00000267_P<33>_UNCONNECTED , 
\NLW_blk00000267_P<32>_UNCONNECTED , \NLW_blk00000267_P<31>_UNCONNECTED , \NLW_blk00000267_P<30>_UNCONNECTED , \NLW_blk00000267_P<29>_UNCONNECTED , 
\NLW_blk00000267_P<28>_UNCONNECTED , \NLW_blk00000267_P<27>_UNCONNECTED , \NLW_blk00000267_P<26>_UNCONNECTED , \NLW_blk00000267_P<25>_UNCONNECTED , 
\NLW_blk00000267_P<24>_UNCONNECTED , sig0000020a, sig00000209, sig00000208, sig00000207, sig00000205, sig00000204, sig00000203, sig00000202, 
sig00000201, sig00000200, sig000001ff, sig000001fe, sig000001fd, sig000001fc, sig00000212, sig00000211, sig00000210, sig0000020f, sig0000020e, 
sig0000020d, sig0000020c, sig0000020b, sig00000206, sig000001fb}),
    .BCOUT({\NLW_blk00000267_BCOUT<17>_UNCONNECTED , \NLW_blk00000267_BCOUT<16>_UNCONNECTED , \NLW_blk00000267_BCOUT<15>_UNCONNECTED , 
\NLW_blk00000267_BCOUT<14>_UNCONNECTED , \NLW_blk00000267_BCOUT<13>_UNCONNECTED , \NLW_blk00000267_BCOUT<12>_UNCONNECTED , 
\NLW_blk00000267_BCOUT<11>_UNCONNECTED , \NLW_blk00000267_BCOUT<10>_UNCONNECTED , \NLW_blk00000267_BCOUT<9>_UNCONNECTED , 
\NLW_blk00000267_BCOUT<8>_UNCONNECTED , \NLW_blk00000267_BCOUT<7>_UNCONNECTED , \NLW_blk00000267_BCOUT<6>_UNCONNECTED , 
\NLW_blk00000267_BCOUT<5>_UNCONNECTED , \NLW_blk00000267_BCOUT<4>_UNCONNECTED , \NLW_blk00000267_BCOUT<3>_UNCONNECTED , 
\NLW_blk00000267_BCOUT<2>_UNCONNECTED , \NLW_blk00000267_BCOUT<1>_UNCONNECTED , \NLW_blk00000267_BCOUT<0>_UNCONNECTED })
  );
  MULT18X18SIO #(
    .AREG ( 0 ),
    .BREG ( 0 ),
    .PREG ( 1 ),
    .B_INPUT ( "DIRECT" ))
  blk00000268 (
    .CEA(NlwRenamedSig_OI_operation_rfd),
    .CEB(NlwRenamedSig_OI_operation_rfd),
    .CEP(NlwRenamedSig_OI_operation_rfd),
    .CLK(clk),
    .RSTA(sig00000001),
    .RSTB(sig00000001),
    .RSTP(sig00000001),
    .A({sig00000001, NlwRenamedSig_OI_operation_rfd, a[22], a[21], a[20], a[19], a[18], a[17], a[16], a[15], a[14], a[13], a[12], a[11], a[10], a[9], 
a[8], a[7]}),
    .B({sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001, sig00000001
, b[6], b[5], b[4], b[3], b[2], b[1], b[0]}),
    .BCIN({\NLW_blk00000268_BCIN<17>_UNCONNECTED , \NLW_blk00000268_BCIN<16>_UNCONNECTED , \NLW_blk00000268_BCIN<15>_UNCONNECTED , 
\NLW_blk00000268_BCIN<14>_UNCONNECTED , \NLW_blk00000268_BCIN<13>_UNCONNECTED , \NLW_blk00000268_BCIN<12>_UNCONNECTED , 
\NLW_blk00000268_BCIN<11>_UNCONNECTED , \NLW_blk00000268_BCIN<10>_UNCONNECTED , \NLW_blk00000268_BCIN<9>_UNCONNECTED , 
\NLW_blk00000268_BCIN<8>_UNCONNECTED , \NLW_blk00000268_BCIN<7>_UNCONNECTED , \NLW_blk00000268_BCIN<6>_UNCONNECTED , 
\NLW_blk00000268_BCIN<5>_UNCONNECTED , \NLW_blk00000268_BCIN<4>_UNCONNECTED , \NLW_blk00000268_BCIN<3>_UNCONNECTED , 
\NLW_blk00000268_BCIN<2>_UNCONNECTED , \NLW_blk00000268_BCIN<1>_UNCONNECTED , \NLW_blk00000268_BCIN<0>_UNCONNECTED }),
    .P({\NLW_blk00000268_P<35>_UNCONNECTED , \NLW_blk00000268_P<34>_UNCONNECTED , \NLW_blk00000268_P<33>_UNCONNECTED , 
\NLW_blk00000268_P<32>_UNCONNECTED , \NLW_blk00000268_P<31>_UNCONNECTED , \NLW_blk00000268_P<30>_UNCONNECTED , \NLW_blk00000268_P<29>_UNCONNECTED , 
\NLW_blk00000268_P<28>_UNCONNECTED , \NLW_blk00000268_P<27>_UNCONNECTED , \NLW_blk00000268_P<26>_UNCONNECTED , \NLW_blk00000268_P<25>_UNCONNECTED , 
\NLW_blk00000268_P<24>_UNCONNECTED , sig000001f2, sig000001f1, sig000001f0, sig000001ef, sig000001ed, sig000001ec, sig000001eb, sig000001ea, 
sig000001e9, sig000001e8, sig000001e7, sig000001e6, sig000001e5, sig000001e4, sig000001fa, sig000001f9, sig000001f8, sig000001f7, sig000001f6, 
sig000001f5, sig000001f4, sig000001f3, sig000001ee, sig000001e3}),
    .BCOUT({\NLW_blk00000268_BCOUT<17>_UNCONNECTED , \NLW_blk00000268_BCOUT<16>_UNCONNECTED , \NLW_blk00000268_BCOUT<15>_UNCONNECTED , 
\NLW_blk00000268_BCOUT<14>_UNCONNECTED , \NLW_blk00000268_BCOUT<13>_UNCONNECTED , \NLW_blk00000268_BCOUT<12>_UNCONNECTED , 
\NLW_blk00000268_BCOUT<11>_UNCONNECTED , \NLW_blk00000268_BCOUT<10>_UNCONNECTED , \NLW_blk00000268_BCOUT<9>_UNCONNECTED , 
\NLW_blk00000268_BCOUT<8>_UNCONNECTED , \NLW_blk00000268_BCOUT<7>_UNCONNECTED , \NLW_blk00000268_BCOUT<6>_UNCONNECTED , 
\NLW_blk00000268_BCOUT<5>_UNCONNECTED , \NLW_blk00000268_BCOUT<4>_UNCONNECTED , \NLW_blk00000268_BCOUT<3>_UNCONNECTED , 
\NLW_blk00000268_BCOUT<2>_UNCONNECTED , \NLW_blk00000268_BCOUT<1>_UNCONNECTED , \NLW_blk00000268_BCOUT<0>_UNCONNECTED })
  );
  MULT18X18SIO #(
    .AREG ( 0 ),
    .BREG ( 0 ),
    .PREG ( 1 ),
    .B_INPUT ( "DIRECT" ))
  blk00000269 (
    .CEA(NlwRenamedSig_OI_operation_rfd),
    .CEB(NlwRenamedSig_OI_operation_rfd),
    .CEP(NlwRenamedSig_OI_operation_rfd),
    .CLK(clk),
    .RSTA(sig00000001),
    .RSTB(sig00000001),
    .RSTP(sig00000001),
    .A({sig00000001, NlwRenamedSig_OI_operation_rfd, a[22], a[21], a[20], a[19], a[18], a[17], a[16], a[15], a[14], a[13], a[12], a[11], a[10], a[9], 
a[8], a[7]}),
    .B({sig00000001, NlwRenamedSig_OI_operation_rfd, b[22], b[21], b[20], b[19], b[18], b[17], b[16], b[15], b[14], b[13], b[12], b[11], b[10], b[9], 
b[8], b[7]}),
    .BCIN({\NLW_blk00000269_BCIN<17>_UNCONNECTED , \NLW_blk00000269_BCIN<16>_UNCONNECTED , \NLW_blk00000269_BCIN<15>_UNCONNECTED , 
\NLW_blk00000269_BCIN<14>_UNCONNECTED , \NLW_blk00000269_BCIN<13>_UNCONNECTED , \NLW_blk00000269_BCIN<12>_UNCONNECTED , 
\NLW_blk00000269_BCIN<11>_UNCONNECTED , \NLW_blk00000269_BCIN<10>_UNCONNECTED , \NLW_blk00000269_BCIN<9>_UNCONNECTED , 
\NLW_blk00000269_BCIN<8>_UNCONNECTED , \NLW_blk00000269_BCIN<7>_UNCONNECTED , \NLW_blk00000269_BCIN<6>_UNCONNECTED , 
\NLW_blk00000269_BCIN<5>_UNCONNECTED , \NLW_blk00000269_BCIN<4>_UNCONNECTED , \NLW_blk00000269_BCIN<3>_UNCONNECTED , 
\NLW_blk00000269_BCIN<2>_UNCONNECTED , \NLW_blk00000269_BCIN<1>_UNCONNECTED , \NLW_blk00000269_BCIN<0>_UNCONNECTED }),
    .P({\NLW_blk00000269_P<35>_UNCONNECTED , \NLW_blk00000269_P<34>_UNCONNECTED , sig000001db, sig000001da, sig000001d9, sig000001d8, sig000001d6, 
sig000001d5, sig000001d4, sig000001d3, sig000001d2, sig000001d1, sig000001d0, sig000001cf, sig000001ce, sig000001cd, sig000001cb, sig000001ca, 
sig000001c9, sig000001c8, sig000001c7, sig000001c6, sig000001c5, sig000001c4, sig000001c3, sig000001c2, sig000001e2, sig000001e1, sig000001e0, 
sig000001df, sig000001de, sig000001dd, sig000001dc, sig000001d7, sig000001cc, sig000001c1}),
    .BCOUT({\NLW_blk00000269_BCOUT<17>_UNCONNECTED , \NLW_blk00000269_BCOUT<16>_UNCONNECTED , \NLW_blk00000269_BCOUT<15>_UNCONNECTED , 
\NLW_blk00000269_BCOUT<14>_UNCONNECTED , \NLW_blk00000269_BCOUT<13>_UNCONNECTED , \NLW_blk00000269_BCOUT<12>_UNCONNECTED , 
\NLW_blk00000269_BCOUT<11>_UNCONNECTED , \NLW_blk00000269_BCOUT<10>_UNCONNECTED , \NLW_blk00000269_BCOUT<9>_UNCONNECTED , 
\NLW_blk00000269_BCOUT<8>_UNCONNECTED , \NLW_blk00000269_BCOUT<7>_UNCONNECTED , \NLW_blk00000269_BCOUT<6>_UNCONNECTED , 
\NLW_blk00000269_BCOUT<5>_UNCONNECTED , \NLW_blk00000269_BCOUT<4>_UNCONNECTED , \NLW_blk00000269_BCOUT<3>_UNCONNECTED , 
\NLW_blk00000269_BCOUT<2>_UNCONNECTED , \NLW_blk00000269_BCOUT<1>_UNCONNECTED , \NLW_blk00000269_BCOUT<0>_UNCONNECTED })
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk0000026a (
    .I0(b[31]),
    .I1(a[31]),
    .O(sig00000098)
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  blk0000026b (
    .I0(b[22]),
    .I1(b[21]),
    .I2(b[20]),
    .O(sig00000033)
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  blk0000026c (
    .I0(a[22]),
    .I1(a[21]),
    .I2(a[20]),
    .O(sig0000001f)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  blk0000026d (
    .I0(b[28]),
    .I1(b[27]),
    .I2(b[30]),
    .I3(b[29]),
    .O(sig00000027)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  blk0000026e (
    .I0(b[28]),
    .I1(b[27]),
    .I2(b[30]),
    .I3(b[29]),
    .O(sig00000023)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  blk0000026f (
    .I0(a[28]),
    .I1(a[27]),
    .I2(a[30]),
    .I3(a[29]),
    .O(sig00000013)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  blk00000270 (
    .I0(a[28]),
    .I1(a[27]),
    .I2(a[30]),
    .I3(a[29]),
    .O(sig0000000f)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  blk00000271 (
    .I0(b[17]),
    .I1(b[16]),
    .I2(b[19]),
    .I3(b[18]),
    .O(sig00000032)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  blk00000272 (
    .I0(b[24]),
    .I1(b[23]),
    .I2(b[26]),
    .I3(b[25]),
    .O(sig00000026)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  blk00000273 (
    .I0(b[24]),
    .I1(b[23]),
    .I2(b[26]),
    .I3(b[25]),
    .O(sig00000022)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  blk00000274 (
    .I0(a[17]),
    .I1(a[16]),
    .I2(a[19]),
    .I3(a[18]),
    .O(sig0000001e)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  blk00000275 (
    .I0(a[24]),
    .I1(a[23]),
    .I2(a[26]),
    .I3(a[25]),
    .O(sig00000012)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  blk00000276 (
    .I0(a[24]),
    .I1(a[23]),
    .I2(a[26]),
    .I3(a[25]),
    .O(sig0000000e)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  blk00000277 (
    .I0(b[13]),
    .I1(b[12]),
    .I2(b[15]),
    .I3(b[14]),
    .O(sig00000031)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  blk00000278 (
    .I0(a[13]),
    .I1(a[12]),
    .I2(a[15]),
    .I3(a[14]),
    .O(sig0000001d)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  blk00000279 (
    .I0(sig00000080),
    .I1(sig0000008e),
    .O(sig00000084)
  );
  LUT4 #(
    .INIT ( 16'h22F2 ))
  blk0000027a (
    .I0(sig0000007f),
    .I1(sig00000081),
    .I2(sig0000008d),
    .I3(sig0000008f),
    .O(sig00000083)
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  blk0000027b (
    .I0(sig0000007f),
    .I1(sig00000081),
    .I2(sig0000008d),
    .I3(sig0000008f),
    .O(sig00000082)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  blk0000027c (
    .I0(b[9]),
    .I1(b[8]),
    .I2(b[11]),
    .I3(b[10]),
    .O(sig00000030)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  blk0000027d (
    .I0(a[9]),
    .I1(a[8]),
    .I2(a[11]),
    .I3(a[10]),
    .O(sig0000001c)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  blk0000027e (
    .I0(b[5]),
    .I1(b[4]),
    .I2(b[7]),
    .I3(b[6]),
    .O(sig0000002f)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  blk0000027f (
    .I0(a[5]),
    .I1(a[4]),
    .I2(a[7]),
    .I3(a[6]),
    .O(sig0000001b)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  blk00000280 (
    .I0(b[1]),
    .I1(b[0]),
    .I2(b[3]),
    .I3(b[2]),
    .O(sig0000002e)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  blk00000281 (
    .I0(a[1]),
    .I1(a[0]),
    .I2(a[3]),
    .I3(a[2]),
    .O(sig0000001a)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  blk00000282 (
    .I0(sig0000008d),
    .I1(sig00000080),
    .I2(sig0000008f),
    .O(sig00000004)
  );
  LUT4 #(
    .INIT ( 16'hEAAA ))
  blk00000283 (
    .I0(sig00000004),
    .I1(sig0000008e),
    .I2(sig0000007f),
    .I3(sig00000081),
    .O(sig00000097)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000284 (
    .I0(sig00000275),
    .I1(sig00000274),
    .O(sig000002c2)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000285 (
    .I0(b[30]),
    .I1(a[30]),
    .O(sig0000008c)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000286 (
    .I0(b[29]),
    .I1(a[29]),
    .O(sig0000008b)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000287 (
    .I0(b[28]),
    .I1(a[28]),
    .O(sig0000008a)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk00000288 (
    .I0(b[27]),
    .I1(a[27]),
    .O(sig00000089)
  );
  LUT4 #(
    .INIT ( 16'h0020 ))
  blk00000289 (
    .I0(sig0000003c),
    .I1(sig0000003b),
    .I2(sig00000096),
    .I3(sig00000034),
    .O(sig00000094)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  blk0000028a (
    .I0(sig0000003a),
    .I1(sig00000039),
    .I2(sig00000038),
    .I3(sig00000037),
    .O(sig00000095)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  blk0000028b (
    .I0(sig00000094),
    .I1(sig00000095),
    .O(sig00000091)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk0000028c (
    .I0(b[26]),
    .I1(a[26]),
    .O(sig00000088)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk0000028d (
    .I0(b[25]),
    .I1(a[25]),
    .O(sig00000087)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk0000028e (
    .I0(b[24]),
    .I1(a[24]),
    .O(sig00000086)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  blk0000028f (
    .I0(b[23]),
    .I1(a[23]),
    .O(sig00000085)
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  blk00000290 (
    .I0(sig0000003c),
    .I1(sig00000034),
    .I2(sig00000035),
    .I3(sig0000006a),
    .O(sig00000090)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  blk00000291 (
    .I0(sig00000036),
    .I1(sig00000034),
    .I2(sig0000003b),
    .I3(sig00000005),
    .O(sig0000006a)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk00000292 (
    .I0(sig000002f6),
    .I1(sig000002f4),
    .I2(sig000002f5),
    .O(sig000002d1)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk00000293 (
    .I0(sig000002f6),
    .I1(sig000002f3),
    .I2(sig000002f4),
    .O(sig000002da)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk00000294 (
    .I0(sig000002f6),
    .I1(sig000002f2),
    .I2(sig000002f3),
    .O(sig000002d9)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk00000295 (
    .I0(sig000002f6),
    .I1(sig000002f1),
    .I2(sig000002f2),
    .O(sig000002d8)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk00000296 (
    .I0(sig000002f6),
    .I1(sig000002ef),
    .I2(sig000002f1),
    .O(sig000002d7)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk00000297 (
    .I0(sig000002f6),
    .I1(sig000002ee),
    .I2(sig000002ef),
    .O(sig000002d6)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk00000298 (
    .I0(sig000002f6),
    .I1(sig000002ed),
    .I2(sig000002ee),
    .O(sig000002d5)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk00000299 (
    .I0(sig000002f6),
    .I1(sig000002ec),
    .I2(sig000002ed),
    .O(sig000002d4)
  );
  LUT4 #(
    .INIT ( 16'hABAA ))
  blk0000029a (
    .I0(sig0000007b),
    .I1(sig0000007c),
    .I2(sig0000006f),
    .I3(sig00000006),
    .O(sig0000009c)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk0000029b (
    .I0(sig000002f6),
    .I1(sig000002eb),
    .I2(sig000002ec),
    .O(sig000002d3)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk0000029c (
    .I0(sig000002f6),
    .I1(sig000002ea),
    .I2(sig000002eb),
    .O(sig000002d2)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  blk0000029d (
    .I0(sig000002f6),
    .I1(sig000002e9),
    .I2(sig000002ea),
    .O(sig000002d0)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  blk0000029e (
    .I0(sig000002e9),
    .I1(sig000002e8),
    .I2(sig000002f6),
    .O(sig000002c6)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  blk0000029f (
    .I0(sig000002e8),
    .I1(sig000002e7),
    .I2(sig000002f6),
    .O(sig000002c5)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  blk000002a0 (
    .I0(sig000002e7),
    .I1(sig000002e6),
    .I2(sig000002f6),
    .O(sig000002cf)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  blk000002a1 (
    .I0(sig000002e6),
    .I1(sig000002fe),
    .I2(sig000002f6),
    .O(sig000002ce)
  );
  LUT4 #(
    .INIT ( 16'hBABB ))
  blk000002a2 (
    .I0(sig0000007c),
    .I1(sig0000007b),
    .I2(sig0000006f),
    .I3(sig00000007),
    .O(sig0000009e)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  blk000002a3 (
    .I0(sig000002fe),
    .I1(sig000002fd),
    .I2(sig000002f6),
    .O(sig000002cd)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  blk000002a4 (
    .I0(sig000002fd),
    .I1(sig000002fc),
    .I2(sig000002f6),
    .O(sig000002cc)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  blk000002a5 (
    .I0(sig000002fc),
    .I1(sig000002fb),
    .I2(sig000002f6),
    .O(sig000002cb)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  blk000002a6 (
    .I0(sig000002fb),
    .I1(sig000002fa),
    .I2(sig000002f6),
    .O(sig000002ca)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  blk000002a7 (
    .I0(sig000002fa),
    .I1(sig000002f9),
    .I2(sig000002f6),
    .O(sig000002c9)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  blk000002a8 (
    .I0(sig000002f9),
    .I1(sig000002f8),
    .I2(sig000002f6),
    .O(sig000002c8)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  blk000002a9 (
    .I0(sig000002f8),
    .I1(sig000002f7),
    .I2(sig000002f6),
    .O(sig000002c7)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  blk000002aa (
    .I0(sig000002e5),
    .I1(sig000002f0),
    .I2(sig000002f6),
    .O(sig000002c0)
  );
  LUT3 #(
    .INIT ( 8'h15 ))
  blk000002ab (
    .I0(sig00000228),
    .I1(sig000002e5),
    .I2(sig000002f6),
    .O(sig000002c1)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  blk000002ac (
    .I0(sig000002f7),
    .I1(sig000002f0),
    .I2(sig000002f6),
    .O(sig000002be)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk000002ad (
    .C(clk),
    .D(sig0000009b),
    .R(sig00000067),
    .Q(sig0000007e)
  );
  LUT3 #(
    .INIT ( 8'h32 ))
  blk000002ae (
    .I0(sig00000009),
    .I1(sig0000000a),
    .I2(sig0000000b),
    .O(sig0000009b)
  );
  FDS #(
    .INIT ( 1'b0 ))
  blk000002af (
    .C(clk),
    .D(sig0000009a),
    .S(sig00000067),
    .Q(sig0000007d)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  blk000002b0 (
    .I0(sig0000000a),
    .I1(sig00000009),
    .O(sig0000009a)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk000002b1 (
    .C(clk),
    .D(sig00000099),
    .R(sig00000067),
    .Q(sig00000069)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  blk000002b2 (
    .I0(sig0000006c),
    .I1(sig0000000a),
    .O(sig00000099)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk000002b3 (
    .C(clk),
    .D(sig00000093),
    .R(sig00000035),
    .Q(sig00000074)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  blk000002b4 (
    .I0(sig0000006a),
    .I1(sig0000003c),
    .O(sig00000093)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk000002b5 (
    .C(clk),
    .D(sig00000092),
    .R(sig00000034),
    .Q(sig00000073)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk000002b6 (
    .C(clk),
    .D(sig0000009d),
    .R(sig0000009c),
    .Q(sig00000077)
  );
  FDS #(
    .INIT ( 1'b0 ))
  blk000002b7 (
    .C(clk),
    .D(sig0000009e),
    .S(sig0000009c),
    .Q(sig0000007a)
  );
  FDR #(
    .INIT ( 1'b0 ))
  blk000002b8 (
    .C(clk),
    .D(sig0000009c),
    .R(sig0000009e),
    .Q(sig00000078)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  blk000002b9 (
    .I0(sig000002f7),
    .I1(sig000002f0),
    .I2(sig000002f6),
    .O(sig000002bf)
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  blk000002ba (
    .I0(sig00000273),
    .O(sig00000265)
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  blk000002bb (
    .I0(sig00000272),
    .O(sig00000264)
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  blk000002bc (
    .I0(sig00000271),
    .O(sig00000263)
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  blk000002bd (
    .I0(sig00000270),
    .O(sig00000262)
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  blk000002be (
    .I0(sig0000026f),
    .O(sig00000261)
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  blk000002bf (
    .I0(sig0000026e),
    .O(sig00000260)
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  blk000002c0 (
    .I0(sig0000026d),
    .O(sig0000025f)
  );
  LUT3 #(
    .INIT ( 8'hBA ))
  blk000002c1 (
    .I0(sig0000007c),
    .I1(sig0000007b),
    .I2(sig00000002),
    .O(sig0000009d)
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  blk000002c2 (
    .I0(sig00000070),
    .I1(sig000002f6),
    .O(sig00000003)
  );
  INV   blk000002c3 (
    .I(sig000002f6),
    .O(sig000002dc)
  );
  INV   blk000002c4 (
    .I(sig0000003c),
    .O(sig00000092)
  );
  LUT2_L #(
    .INIT ( 4'h1 ))
  blk000002c5 (
    .I0(sig00000036),
    .I1(sig00000035),
    .LO(sig00000096)
  );
  LUT4_L #(
    .INIT ( 16'h8000 ))
  blk000002c6 (
    .I0(sig00000039),
    .I1(sig00000038),
    .I2(sig00000037),
    .I3(sig0000003a),
    .LO(sig00000005)
  );
  LUT3_L #(
    .INIT ( 8'hEC ))
  blk000002c7 (
    .I0(sig00000070),
    .I1(sig0000006e),
    .I2(sig000002f6),
    .LO(sig00000006)
  );
  LUT4_L #(
    .INIT ( 16'h0311 ))
  blk000002c8 (
    .I0(sig00000071),
    .I1(sig0000006e),
    .I2(sig00000070),
    .I3(sig000002f6),
    .LO(sig00000007)
  );
  LUT4_L #(
    .INIT ( 16'h3237 ))
  blk000002c9 (
    .I0(sig0000006e),
    .I1(sig00000071),
    .I2(sig0000006f),
    .I3(sig00000003),
    .LO(sig00000002)
  );
  SRL16 #(
    .INIT ( 16'h0000 ))
  blk000002ca (
    .A0(sig00000001),
    .A1(sig00000001),
    .A2(sig00000001),
    .A3(sig00000001),
    .CLK(clk),
    .D(sig0000003a),
    .Q(sig0000005c)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000002cb (
    .C(clk),
    .D(sig0000005c),
    .Q(sig00000064)
  );
  SRL16 #(
    .INIT ( 16'h0000 ))
  blk000002cc (
    .A0(sig00000001),
    .A1(sig00000001),
    .A2(sig00000001),
    .A3(sig00000001),
    .CLK(clk),
    .D(sig0000003c),
    .Q(sig0000005e)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000002cd (
    .C(clk),
    .D(sig0000005e),
    .Q(sig00000066)
  );
  SRL16 #(
    .INIT ( 16'h0000 ))
  blk000002ce (
    .A0(sig00000001),
    .A1(sig00000001),
    .A2(sig00000001),
    .A3(sig00000001),
    .CLK(clk),
    .D(sig0000003b),
    .Q(sig0000005d)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000002cf (
    .C(clk),
    .D(sig0000005d),
    .Q(sig00000065)
  );
  SRL16 #(
    .INIT ( 16'h0000 ))
  blk000002d0 (
    .A0(sig00000001),
    .A1(sig00000001),
    .A2(sig00000001),
    .A3(sig00000001),
    .CLK(clk),
    .D(sig00000039),
    .Q(sig0000005b)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000002d1 (
    .C(clk),
    .D(sig0000005b),
    .Q(sig00000063)
  );
  SRL16 #(
    .INIT ( 16'h0000 ))
  blk000002d2 (
    .A0(sig00000001),
    .A1(sig00000001),
    .A2(sig00000001),
    .A3(sig00000001),
    .CLK(clk),
    .D(sig00000038),
    .Q(sig0000005a)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000002d3 (
    .C(clk),
    .D(sig0000005a),
    .Q(sig00000062)
  );
  SRL16 #(
    .INIT ( 16'h0000 ))
  blk000002d4 (
    .A0(sig00000001),
    .A1(sig00000001),
    .A2(sig00000001),
    .A3(sig00000001),
    .CLK(clk),
    .D(sig00000037),
    .Q(sig00000059)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000002d5 (
    .C(clk),
    .D(sig00000059),
    .Q(sig00000061)
  );
  SRL16 #(
    .INIT ( 16'h0000 ))
  blk000002d6 (
    .A0(sig00000001),
    .A1(sig00000001),
    .A2(sig00000001),
    .A3(sig00000001),
    .CLK(clk),
    .D(sig00000036),
    .Q(sig00000058)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000002d7 (
    .C(clk),
    .D(sig00000058),
    .Q(sig00000060)
  );
  SRL16 #(
    .INIT ( 16'h0000 ))
  blk000002d8 (
    .A0(sig00000001),
    .A1(sig00000001),
    .A2(sig00000001),
    .A3(sig00000001),
    .CLK(clk),
    .D(sig00000035),
    .Q(sig00000057)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000002d9 (
    .C(clk),
    .D(sig00000057),
    .Q(sig0000005f)
  );
  SRL16 #(
    .INIT ( 16'h0000 ))
  blk000002da (
    .A0(sig00000001),
    .A1(sig00000001),
    .A2(NlwRenamedSig_OI_operation_rfd),
    .A3(sig00000001),
    .CLK(clk),
    .D(operation_nd),
    .Q(sig00000008)
  );
  FD #(
    .INIT ( 1'b0 ))
  blk000002db (
    .C(clk),
    .D(sig00000008),
    .Q(\U0/op_inst/FLT_PT_OP/HND_SHK/RDY )
  );

// synthesis translate_on

endmodule

// synthesis translate_off

`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

// synthesis translate_on
