////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.40xd
//  \   \         Application: netgen
//  /   /         Filename: complex_multiplier.v
// /___/   /\     Timestamp: Wed Dec 16 15:54:38 2015
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog E:/FPGA-Filter-FFT-UART-master/ipcore_dir/tmp/_cg/complex_multiplier.ngc E:/FPGA-Filter-FFT-UART-master/ipcore_dir/tmp/_cg/complex_multiplier.v 
// Device	: 3s500efg320-5
// Input file	: E:/FPGA-Filter-FFT-UART-master/ipcore_dir/tmp/_cg/complex_multiplier.ngc
// Output file	: E:/FPGA-Filter-FFT-UART-master/ipcore_dir/tmp/_cg/complex_multiplier.v
// # of Modules	: 1
// Design Name	: complex_multiplier
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

module complex_multiplier (
ai, bi, ar, br, pi, pr
)/* synthesis syn_black_box syn_noprune=1 */;
  input [17 : 0] ai;
  input [17 : 0] bi;
  input [17 : 0] ar;
  input [17 : 0] br;
  output [35 : 0] pi;
  output [35 : 0] pr;
  
  // synthesis translate_off
  
  wire \blk00000003/sig000001b1 ;
  wire \blk00000003/sig000001b0 ;
  wire \blk00000003/sig000001af ;
  wire \blk00000003/sig000001ae ;
  wire \blk00000003/sig000001ad ;
  wire \blk00000003/sig000001ac ;
  wire \blk00000003/sig000001ab ;
  wire \blk00000003/sig000001aa ;
  wire \blk00000003/sig000001a9 ;
  wire \blk00000003/sig000001a8 ;
  wire \blk00000003/sig000001a7 ;
  wire \blk00000003/sig000001a6 ;
  wire \blk00000003/sig000001a5 ;
  wire \blk00000003/sig000001a4 ;
  wire \blk00000003/sig000001a3 ;
  wire \blk00000003/sig000001a2 ;
  wire \blk00000003/sig000001a1 ;
  wire \blk00000003/sig000001a0 ;
  wire \blk00000003/sig0000019f ;
  wire \blk00000003/sig0000019e ;
  wire \blk00000003/sig0000019d ;
  wire \blk00000003/sig0000019c ;
  wire \blk00000003/sig0000019b ;
  wire \blk00000003/sig0000019a ;
  wire \blk00000003/sig00000199 ;
  wire \blk00000003/sig00000198 ;
  wire \blk00000003/sig00000197 ;
  wire \blk00000003/sig00000196 ;
  wire \blk00000003/sig00000195 ;
  wire \blk00000003/sig00000194 ;
  wire \blk00000003/sig00000193 ;
  wire \blk00000003/sig00000192 ;
  wire \blk00000003/sig00000191 ;
  wire \blk00000003/sig00000190 ;
  wire \blk00000003/sig0000018f ;
  wire \blk00000003/sig0000018e ;
  wire \blk00000003/sig0000018d ;
  wire \blk00000003/sig0000018c ;
  wire \blk00000003/sig0000018b ;
  wire \blk00000003/sig0000018a ;
  wire \blk00000003/sig00000189 ;
  wire \blk00000003/sig00000188 ;
  wire \blk00000003/sig00000187 ;
  wire \blk00000003/sig00000186 ;
  wire \blk00000003/sig00000185 ;
  wire \blk00000003/sig00000184 ;
  wire \blk00000003/sig00000183 ;
  wire \blk00000003/sig00000182 ;
  wire \blk00000003/sig00000181 ;
  wire \blk00000003/sig00000180 ;
  wire \blk00000003/sig0000017f ;
  wire \blk00000003/sig0000017e ;
  wire \blk00000003/sig0000017d ;
  wire \blk00000003/sig0000017c ;
  wire \blk00000003/sig0000017b ;
  wire \blk00000003/sig0000017a ;
  wire \blk00000003/sig00000179 ;
  wire \blk00000003/sig00000178 ;
  wire \blk00000003/sig00000177 ;
  wire \blk00000003/sig00000176 ;
  wire \blk00000003/sig00000175 ;
  wire \blk00000003/sig00000174 ;
  wire \blk00000003/sig00000173 ;
  wire \blk00000003/sig00000172 ;
  wire \blk00000003/sig00000171 ;
  wire \blk00000003/sig00000170 ;
  wire \blk00000003/sig0000016f ;
  wire \blk00000003/sig0000016e ;
  wire \blk00000003/sig0000016d ;
  wire \blk00000003/sig0000016c ;
  wire \blk00000003/sig0000016b ;
  wire \blk00000003/sig0000016a ;
  wire \blk00000003/sig00000169 ;
  wire \blk00000003/sig00000168 ;
  wire \blk00000003/sig00000167 ;
  wire \blk00000003/sig00000166 ;
  wire \blk00000003/sig00000165 ;
  wire \blk00000003/sig00000164 ;
  wire \blk00000003/sig00000163 ;
  wire \blk00000003/sig00000162 ;
  wire \blk00000003/sig00000161 ;
  wire \blk00000003/sig00000160 ;
  wire \blk00000003/sig0000015f ;
  wire \blk00000003/sig0000015e ;
  wire \blk00000003/sig0000015d ;
  wire \blk00000003/sig0000015c ;
  wire \blk00000003/sig0000015b ;
  wire \blk00000003/sig0000015a ;
  wire \blk00000003/sig00000159 ;
  wire \blk00000003/sig00000158 ;
  wire \blk00000003/sig00000157 ;
  wire \blk00000003/sig00000156 ;
  wire \blk00000003/sig00000155 ;
  wire \blk00000003/sig00000154 ;
  wire \blk00000003/sig00000153 ;
  wire \blk00000003/sig00000152 ;
  wire \blk00000003/sig00000151 ;
  wire \blk00000003/sig00000150 ;
  wire \blk00000003/sig0000014f ;
  wire \blk00000003/sig0000014e ;
  wire \blk00000003/sig0000014d ;
  wire \blk00000003/sig0000014c ;
  wire \blk00000003/sig0000014b ;
  wire \blk00000003/sig0000014a ;
  wire \blk00000003/sig00000149 ;
  wire \blk00000003/sig00000148 ;
  wire \blk00000003/sig00000147 ;
  wire \blk00000003/sig00000146 ;
  wire \blk00000003/sig00000145 ;
  wire \blk00000003/sig00000144 ;
  wire \blk00000003/sig00000143 ;
  wire \blk00000003/sig00000142 ;
  wire \blk00000003/sig00000141 ;
  wire \blk00000003/sig00000140 ;
  wire \blk00000003/sig0000013f ;
  wire \blk00000003/sig0000013e ;
  wire \blk00000003/sig0000013d ;
  wire \blk00000003/sig0000013c ;
  wire \blk00000003/sig0000013b ;
  wire \blk00000003/sig0000013a ;
  wire \blk00000003/sig00000139 ;
  wire \blk00000003/sig00000138 ;
  wire \blk00000003/sig00000137 ;
  wire \blk00000003/sig00000136 ;
  wire \blk00000003/sig00000135 ;
  wire \blk00000003/sig00000134 ;
  wire \blk00000003/sig00000133 ;
  wire \blk00000003/sig00000132 ;
  wire \blk00000003/sig00000131 ;
  wire \blk00000003/sig00000130 ;
  wire \blk00000003/sig0000012f ;
  wire \blk00000003/sig0000012e ;
  wire \blk00000003/sig0000012d ;
  wire \blk00000003/sig0000012c ;
  wire \blk00000003/sig0000012b ;
  wire \blk00000003/sig0000012a ;
  wire \blk00000003/sig00000129 ;
  wire \blk00000003/sig00000128 ;
  wire \blk00000003/sig00000127 ;
  wire \blk00000003/sig00000126 ;
  wire \blk00000003/sig00000125 ;
  wire \blk00000003/sig00000124 ;
  wire \blk00000003/sig00000123 ;
  wire \blk00000003/sig00000122 ;
  wire \blk00000003/sig00000121 ;
  wire \blk00000003/sig00000120 ;
  wire \blk00000003/sig0000011f ;
  wire \blk00000003/sig0000011e ;
  wire \blk00000003/sig0000011d ;
  wire \blk00000003/sig0000011c ;
  wire \blk00000003/sig0000011b ;
  wire \blk00000003/sig0000011a ;
  wire \blk00000003/sig00000119 ;
  wire \blk00000003/sig00000118 ;
  wire \blk00000003/sig00000117 ;
  wire \blk00000003/sig00000116 ;
  wire \blk00000003/sig00000115 ;
  wire \blk00000003/sig00000114 ;
  wire \blk00000003/sig00000113 ;
  wire \blk00000003/sig00000112 ;
  wire \blk00000003/sig00000111 ;
  wire \blk00000003/sig00000110 ;
  wire \blk00000003/sig0000010f ;
  wire \blk00000003/sig0000010e ;
  wire \blk00000003/sig0000010d ;
  wire \blk00000003/sig0000010c ;
  wire \blk00000003/sig0000010b ;
  wire \blk00000003/sig0000010a ;
  wire \blk00000003/sig00000109 ;
  wire \blk00000003/sig00000108 ;
  wire \blk00000003/sig00000107 ;
  wire \blk00000003/sig00000106 ;
  wire \blk00000003/sig00000105 ;
  wire \blk00000003/sig00000104 ;
  wire \blk00000003/sig00000103 ;
  wire \blk00000003/sig00000102 ;
  wire \blk00000003/sig00000101 ;
  wire \blk00000003/sig00000100 ;
  wire \blk00000003/sig000000ff ;
  wire \blk00000003/sig000000fe ;
  wire \blk00000003/sig000000fd ;
  wire \blk00000003/sig000000fc ;
  wire \blk00000003/sig000000fb ;
  wire \blk00000003/sig000000fa ;
  wire \blk00000003/sig000000f9 ;
  wire \blk00000003/sig000000f8 ;
  wire \blk00000003/sig000000f7 ;
  wire \blk00000003/sig000000f6 ;
  wire \blk00000003/sig000000f5 ;
  wire \blk00000003/sig000000f4 ;
  wire \blk00000003/sig000000f3 ;
  wire \blk00000003/sig000000f2 ;
  wire \blk00000003/sig000000f1 ;
  wire \blk00000003/sig000000f0 ;
  wire \blk00000003/sig000000ef ;
  wire \blk00000003/sig000000ee ;
  wire \blk00000003/sig000000ed ;
  wire \blk00000003/sig000000ec ;
  wire \blk00000003/sig000000eb ;
  wire \blk00000003/sig000000ea ;
  wire \blk00000003/sig000000e9 ;
  wire \blk00000003/sig000000e8 ;
  wire \blk00000003/sig000000e7 ;
  wire \blk00000003/sig000000e6 ;
  wire \blk00000003/sig000000e5 ;
  wire \blk00000003/sig000000e4 ;
  wire \blk00000003/sig000000e3 ;
  wire \blk00000003/sig000000e2 ;
  wire \blk00000003/sig000000e1 ;
  wire \blk00000003/sig000000e0 ;
  wire \blk00000003/sig000000df ;
  wire \blk00000003/sig000000de ;
  wire \blk00000003/sig000000dd ;
  wire \blk00000003/sig000000dc ;
  wire \blk00000003/sig000000db ;
  wire \blk00000003/sig000000da ;
  wire \blk00000003/sig000000d9 ;
  wire \blk00000003/sig000000d8 ;
  wire \blk00000003/sig000000d7 ;
  wire \blk00000003/sig000000d6 ;
  wire \blk00000003/sig000000d5 ;
  wire \blk00000003/sig000000d4 ;
  wire \blk00000003/sig000000d3 ;
  wire \blk00000003/sig000000d2 ;
  wire \blk00000003/sig000000d1 ;
  wire \blk00000003/sig000000d0 ;
  wire \blk00000003/sig000000cf ;
  wire \blk00000003/sig000000ce ;
  wire \blk00000003/sig000000cd ;
  wire \blk00000003/sig000000cc ;
  wire \blk00000003/sig000000cb ;
  wire \blk00000003/sig000000ca ;
  wire \blk00000003/sig000000c9 ;
  wire \blk00000003/sig000000c8 ;
  wire \blk00000003/sig000000c7 ;
  wire \blk00000003/sig000000c6 ;
  wire \blk00000003/sig000000c5 ;
  wire \blk00000003/sig000000c4 ;
  wire \blk00000003/sig000000c3 ;
  wire \blk00000003/sig000000c2 ;
  wire \blk00000003/sig000000c1 ;
  wire \blk00000003/sig000000c0 ;
  wire \blk00000003/sig000000bf ;
  wire \blk00000003/sig000000be ;
  wire \blk00000003/sig000000bd ;
  wire \blk00000003/sig000000bc ;
  wire \blk00000003/sig000000bb ;
  wire \blk00000003/sig000000ba ;
  wire \blk00000003/sig000000b9 ;
  wire \blk00000003/sig000000b8 ;
  wire \blk00000003/sig000000b7 ;
  wire \blk00000003/sig000000b6 ;
  wire \blk00000003/sig000000b5 ;
  wire \blk00000003/sig000000b4 ;
  wire \blk00000003/sig000000b3 ;
  wire \blk00000003/sig000000b2 ;
  wire \blk00000003/sig000000b1 ;
  wire \blk00000003/sig000000b0 ;
  wire \blk00000003/sig000000af ;
  wire \blk00000003/sig000000ae ;
  wire \blk00000003/sig000000ad ;
  wire \blk00000003/sig000000ac ;
  wire \blk00000003/sig000000ab ;
  wire \blk00000003/sig000000aa ;
  wire \blk00000003/sig000000a9 ;
  wire \blk00000003/sig000000a8 ;
  wire \blk00000003/sig000000a7 ;
  wire \blk00000003/sig000000a6 ;
  wire \blk00000003/sig000000a5 ;
  wire \blk00000003/sig000000a4 ;
  wire \blk00000003/sig000000a3 ;
  wire \blk00000003/sig000000a2 ;
  wire \blk00000003/sig000000a1 ;
  wire \blk00000003/sig000000a0 ;
  wire \blk00000003/sig0000009f ;
  wire \blk00000003/sig0000009e ;
  wire \blk00000003/sig0000009d ;
  wire \blk00000003/sig0000009c ;
  wire \blk00000003/sig0000009b ;
  wire \blk00000003/sig0000009a ;
  wire \blk00000003/sig00000099 ;
  wire \blk00000003/sig00000098 ;
  wire \blk00000003/sig00000097 ;
  wire \blk00000003/sig00000096 ;
  wire \blk00000003/sig00000095 ;
  wire \blk00000003/sig00000094 ;
  wire \blk00000003/sig00000093 ;
  wire \blk00000003/sig00000092 ;
  wire \blk00000003/sig00000049 ;
  wire \blk00000003/blk000000dc/sig000001fc ;
  wire \blk00000003/blk000000dc/sig000001d7 ;
  wire \blk00000003/blk000000e0/sig00000247 ;
  wire \blk00000003/blk000000e0/sig00000222 ;
  wire \blk00000003/blk000000e4/sig00000292 ;
  wire \blk00000003/blk000000e4/sig0000026d ;
  wire \blk00000003/blk000000e8/sig000002dd ;
  wire \blk00000003/blk000000e8/sig000002b8 ;
  wire NLW_blk00000001_P_UNCONNECTED;
  wire NLW_blk00000002_G_UNCONNECTED;
  wire \NLW_blk00000003/blk000000dc/blk000000df_BCOUT<17>_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000dc/blk000000df_BCOUT<16>_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000dc/blk000000df_BCOUT<15>_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000dc/blk000000df_BCOUT<14>_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000dc/blk000000df_BCOUT<13>_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000dc/blk000000df_BCOUT<12>_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000dc/blk000000df_BCOUT<11>_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000dc/blk000000df_BCOUT<10>_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000dc/blk000000df_BCOUT<9>_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000dc/blk000000df_BCOUT<8>_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000dc/blk000000df_BCOUT<7>_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000dc/blk000000df_BCOUT<6>_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000dc/blk000000df_BCOUT<5>_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000dc/blk000000df_BCOUT<4>_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000dc/blk000000df_BCOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000dc/blk000000df_BCOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000dc/blk000000df_BCOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000dc/blk000000df_BCOUT<0>_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000e0/blk000000e3_BCOUT<17>_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000e0/blk000000e3_BCOUT<16>_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000e0/blk000000e3_BCOUT<15>_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000e0/blk000000e3_BCOUT<14>_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000e0/blk000000e3_BCOUT<13>_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000e0/blk000000e3_BCOUT<12>_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000e0/blk000000e3_BCOUT<11>_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000e0/blk000000e3_BCOUT<10>_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000e0/blk000000e3_BCOUT<9>_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000e0/blk000000e3_BCOUT<8>_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000e0/blk000000e3_BCOUT<7>_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000e0/blk000000e3_BCOUT<6>_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000e0/blk000000e3_BCOUT<5>_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000e0/blk000000e3_BCOUT<4>_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000e0/blk000000e3_BCOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000e0/blk000000e3_BCOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000e0/blk000000e3_BCOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000e0/blk000000e3_BCOUT<0>_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000e4/blk000000e7_BCOUT<17>_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000e4/blk000000e7_BCOUT<16>_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000e4/blk000000e7_BCOUT<15>_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000e4/blk000000e7_BCOUT<14>_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000e4/blk000000e7_BCOUT<13>_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000e4/blk000000e7_BCOUT<12>_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000e4/blk000000e7_BCOUT<11>_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000e4/blk000000e7_BCOUT<10>_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000e4/blk000000e7_BCOUT<9>_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000e4/blk000000e7_BCOUT<8>_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000e4/blk000000e7_BCOUT<7>_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000e4/blk000000e7_BCOUT<6>_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000e4/blk000000e7_BCOUT<5>_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000e4/blk000000e7_BCOUT<4>_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000e4/blk000000e7_BCOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000e4/blk000000e7_BCOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000e4/blk000000e7_BCOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000e4/blk000000e7_BCOUT<0>_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000e8/blk000000eb_BCOUT<17>_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000e8/blk000000eb_BCOUT<16>_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000e8/blk000000eb_BCOUT<15>_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000e8/blk000000eb_BCOUT<14>_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000e8/blk000000eb_BCOUT<13>_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000e8/blk000000eb_BCOUT<12>_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000e8/blk000000eb_BCOUT<11>_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000e8/blk000000eb_BCOUT<10>_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000e8/blk000000eb_BCOUT<9>_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000e8/blk000000eb_BCOUT<8>_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000e8/blk000000eb_BCOUT<7>_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000e8/blk000000eb_BCOUT<6>_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000e8/blk000000eb_BCOUT<5>_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000e8/blk000000eb_BCOUT<4>_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000e8/blk000000eb_BCOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000e8/blk000000eb_BCOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000e8/blk000000eb_BCOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000003/blk000000e8/blk000000eb_BCOUT<0>_UNCONNECTED ;
  wire [17 : 0] ar_0;
  wire [17 : 0] ai_1;
  wire [17 : 0] br_2;
  wire [17 : 0] bi_3;
  wire [35 : 0] pr_4;
  wire [35 : 0] pi_5;
  assign
    ai_1[17] = ai[17],
    ai_1[16] = ai[16],
    ai_1[15] = ai[15],
    ai_1[14] = ai[14],
    ai_1[13] = ai[13],
    ai_1[12] = ai[12],
    ai_1[11] = ai[11],
    ai_1[10] = ai[10],
    ai_1[9] = ai[9],
    ai_1[8] = ai[8],
    ai_1[7] = ai[7],
    ai_1[6] = ai[6],
    ai_1[5] = ai[5],
    ai_1[4] = ai[4],
    ai_1[3] = ai[3],
    ai_1[2] = ai[2],
    ai_1[1] = ai[1],
    ai_1[0] = ai[0],
    bi_3[17] = bi[17],
    bi_3[16] = bi[16],
    bi_3[15] = bi[15],
    bi_3[14] = bi[14],
    bi_3[13] = bi[13],
    bi_3[12] = bi[12],
    bi_3[11] = bi[11],
    bi_3[10] = bi[10],
    bi_3[9] = bi[9],
    bi_3[8] = bi[8],
    bi_3[7] = bi[7],
    bi_3[6] = bi[6],
    bi_3[5] = bi[5],
    bi_3[4] = bi[4],
    bi_3[3] = bi[3],
    bi_3[2] = bi[2],
    bi_3[1] = bi[1],
    bi_3[0] = bi[0],
    ar_0[17] = ar[17],
    ar_0[16] = ar[16],
    ar_0[15] = ar[15],
    ar_0[14] = ar[14],
    ar_0[13] = ar[13],
    ar_0[12] = ar[12],
    ar_0[11] = ar[11],
    ar_0[10] = ar[10],
    ar_0[9] = ar[9],
    ar_0[8] = ar[8],
    ar_0[7] = ar[7],
    ar_0[6] = ar[6],
    ar_0[5] = ar[5],
    ar_0[4] = ar[4],
    ar_0[3] = ar[3],
    ar_0[2] = ar[2],
    ar_0[1] = ar[1],
    ar_0[0] = ar[0],
    br_2[17] = br[17],
    br_2[16] = br[16],
    br_2[15] = br[15],
    br_2[14] = br[14],
    br_2[13] = br[13],
    br_2[12] = br[12],
    br_2[11] = br[11],
    br_2[10] = br[10],
    br_2[9] = br[9],
    br_2[8] = br[8],
    br_2[7] = br[7],
    br_2[6] = br[6],
    br_2[5] = br[5],
    br_2[4] = br[4],
    br_2[3] = br[3],
    br_2[2] = br[2],
    br_2[1] = br[1],
    br_2[0] = br[0],
    pi[35] = pi_5[35],
    pi[34] = pi_5[34],
    pi[33] = pi_5[33],
    pi[32] = pi_5[32],
    pi[31] = pi_5[31],
    pi[30] = pi_5[30],
    pi[29] = pi_5[29],
    pi[28] = pi_5[28],
    pi[27] = pi_5[27],
    pi[26] = pi_5[26],
    pi[25] = pi_5[25],
    pi[24] = pi_5[24],
    pi[23] = pi_5[23],
    pi[22] = pi_5[22],
    pi[21] = pi_5[21],
    pi[20] = pi_5[20],
    pi[19] = pi_5[19],
    pi[18] = pi_5[18],
    pi[17] = pi_5[17],
    pi[16] = pi_5[16],
    pi[15] = pi_5[15],
    pi[14] = pi_5[14],
    pi[13] = pi_5[13],
    pi[12] = pi_5[12],
    pi[11] = pi_5[11],
    pi[10] = pi_5[10],
    pi[9] = pi_5[9],
    pi[8] = pi_5[8],
    pi[7] = pi_5[7],
    pi[6] = pi_5[6],
    pi[5] = pi_5[5],
    pi[4] = pi_5[4],
    pi[3] = pi_5[3],
    pi[2] = pi_5[2],
    pi[1] = pi_5[1],
    pi[0] = pi_5[0],
    pr[35] = pr_4[35],
    pr[34] = pr_4[34],
    pr[33] = pr_4[33],
    pr[32] = pr_4[32],
    pr[31] = pr_4[31],
    pr[30] = pr_4[30],
    pr[29] = pr_4[29],
    pr[28] = pr_4[28],
    pr[27] = pr_4[27],
    pr[26] = pr_4[26],
    pr[25] = pr_4[25],
    pr[24] = pr_4[24],
    pr[23] = pr_4[23],
    pr[22] = pr_4[22],
    pr[21] = pr_4[21],
    pr[20] = pr_4[20],
    pr[19] = pr_4[19],
    pr[18] = pr_4[18],
    pr[17] = pr_4[17],
    pr[16] = pr_4[16],
    pr[15] = pr_4[15],
    pr[14] = pr_4[14],
    pr[13] = pr_4[13],
    pr[12] = pr_4[12],
    pr[11] = pr_4[11],
    pr[10] = pr_4[10],
    pr[9] = pr_4[9],
    pr[8] = pr_4[8],
    pr[7] = pr_4[7],
    pr[6] = pr_4[6],
    pr[5] = pr_4[5],
    pr[4] = pr_4[4],
    pr[3] = pr_4[3],
    pr[2] = pr_4[2],
    pr[1] = pr_4[1],
    pr[0] = pr_4[0];
  VCC   blk00000001 (
    .P(NLW_blk00000001_P_UNCONNECTED)
  );
  GND   blk00000002 (
    .G(NLW_blk00000002_G_UNCONNECTED)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk000000db  (
    .I0(\blk00000003/sig000001b0 ),
    .I1(\blk00000003/sig000001b1 ),
    .O(\blk00000003/sig000001af )
  );
  MUXCY   \blk00000003/blk000000da  (
    .CI(\blk00000003/sig00000092 ),
    .DI(\blk00000003/sig000001b0 ),
    .S(\blk00000003/sig000001af ),
    .O(\blk00000003/sig000001ab )
  );
  XORCY   \blk00000003/blk000000d9  (
    .CI(\blk00000003/sig00000092 ),
    .LI(\blk00000003/sig000001af ),
    .O(pi_5[0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk000000d8  (
    .I0(\blk00000003/sig000001ad ),
    .I1(\blk00000003/sig000001ae ),
    .O(\blk00000003/sig000001ac )
  );
  MUXCY   \blk00000003/blk000000d7  (
    .CI(\blk00000003/sig000001ab ),
    .DI(\blk00000003/sig000001ad ),
    .S(\blk00000003/sig000001ac ),
    .O(\blk00000003/sig000001a7 )
  );
  XORCY   \blk00000003/blk000000d6  (
    .CI(\blk00000003/sig000001ab ),
    .LI(\blk00000003/sig000001ac ),
    .O(pi_5[1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk000000d5  (
    .I0(\blk00000003/sig000001a9 ),
    .I1(\blk00000003/sig000001aa ),
    .O(\blk00000003/sig000001a8 )
  );
  MUXCY   \blk00000003/blk000000d4  (
    .CI(\blk00000003/sig000001a7 ),
    .DI(\blk00000003/sig000001a9 ),
    .S(\blk00000003/sig000001a8 ),
    .O(\blk00000003/sig000001a3 )
  );
  XORCY   \blk00000003/blk000000d3  (
    .CI(\blk00000003/sig000001a7 ),
    .LI(\blk00000003/sig000001a8 ),
    .O(pi_5[2])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk000000d2  (
    .I0(\blk00000003/sig000001a5 ),
    .I1(\blk00000003/sig000001a6 ),
    .O(\blk00000003/sig000001a4 )
  );
  MUXCY   \blk00000003/blk000000d1  (
    .CI(\blk00000003/sig000001a3 ),
    .DI(\blk00000003/sig000001a5 ),
    .S(\blk00000003/sig000001a4 ),
    .O(\blk00000003/sig0000019f )
  );
  XORCY   \blk00000003/blk000000d0  (
    .CI(\blk00000003/sig000001a3 ),
    .LI(\blk00000003/sig000001a4 ),
    .O(pi_5[3])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk000000cf  (
    .I0(\blk00000003/sig000001a1 ),
    .I1(\blk00000003/sig000001a2 ),
    .O(\blk00000003/sig000001a0 )
  );
  MUXCY   \blk00000003/blk000000ce  (
    .CI(\blk00000003/sig0000019f ),
    .DI(\blk00000003/sig000001a1 ),
    .S(\blk00000003/sig000001a0 ),
    .O(\blk00000003/sig0000019b )
  );
  XORCY   \blk00000003/blk000000cd  (
    .CI(\blk00000003/sig0000019f ),
    .LI(\blk00000003/sig000001a0 ),
    .O(pi_5[4])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk000000cc  (
    .I0(\blk00000003/sig0000019d ),
    .I1(\blk00000003/sig0000019e ),
    .O(\blk00000003/sig0000019c )
  );
  MUXCY   \blk00000003/blk000000cb  (
    .CI(\blk00000003/sig0000019b ),
    .DI(\blk00000003/sig0000019d ),
    .S(\blk00000003/sig0000019c ),
    .O(\blk00000003/sig00000197 )
  );
  XORCY   \blk00000003/blk000000ca  (
    .CI(\blk00000003/sig0000019b ),
    .LI(\blk00000003/sig0000019c ),
    .O(pi_5[5])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk000000c9  (
    .I0(\blk00000003/sig00000199 ),
    .I1(\blk00000003/sig0000019a ),
    .O(\blk00000003/sig00000198 )
  );
  MUXCY   \blk00000003/blk000000c8  (
    .CI(\blk00000003/sig00000197 ),
    .DI(\blk00000003/sig00000199 ),
    .S(\blk00000003/sig00000198 ),
    .O(\blk00000003/sig00000193 )
  );
  XORCY   \blk00000003/blk000000c7  (
    .CI(\blk00000003/sig00000197 ),
    .LI(\blk00000003/sig00000198 ),
    .O(pi_5[6])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk000000c6  (
    .I0(\blk00000003/sig00000195 ),
    .I1(\blk00000003/sig00000196 ),
    .O(\blk00000003/sig00000194 )
  );
  MUXCY   \blk00000003/blk000000c5  (
    .CI(\blk00000003/sig00000193 ),
    .DI(\blk00000003/sig00000195 ),
    .S(\blk00000003/sig00000194 ),
    .O(\blk00000003/sig0000018f )
  );
  XORCY   \blk00000003/blk000000c4  (
    .CI(\blk00000003/sig00000193 ),
    .LI(\blk00000003/sig00000194 ),
    .O(pi_5[7])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk000000c3  (
    .I0(\blk00000003/sig00000191 ),
    .I1(\blk00000003/sig00000192 ),
    .O(\blk00000003/sig00000190 )
  );
  MUXCY   \blk00000003/blk000000c2  (
    .CI(\blk00000003/sig0000018f ),
    .DI(\blk00000003/sig00000191 ),
    .S(\blk00000003/sig00000190 ),
    .O(\blk00000003/sig0000018b )
  );
  XORCY   \blk00000003/blk000000c1  (
    .CI(\blk00000003/sig0000018f ),
    .LI(\blk00000003/sig00000190 ),
    .O(pi_5[8])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk000000c0  (
    .I0(\blk00000003/sig0000018d ),
    .I1(\blk00000003/sig0000018e ),
    .O(\blk00000003/sig0000018c )
  );
  MUXCY   \blk00000003/blk000000bf  (
    .CI(\blk00000003/sig0000018b ),
    .DI(\blk00000003/sig0000018d ),
    .S(\blk00000003/sig0000018c ),
    .O(\blk00000003/sig00000187 )
  );
  XORCY   \blk00000003/blk000000be  (
    .CI(\blk00000003/sig0000018b ),
    .LI(\blk00000003/sig0000018c ),
    .O(pi_5[9])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk000000bd  (
    .I0(\blk00000003/sig00000189 ),
    .I1(\blk00000003/sig0000018a ),
    .O(\blk00000003/sig00000188 )
  );
  MUXCY   \blk00000003/blk000000bc  (
    .CI(\blk00000003/sig00000187 ),
    .DI(\blk00000003/sig00000189 ),
    .S(\blk00000003/sig00000188 ),
    .O(\blk00000003/sig00000183 )
  );
  XORCY   \blk00000003/blk000000bb  (
    .CI(\blk00000003/sig00000187 ),
    .LI(\blk00000003/sig00000188 ),
    .O(pi_5[10])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk000000ba  (
    .I0(\blk00000003/sig00000185 ),
    .I1(\blk00000003/sig00000186 ),
    .O(\blk00000003/sig00000184 )
  );
  MUXCY   \blk00000003/blk000000b9  (
    .CI(\blk00000003/sig00000183 ),
    .DI(\blk00000003/sig00000185 ),
    .S(\blk00000003/sig00000184 ),
    .O(\blk00000003/sig0000017f )
  );
  XORCY   \blk00000003/blk000000b8  (
    .CI(\blk00000003/sig00000183 ),
    .LI(\blk00000003/sig00000184 ),
    .O(pi_5[11])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk000000b7  (
    .I0(\blk00000003/sig00000181 ),
    .I1(\blk00000003/sig00000182 ),
    .O(\blk00000003/sig00000180 )
  );
  MUXCY   \blk00000003/blk000000b6  (
    .CI(\blk00000003/sig0000017f ),
    .DI(\blk00000003/sig00000181 ),
    .S(\blk00000003/sig00000180 ),
    .O(\blk00000003/sig0000017b )
  );
  XORCY   \blk00000003/blk000000b5  (
    .CI(\blk00000003/sig0000017f ),
    .LI(\blk00000003/sig00000180 ),
    .O(pi_5[12])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk000000b4  (
    .I0(\blk00000003/sig0000017d ),
    .I1(\blk00000003/sig0000017e ),
    .O(\blk00000003/sig0000017c )
  );
  MUXCY   \blk00000003/blk000000b3  (
    .CI(\blk00000003/sig0000017b ),
    .DI(\blk00000003/sig0000017d ),
    .S(\blk00000003/sig0000017c ),
    .O(\blk00000003/sig00000177 )
  );
  XORCY   \blk00000003/blk000000b2  (
    .CI(\blk00000003/sig0000017b ),
    .LI(\blk00000003/sig0000017c ),
    .O(pi_5[13])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk000000b1  (
    .I0(\blk00000003/sig00000179 ),
    .I1(\blk00000003/sig0000017a ),
    .O(\blk00000003/sig00000178 )
  );
  MUXCY   \blk00000003/blk000000b0  (
    .CI(\blk00000003/sig00000177 ),
    .DI(\blk00000003/sig00000179 ),
    .S(\blk00000003/sig00000178 ),
    .O(\blk00000003/sig00000173 )
  );
  XORCY   \blk00000003/blk000000af  (
    .CI(\blk00000003/sig00000177 ),
    .LI(\blk00000003/sig00000178 ),
    .O(pi_5[14])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk000000ae  (
    .I0(\blk00000003/sig00000175 ),
    .I1(\blk00000003/sig00000176 ),
    .O(\blk00000003/sig00000174 )
  );
  MUXCY   \blk00000003/blk000000ad  (
    .CI(\blk00000003/sig00000173 ),
    .DI(\blk00000003/sig00000175 ),
    .S(\blk00000003/sig00000174 ),
    .O(\blk00000003/sig0000016f )
  );
  XORCY   \blk00000003/blk000000ac  (
    .CI(\blk00000003/sig00000173 ),
    .LI(\blk00000003/sig00000174 ),
    .O(pi_5[15])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk000000ab  (
    .I0(\blk00000003/sig00000171 ),
    .I1(\blk00000003/sig00000172 ),
    .O(\blk00000003/sig00000170 )
  );
  MUXCY   \blk00000003/blk000000aa  (
    .CI(\blk00000003/sig0000016f ),
    .DI(\blk00000003/sig00000171 ),
    .S(\blk00000003/sig00000170 ),
    .O(\blk00000003/sig0000016b )
  );
  XORCY   \blk00000003/blk000000a9  (
    .CI(\blk00000003/sig0000016f ),
    .LI(\blk00000003/sig00000170 ),
    .O(pi_5[16])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk000000a8  (
    .I0(\blk00000003/sig0000016d ),
    .I1(\blk00000003/sig0000016e ),
    .O(\blk00000003/sig0000016c )
  );
  MUXCY   \blk00000003/blk000000a7  (
    .CI(\blk00000003/sig0000016b ),
    .DI(\blk00000003/sig0000016d ),
    .S(\blk00000003/sig0000016c ),
    .O(\blk00000003/sig00000167 )
  );
  XORCY   \blk00000003/blk000000a6  (
    .CI(\blk00000003/sig0000016b ),
    .LI(\blk00000003/sig0000016c ),
    .O(pi_5[17])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk000000a5  (
    .I0(\blk00000003/sig00000169 ),
    .I1(\blk00000003/sig0000016a ),
    .O(\blk00000003/sig00000168 )
  );
  MUXCY   \blk00000003/blk000000a4  (
    .CI(\blk00000003/sig00000167 ),
    .DI(\blk00000003/sig00000169 ),
    .S(\blk00000003/sig00000168 ),
    .O(\blk00000003/sig00000163 )
  );
  XORCY   \blk00000003/blk000000a3  (
    .CI(\blk00000003/sig00000167 ),
    .LI(\blk00000003/sig00000168 ),
    .O(pi_5[18])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk000000a2  (
    .I0(\blk00000003/sig00000165 ),
    .I1(\blk00000003/sig00000166 ),
    .O(\blk00000003/sig00000164 )
  );
  MUXCY   \blk00000003/blk000000a1  (
    .CI(\blk00000003/sig00000163 ),
    .DI(\blk00000003/sig00000165 ),
    .S(\blk00000003/sig00000164 ),
    .O(\blk00000003/sig0000015f )
  );
  XORCY   \blk00000003/blk000000a0  (
    .CI(\blk00000003/sig00000163 ),
    .LI(\blk00000003/sig00000164 ),
    .O(pi_5[19])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk0000009f  (
    .I0(\blk00000003/sig00000161 ),
    .I1(\blk00000003/sig00000162 ),
    .O(\blk00000003/sig00000160 )
  );
  MUXCY   \blk00000003/blk0000009e  (
    .CI(\blk00000003/sig0000015f ),
    .DI(\blk00000003/sig00000161 ),
    .S(\blk00000003/sig00000160 ),
    .O(\blk00000003/sig0000015b )
  );
  XORCY   \blk00000003/blk0000009d  (
    .CI(\blk00000003/sig0000015f ),
    .LI(\blk00000003/sig00000160 ),
    .O(pi_5[20])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk0000009c  (
    .I0(\blk00000003/sig0000015d ),
    .I1(\blk00000003/sig0000015e ),
    .O(\blk00000003/sig0000015c )
  );
  MUXCY   \blk00000003/blk0000009b  (
    .CI(\blk00000003/sig0000015b ),
    .DI(\blk00000003/sig0000015d ),
    .S(\blk00000003/sig0000015c ),
    .O(\blk00000003/sig00000157 )
  );
  XORCY   \blk00000003/blk0000009a  (
    .CI(\blk00000003/sig0000015b ),
    .LI(\blk00000003/sig0000015c ),
    .O(pi_5[21])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk00000099  (
    .I0(\blk00000003/sig00000159 ),
    .I1(\blk00000003/sig0000015a ),
    .O(\blk00000003/sig00000158 )
  );
  MUXCY   \blk00000003/blk00000098  (
    .CI(\blk00000003/sig00000157 ),
    .DI(\blk00000003/sig00000159 ),
    .S(\blk00000003/sig00000158 ),
    .O(\blk00000003/sig00000153 )
  );
  XORCY   \blk00000003/blk00000097  (
    .CI(\blk00000003/sig00000157 ),
    .LI(\blk00000003/sig00000158 ),
    .O(pi_5[22])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk00000096  (
    .I0(\blk00000003/sig00000155 ),
    .I1(\blk00000003/sig00000156 ),
    .O(\blk00000003/sig00000154 )
  );
  MUXCY   \blk00000003/blk00000095  (
    .CI(\blk00000003/sig00000153 ),
    .DI(\blk00000003/sig00000155 ),
    .S(\blk00000003/sig00000154 ),
    .O(\blk00000003/sig0000014f )
  );
  XORCY   \blk00000003/blk00000094  (
    .CI(\blk00000003/sig00000153 ),
    .LI(\blk00000003/sig00000154 ),
    .O(pi_5[23])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk00000093  (
    .I0(\blk00000003/sig00000151 ),
    .I1(\blk00000003/sig00000152 ),
    .O(\blk00000003/sig00000150 )
  );
  MUXCY   \blk00000003/blk00000092  (
    .CI(\blk00000003/sig0000014f ),
    .DI(\blk00000003/sig00000151 ),
    .S(\blk00000003/sig00000150 ),
    .O(\blk00000003/sig0000014b )
  );
  XORCY   \blk00000003/blk00000091  (
    .CI(\blk00000003/sig0000014f ),
    .LI(\blk00000003/sig00000150 ),
    .O(pi_5[24])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk00000090  (
    .I0(\blk00000003/sig0000014d ),
    .I1(\blk00000003/sig0000014e ),
    .O(\blk00000003/sig0000014c )
  );
  MUXCY   \blk00000003/blk0000008f  (
    .CI(\blk00000003/sig0000014b ),
    .DI(\blk00000003/sig0000014d ),
    .S(\blk00000003/sig0000014c ),
    .O(\blk00000003/sig00000147 )
  );
  XORCY   \blk00000003/blk0000008e  (
    .CI(\blk00000003/sig0000014b ),
    .LI(\blk00000003/sig0000014c ),
    .O(pi_5[25])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk0000008d  (
    .I0(\blk00000003/sig00000149 ),
    .I1(\blk00000003/sig0000014a ),
    .O(\blk00000003/sig00000148 )
  );
  MUXCY   \blk00000003/blk0000008c  (
    .CI(\blk00000003/sig00000147 ),
    .DI(\blk00000003/sig00000149 ),
    .S(\blk00000003/sig00000148 ),
    .O(\blk00000003/sig00000143 )
  );
  XORCY   \blk00000003/blk0000008b  (
    .CI(\blk00000003/sig00000147 ),
    .LI(\blk00000003/sig00000148 ),
    .O(pi_5[26])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk0000008a  (
    .I0(\blk00000003/sig00000145 ),
    .I1(\blk00000003/sig00000146 ),
    .O(\blk00000003/sig00000144 )
  );
  MUXCY   \blk00000003/blk00000089  (
    .CI(\blk00000003/sig00000143 ),
    .DI(\blk00000003/sig00000145 ),
    .S(\blk00000003/sig00000144 ),
    .O(\blk00000003/sig0000013f )
  );
  XORCY   \blk00000003/blk00000088  (
    .CI(\blk00000003/sig00000143 ),
    .LI(\blk00000003/sig00000144 ),
    .O(pi_5[27])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk00000087  (
    .I0(\blk00000003/sig00000141 ),
    .I1(\blk00000003/sig00000142 ),
    .O(\blk00000003/sig00000140 )
  );
  MUXCY   \blk00000003/blk00000086  (
    .CI(\blk00000003/sig0000013f ),
    .DI(\blk00000003/sig00000141 ),
    .S(\blk00000003/sig00000140 ),
    .O(\blk00000003/sig0000013b )
  );
  XORCY   \blk00000003/blk00000085  (
    .CI(\blk00000003/sig0000013f ),
    .LI(\blk00000003/sig00000140 ),
    .O(pi_5[28])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk00000084  (
    .I0(\blk00000003/sig0000013d ),
    .I1(\blk00000003/sig0000013e ),
    .O(\blk00000003/sig0000013c )
  );
  MUXCY   \blk00000003/blk00000083  (
    .CI(\blk00000003/sig0000013b ),
    .DI(\blk00000003/sig0000013d ),
    .S(\blk00000003/sig0000013c ),
    .O(\blk00000003/sig00000137 )
  );
  XORCY   \blk00000003/blk00000082  (
    .CI(\blk00000003/sig0000013b ),
    .LI(\blk00000003/sig0000013c ),
    .O(pi_5[29])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk00000081  (
    .I0(\blk00000003/sig00000139 ),
    .I1(\blk00000003/sig0000013a ),
    .O(\blk00000003/sig00000138 )
  );
  MUXCY   \blk00000003/blk00000080  (
    .CI(\blk00000003/sig00000137 ),
    .DI(\blk00000003/sig00000139 ),
    .S(\blk00000003/sig00000138 ),
    .O(\blk00000003/sig00000133 )
  );
  XORCY   \blk00000003/blk0000007f  (
    .CI(\blk00000003/sig00000137 ),
    .LI(\blk00000003/sig00000138 ),
    .O(pi_5[30])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk0000007e  (
    .I0(\blk00000003/sig00000135 ),
    .I1(\blk00000003/sig00000136 ),
    .O(\blk00000003/sig00000134 )
  );
  MUXCY   \blk00000003/blk0000007d  (
    .CI(\blk00000003/sig00000133 ),
    .DI(\blk00000003/sig00000135 ),
    .S(\blk00000003/sig00000134 ),
    .O(\blk00000003/sig0000012f )
  );
  XORCY   \blk00000003/blk0000007c  (
    .CI(\blk00000003/sig00000133 ),
    .LI(\blk00000003/sig00000134 ),
    .O(pi_5[31])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk0000007b  (
    .I0(\blk00000003/sig00000131 ),
    .I1(\blk00000003/sig00000132 ),
    .O(\blk00000003/sig00000130 )
  );
  MUXCY   \blk00000003/blk0000007a  (
    .CI(\blk00000003/sig0000012f ),
    .DI(\blk00000003/sig00000131 ),
    .S(\blk00000003/sig00000130 ),
    .O(\blk00000003/sig0000012b )
  );
  XORCY   \blk00000003/blk00000079  (
    .CI(\blk00000003/sig0000012f ),
    .LI(\blk00000003/sig00000130 ),
    .O(pi_5[32])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk00000078  (
    .I0(\blk00000003/sig0000012d ),
    .I1(\blk00000003/sig0000012e ),
    .O(\blk00000003/sig0000012c )
  );
  MUXCY   \blk00000003/blk00000077  (
    .CI(\blk00000003/sig0000012b ),
    .DI(\blk00000003/sig0000012d ),
    .S(\blk00000003/sig0000012c ),
    .O(\blk00000003/sig00000127 )
  );
  XORCY   \blk00000003/blk00000076  (
    .CI(\blk00000003/sig0000012b ),
    .LI(\blk00000003/sig0000012c ),
    .O(pi_5[33])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk00000075  (
    .I0(\blk00000003/sig00000129 ),
    .I1(\blk00000003/sig0000012a ),
    .O(\blk00000003/sig00000128 )
  );
  MUXCY   \blk00000003/blk00000074  (
    .CI(\blk00000003/sig00000127 ),
    .DI(\blk00000003/sig00000129 ),
    .S(\blk00000003/sig00000128 ),
    .O(\blk00000003/sig00000123 )
  );
  XORCY   \blk00000003/blk00000073  (
    .CI(\blk00000003/sig00000127 ),
    .LI(\blk00000003/sig00000128 ),
    .O(pi_5[34])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk00000072  (
    .I0(\blk00000003/sig00000125 ),
    .I1(\blk00000003/sig00000126 ),
    .O(\blk00000003/sig00000124 )
  );
  XORCY   \blk00000003/blk00000071  (
    .CI(\blk00000003/sig00000123 ),
    .LI(\blk00000003/sig00000124 ),
    .O(pi_5[35])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000003/blk00000070  (
    .I0(\blk00000003/sig00000121 ),
    .I1(\blk00000003/sig00000122 ),
    .O(\blk00000003/sig00000120 )
  );
  MUXCY   \blk00000003/blk0000006f  (
    .CI(\blk00000003/sig00000093 ),
    .DI(\blk00000003/sig00000121 ),
    .S(\blk00000003/sig00000120 ),
    .O(\blk00000003/sig0000011c )
  );
  XORCY   \blk00000003/blk0000006e  (
    .CI(\blk00000003/sig00000093 ),
    .LI(\blk00000003/sig00000120 ),
    .O(pr_4[0])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000003/blk0000006d  (
    .I0(\blk00000003/sig0000011e ),
    .I1(\blk00000003/sig0000011f ),
    .O(\blk00000003/sig0000011d )
  );
  MUXCY   \blk00000003/blk0000006c  (
    .CI(\blk00000003/sig0000011c ),
    .DI(\blk00000003/sig0000011e ),
    .S(\blk00000003/sig0000011d ),
    .O(\blk00000003/sig00000118 )
  );
  XORCY   \blk00000003/blk0000006b  (
    .CI(\blk00000003/sig0000011c ),
    .LI(\blk00000003/sig0000011d ),
    .O(pr_4[1])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000003/blk0000006a  (
    .I0(\blk00000003/sig0000011a ),
    .I1(\blk00000003/sig0000011b ),
    .O(\blk00000003/sig00000119 )
  );
  MUXCY   \blk00000003/blk00000069  (
    .CI(\blk00000003/sig00000118 ),
    .DI(\blk00000003/sig0000011a ),
    .S(\blk00000003/sig00000119 ),
    .O(\blk00000003/sig00000114 )
  );
  XORCY   \blk00000003/blk00000068  (
    .CI(\blk00000003/sig00000118 ),
    .LI(\blk00000003/sig00000119 ),
    .O(pr_4[2])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000003/blk00000067  (
    .I0(\blk00000003/sig00000116 ),
    .I1(\blk00000003/sig00000117 ),
    .O(\blk00000003/sig00000115 )
  );
  MUXCY   \blk00000003/blk00000066  (
    .CI(\blk00000003/sig00000114 ),
    .DI(\blk00000003/sig00000116 ),
    .S(\blk00000003/sig00000115 ),
    .O(\blk00000003/sig00000110 )
  );
  XORCY   \blk00000003/blk00000065  (
    .CI(\blk00000003/sig00000114 ),
    .LI(\blk00000003/sig00000115 ),
    .O(pr_4[3])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000003/blk00000064  (
    .I0(\blk00000003/sig00000112 ),
    .I1(\blk00000003/sig00000113 ),
    .O(\blk00000003/sig00000111 )
  );
  MUXCY   \blk00000003/blk00000063  (
    .CI(\blk00000003/sig00000110 ),
    .DI(\blk00000003/sig00000112 ),
    .S(\blk00000003/sig00000111 ),
    .O(\blk00000003/sig0000010c )
  );
  XORCY   \blk00000003/blk00000062  (
    .CI(\blk00000003/sig00000110 ),
    .LI(\blk00000003/sig00000111 ),
    .O(pr_4[4])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000003/blk00000061  (
    .I0(\blk00000003/sig0000010e ),
    .I1(\blk00000003/sig0000010f ),
    .O(\blk00000003/sig0000010d )
  );
  MUXCY   \blk00000003/blk00000060  (
    .CI(\blk00000003/sig0000010c ),
    .DI(\blk00000003/sig0000010e ),
    .S(\blk00000003/sig0000010d ),
    .O(\blk00000003/sig00000108 )
  );
  XORCY   \blk00000003/blk0000005f  (
    .CI(\blk00000003/sig0000010c ),
    .LI(\blk00000003/sig0000010d ),
    .O(pr_4[5])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000003/blk0000005e  (
    .I0(\blk00000003/sig0000010a ),
    .I1(\blk00000003/sig0000010b ),
    .O(\blk00000003/sig00000109 )
  );
  MUXCY   \blk00000003/blk0000005d  (
    .CI(\blk00000003/sig00000108 ),
    .DI(\blk00000003/sig0000010a ),
    .S(\blk00000003/sig00000109 ),
    .O(\blk00000003/sig00000104 )
  );
  XORCY   \blk00000003/blk0000005c  (
    .CI(\blk00000003/sig00000108 ),
    .LI(\blk00000003/sig00000109 ),
    .O(pr_4[6])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000003/blk0000005b  (
    .I0(\blk00000003/sig00000106 ),
    .I1(\blk00000003/sig00000107 ),
    .O(\blk00000003/sig00000105 )
  );
  MUXCY   \blk00000003/blk0000005a  (
    .CI(\blk00000003/sig00000104 ),
    .DI(\blk00000003/sig00000106 ),
    .S(\blk00000003/sig00000105 ),
    .O(\blk00000003/sig00000100 )
  );
  XORCY   \blk00000003/blk00000059  (
    .CI(\blk00000003/sig00000104 ),
    .LI(\blk00000003/sig00000105 ),
    .O(pr_4[7])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000003/blk00000058  (
    .I0(\blk00000003/sig00000102 ),
    .I1(\blk00000003/sig00000103 ),
    .O(\blk00000003/sig00000101 )
  );
  MUXCY   \blk00000003/blk00000057  (
    .CI(\blk00000003/sig00000100 ),
    .DI(\blk00000003/sig00000102 ),
    .S(\blk00000003/sig00000101 ),
    .O(\blk00000003/sig000000fc )
  );
  XORCY   \blk00000003/blk00000056  (
    .CI(\blk00000003/sig00000100 ),
    .LI(\blk00000003/sig00000101 ),
    .O(pr_4[8])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000003/blk00000055  (
    .I0(\blk00000003/sig000000fe ),
    .I1(\blk00000003/sig000000ff ),
    .O(\blk00000003/sig000000fd )
  );
  MUXCY   \blk00000003/blk00000054  (
    .CI(\blk00000003/sig000000fc ),
    .DI(\blk00000003/sig000000fe ),
    .S(\blk00000003/sig000000fd ),
    .O(\blk00000003/sig000000f8 )
  );
  XORCY   \blk00000003/blk00000053  (
    .CI(\blk00000003/sig000000fc ),
    .LI(\blk00000003/sig000000fd ),
    .O(pr_4[9])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000003/blk00000052  (
    .I0(\blk00000003/sig000000fa ),
    .I1(\blk00000003/sig000000fb ),
    .O(\blk00000003/sig000000f9 )
  );
  MUXCY   \blk00000003/blk00000051  (
    .CI(\blk00000003/sig000000f8 ),
    .DI(\blk00000003/sig000000fa ),
    .S(\blk00000003/sig000000f9 ),
    .O(\blk00000003/sig000000f4 )
  );
  XORCY   \blk00000003/blk00000050  (
    .CI(\blk00000003/sig000000f8 ),
    .LI(\blk00000003/sig000000f9 ),
    .O(pr_4[10])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000003/blk0000004f  (
    .I0(\blk00000003/sig000000f6 ),
    .I1(\blk00000003/sig000000f7 ),
    .O(\blk00000003/sig000000f5 )
  );
  MUXCY   \blk00000003/blk0000004e  (
    .CI(\blk00000003/sig000000f4 ),
    .DI(\blk00000003/sig000000f6 ),
    .S(\blk00000003/sig000000f5 ),
    .O(\blk00000003/sig000000f0 )
  );
  XORCY   \blk00000003/blk0000004d  (
    .CI(\blk00000003/sig000000f4 ),
    .LI(\blk00000003/sig000000f5 ),
    .O(pr_4[11])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000003/blk0000004c  (
    .I0(\blk00000003/sig000000f2 ),
    .I1(\blk00000003/sig000000f3 ),
    .O(\blk00000003/sig000000f1 )
  );
  MUXCY   \blk00000003/blk0000004b  (
    .CI(\blk00000003/sig000000f0 ),
    .DI(\blk00000003/sig000000f2 ),
    .S(\blk00000003/sig000000f1 ),
    .O(\blk00000003/sig000000ec )
  );
  XORCY   \blk00000003/blk0000004a  (
    .CI(\blk00000003/sig000000f0 ),
    .LI(\blk00000003/sig000000f1 ),
    .O(pr_4[12])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000003/blk00000049  (
    .I0(\blk00000003/sig000000ee ),
    .I1(\blk00000003/sig000000ef ),
    .O(\blk00000003/sig000000ed )
  );
  MUXCY   \blk00000003/blk00000048  (
    .CI(\blk00000003/sig000000ec ),
    .DI(\blk00000003/sig000000ee ),
    .S(\blk00000003/sig000000ed ),
    .O(\blk00000003/sig000000e8 )
  );
  XORCY   \blk00000003/blk00000047  (
    .CI(\blk00000003/sig000000ec ),
    .LI(\blk00000003/sig000000ed ),
    .O(pr_4[13])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000003/blk00000046  (
    .I0(\blk00000003/sig000000ea ),
    .I1(\blk00000003/sig000000eb ),
    .O(\blk00000003/sig000000e9 )
  );
  MUXCY   \blk00000003/blk00000045  (
    .CI(\blk00000003/sig000000e8 ),
    .DI(\blk00000003/sig000000ea ),
    .S(\blk00000003/sig000000e9 ),
    .O(\blk00000003/sig000000e4 )
  );
  XORCY   \blk00000003/blk00000044  (
    .CI(\blk00000003/sig000000e8 ),
    .LI(\blk00000003/sig000000e9 ),
    .O(pr_4[14])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000003/blk00000043  (
    .I0(\blk00000003/sig000000e6 ),
    .I1(\blk00000003/sig000000e7 ),
    .O(\blk00000003/sig000000e5 )
  );
  MUXCY   \blk00000003/blk00000042  (
    .CI(\blk00000003/sig000000e4 ),
    .DI(\blk00000003/sig000000e6 ),
    .S(\blk00000003/sig000000e5 ),
    .O(\blk00000003/sig000000e0 )
  );
  XORCY   \blk00000003/blk00000041  (
    .CI(\blk00000003/sig000000e4 ),
    .LI(\blk00000003/sig000000e5 ),
    .O(pr_4[15])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000003/blk00000040  (
    .I0(\blk00000003/sig000000e2 ),
    .I1(\blk00000003/sig000000e3 ),
    .O(\blk00000003/sig000000e1 )
  );
  MUXCY   \blk00000003/blk0000003f  (
    .CI(\blk00000003/sig000000e0 ),
    .DI(\blk00000003/sig000000e2 ),
    .S(\blk00000003/sig000000e1 ),
    .O(\blk00000003/sig000000dc )
  );
  XORCY   \blk00000003/blk0000003e  (
    .CI(\blk00000003/sig000000e0 ),
    .LI(\blk00000003/sig000000e1 ),
    .O(pr_4[16])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000003/blk0000003d  (
    .I0(\blk00000003/sig000000de ),
    .I1(\blk00000003/sig000000df ),
    .O(\blk00000003/sig000000dd )
  );
  MUXCY   \blk00000003/blk0000003c  (
    .CI(\blk00000003/sig000000dc ),
    .DI(\blk00000003/sig000000de ),
    .S(\blk00000003/sig000000dd ),
    .O(\blk00000003/sig000000d8 )
  );
  XORCY   \blk00000003/blk0000003b  (
    .CI(\blk00000003/sig000000dc ),
    .LI(\blk00000003/sig000000dd ),
    .O(pr_4[17])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000003/blk0000003a  (
    .I0(\blk00000003/sig000000da ),
    .I1(\blk00000003/sig000000db ),
    .O(\blk00000003/sig000000d9 )
  );
  MUXCY   \blk00000003/blk00000039  (
    .CI(\blk00000003/sig000000d8 ),
    .DI(\blk00000003/sig000000da ),
    .S(\blk00000003/sig000000d9 ),
    .O(\blk00000003/sig000000d4 )
  );
  XORCY   \blk00000003/blk00000038  (
    .CI(\blk00000003/sig000000d8 ),
    .LI(\blk00000003/sig000000d9 ),
    .O(pr_4[18])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000003/blk00000037  (
    .I0(\blk00000003/sig000000d6 ),
    .I1(\blk00000003/sig000000d7 ),
    .O(\blk00000003/sig000000d5 )
  );
  MUXCY   \blk00000003/blk00000036  (
    .CI(\blk00000003/sig000000d4 ),
    .DI(\blk00000003/sig000000d6 ),
    .S(\blk00000003/sig000000d5 ),
    .O(\blk00000003/sig000000d0 )
  );
  XORCY   \blk00000003/blk00000035  (
    .CI(\blk00000003/sig000000d4 ),
    .LI(\blk00000003/sig000000d5 ),
    .O(pr_4[19])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000003/blk00000034  (
    .I0(\blk00000003/sig000000d2 ),
    .I1(\blk00000003/sig000000d3 ),
    .O(\blk00000003/sig000000d1 )
  );
  MUXCY   \blk00000003/blk00000033  (
    .CI(\blk00000003/sig000000d0 ),
    .DI(\blk00000003/sig000000d2 ),
    .S(\blk00000003/sig000000d1 ),
    .O(\blk00000003/sig000000cc )
  );
  XORCY   \blk00000003/blk00000032  (
    .CI(\blk00000003/sig000000d0 ),
    .LI(\blk00000003/sig000000d1 ),
    .O(pr_4[20])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000003/blk00000031  (
    .I0(\blk00000003/sig000000ce ),
    .I1(\blk00000003/sig000000cf ),
    .O(\blk00000003/sig000000cd )
  );
  MUXCY   \blk00000003/blk00000030  (
    .CI(\blk00000003/sig000000cc ),
    .DI(\blk00000003/sig000000ce ),
    .S(\blk00000003/sig000000cd ),
    .O(\blk00000003/sig000000c8 )
  );
  XORCY   \blk00000003/blk0000002f  (
    .CI(\blk00000003/sig000000cc ),
    .LI(\blk00000003/sig000000cd ),
    .O(pr_4[21])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000003/blk0000002e  (
    .I0(\blk00000003/sig000000ca ),
    .I1(\blk00000003/sig000000cb ),
    .O(\blk00000003/sig000000c9 )
  );
  MUXCY   \blk00000003/blk0000002d  (
    .CI(\blk00000003/sig000000c8 ),
    .DI(\blk00000003/sig000000ca ),
    .S(\blk00000003/sig000000c9 ),
    .O(\blk00000003/sig000000c4 )
  );
  XORCY   \blk00000003/blk0000002c  (
    .CI(\blk00000003/sig000000c8 ),
    .LI(\blk00000003/sig000000c9 ),
    .O(pr_4[22])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000003/blk0000002b  (
    .I0(\blk00000003/sig000000c6 ),
    .I1(\blk00000003/sig000000c7 ),
    .O(\blk00000003/sig000000c5 )
  );
  MUXCY   \blk00000003/blk0000002a  (
    .CI(\blk00000003/sig000000c4 ),
    .DI(\blk00000003/sig000000c6 ),
    .S(\blk00000003/sig000000c5 ),
    .O(\blk00000003/sig000000c0 )
  );
  XORCY   \blk00000003/blk00000029  (
    .CI(\blk00000003/sig000000c4 ),
    .LI(\blk00000003/sig000000c5 ),
    .O(pr_4[23])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000003/blk00000028  (
    .I0(\blk00000003/sig000000c2 ),
    .I1(\blk00000003/sig000000c3 ),
    .O(\blk00000003/sig000000c1 )
  );
  MUXCY   \blk00000003/blk00000027  (
    .CI(\blk00000003/sig000000c0 ),
    .DI(\blk00000003/sig000000c2 ),
    .S(\blk00000003/sig000000c1 ),
    .O(\blk00000003/sig000000bc )
  );
  XORCY   \blk00000003/blk00000026  (
    .CI(\blk00000003/sig000000c0 ),
    .LI(\blk00000003/sig000000c1 ),
    .O(pr_4[24])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000003/blk00000025  (
    .I0(\blk00000003/sig000000be ),
    .I1(\blk00000003/sig000000bf ),
    .O(\blk00000003/sig000000bd )
  );
  MUXCY   \blk00000003/blk00000024  (
    .CI(\blk00000003/sig000000bc ),
    .DI(\blk00000003/sig000000be ),
    .S(\blk00000003/sig000000bd ),
    .O(\blk00000003/sig000000b8 )
  );
  XORCY   \blk00000003/blk00000023  (
    .CI(\blk00000003/sig000000bc ),
    .LI(\blk00000003/sig000000bd ),
    .O(pr_4[25])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000003/blk00000022  (
    .I0(\blk00000003/sig000000ba ),
    .I1(\blk00000003/sig000000bb ),
    .O(\blk00000003/sig000000b9 )
  );
  MUXCY   \blk00000003/blk00000021  (
    .CI(\blk00000003/sig000000b8 ),
    .DI(\blk00000003/sig000000ba ),
    .S(\blk00000003/sig000000b9 ),
    .O(\blk00000003/sig000000b4 )
  );
  XORCY   \blk00000003/blk00000020  (
    .CI(\blk00000003/sig000000b8 ),
    .LI(\blk00000003/sig000000b9 ),
    .O(pr_4[26])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000003/blk0000001f  (
    .I0(\blk00000003/sig000000b6 ),
    .I1(\blk00000003/sig000000b7 ),
    .O(\blk00000003/sig000000b5 )
  );
  MUXCY   \blk00000003/blk0000001e  (
    .CI(\blk00000003/sig000000b4 ),
    .DI(\blk00000003/sig000000b6 ),
    .S(\blk00000003/sig000000b5 ),
    .O(\blk00000003/sig000000b0 )
  );
  XORCY   \blk00000003/blk0000001d  (
    .CI(\blk00000003/sig000000b4 ),
    .LI(\blk00000003/sig000000b5 ),
    .O(pr_4[27])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000003/blk0000001c  (
    .I0(\blk00000003/sig000000b2 ),
    .I1(\blk00000003/sig000000b3 ),
    .O(\blk00000003/sig000000b1 )
  );
  MUXCY   \blk00000003/blk0000001b  (
    .CI(\blk00000003/sig000000b0 ),
    .DI(\blk00000003/sig000000b2 ),
    .S(\blk00000003/sig000000b1 ),
    .O(\blk00000003/sig000000ac )
  );
  XORCY   \blk00000003/blk0000001a  (
    .CI(\blk00000003/sig000000b0 ),
    .LI(\blk00000003/sig000000b1 ),
    .O(pr_4[28])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000003/blk00000019  (
    .I0(\blk00000003/sig000000ae ),
    .I1(\blk00000003/sig000000af ),
    .O(\blk00000003/sig000000ad )
  );
  MUXCY   \blk00000003/blk00000018  (
    .CI(\blk00000003/sig000000ac ),
    .DI(\blk00000003/sig000000ae ),
    .S(\blk00000003/sig000000ad ),
    .O(\blk00000003/sig000000a8 )
  );
  XORCY   \blk00000003/blk00000017  (
    .CI(\blk00000003/sig000000ac ),
    .LI(\blk00000003/sig000000ad ),
    .O(pr_4[29])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000003/blk00000016  (
    .I0(\blk00000003/sig000000aa ),
    .I1(\blk00000003/sig000000ab ),
    .O(\blk00000003/sig000000a9 )
  );
  MUXCY   \blk00000003/blk00000015  (
    .CI(\blk00000003/sig000000a8 ),
    .DI(\blk00000003/sig000000aa ),
    .S(\blk00000003/sig000000a9 ),
    .O(\blk00000003/sig000000a4 )
  );
  XORCY   \blk00000003/blk00000014  (
    .CI(\blk00000003/sig000000a8 ),
    .LI(\blk00000003/sig000000a9 ),
    .O(pr_4[30])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000003/blk00000013  (
    .I0(\blk00000003/sig000000a6 ),
    .I1(\blk00000003/sig000000a7 ),
    .O(\blk00000003/sig000000a5 )
  );
  MUXCY   \blk00000003/blk00000012  (
    .CI(\blk00000003/sig000000a4 ),
    .DI(\blk00000003/sig000000a6 ),
    .S(\blk00000003/sig000000a5 ),
    .O(\blk00000003/sig000000a0 )
  );
  XORCY   \blk00000003/blk00000011  (
    .CI(\blk00000003/sig000000a4 ),
    .LI(\blk00000003/sig000000a5 ),
    .O(pr_4[31])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000003/blk00000010  (
    .I0(\blk00000003/sig000000a2 ),
    .I1(\blk00000003/sig000000a3 ),
    .O(\blk00000003/sig000000a1 )
  );
  MUXCY   \blk00000003/blk0000000f  (
    .CI(\blk00000003/sig000000a0 ),
    .DI(\blk00000003/sig000000a2 ),
    .S(\blk00000003/sig000000a1 ),
    .O(\blk00000003/sig0000009c )
  );
  XORCY   \blk00000003/blk0000000e  (
    .CI(\blk00000003/sig000000a0 ),
    .LI(\blk00000003/sig000000a1 ),
    .O(pr_4[32])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000003/blk0000000d  (
    .I0(\blk00000003/sig0000009e ),
    .I1(\blk00000003/sig0000009f ),
    .O(\blk00000003/sig0000009d )
  );
  MUXCY   \blk00000003/blk0000000c  (
    .CI(\blk00000003/sig0000009c ),
    .DI(\blk00000003/sig0000009e ),
    .S(\blk00000003/sig0000009d ),
    .O(\blk00000003/sig00000098 )
  );
  XORCY   \blk00000003/blk0000000b  (
    .CI(\blk00000003/sig0000009c ),
    .LI(\blk00000003/sig0000009d ),
    .O(pr_4[33])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000003/blk0000000a  (
    .I0(\blk00000003/sig0000009a ),
    .I1(\blk00000003/sig0000009b ),
    .O(\blk00000003/sig00000099 )
  );
  MUXCY   \blk00000003/blk00000009  (
    .CI(\blk00000003/sig00000098 ),
    .DI(\blk00000003/sig0000009a ),
    .S(\blk00000003/sig00000099 ),
    .O(\blk00000003/sig00000094 )
  );
  XORCY   \blk00000003/blk00000008  (
    .CI(\blk00000003/sig00000098 ),
    .LI(\blk00000003/sig00000099 ),
    .O(pr_4[34])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000003/blk00000007  (
    .I0(\blk00000003/sig00000096 ),
    .I1(\blk00000003/sig00000097 ),
    .O(\blk00000003/sig00000095 )
  );
  XORCY   \blk00000003/blk00000006  (
    .CI(\blk00000003/sig00000094 ),
    .LI(\blk00000003/sig00000095 ),
    .O(pr_4[35])
  );
  VCC   \blk00000003/blk00000005  (
    .P(\blk00000003/sig00000093 )
  );
  GND   \blk00000003/blk00000004  (
    .G(\blk00000003/sig00000092 )
  );
  MULT18X18SIO #(
    .AREG ( 0 ),
    .BREG ( 0 ),
    .B_INPUT ( "DIRECT" ),
    .PREG ( 0 ))
  \blk00000003/blk000000dc/blk000000df  (
    .CEA(\blk00000003/blk000000dc/sig000001fc ),
    .CEB(\blk00000003/blk000000dc/sig000001fc ),
    .CEP(\blk00000003/blk000000dc/sig000001fc ),
    .CLK(\blk00000003/sig00000049 ),
    .RSTA(\blk00000003/blk000000dc/sig000001d7 ),
    .RSTB(\blk00000003/blk000000dc/sig000001d7 ),
    .RSTP(\blk00000003/blk000000dc/sig000001d7 ),
    .A({ai_1[17], ai_1[16], ai_1[15], ai_1[14], ai_1[13], ai_1[12], ai_1[11], ai_1[10], ai_1[9], ai_1[8], ai_1[7], ai_1[6], ai_1[5], ai_1[4], ai_1[3]
, ai_1[2], ai_1[1], ai_1[0]}),
    .B({br_2[17], br_2[16], br_2[15], br_2[14], br_2[13], br_2[12], br_2[11], br_2[10], br_2[9], br_2[8], br_2[7], br_2[6], br_2[5], br_2[4], br_2[3]
, br_2[2], br_2[1], br_2[0]}),
    .BCIN({\blk00000003/blk000000dc/sig000001d7 , \blk00000003/blk000000dc/sig000001d7 , \blk00000003/blk000000dc/sig000001d7 , 
\blk00000003/blk000000dc/sig000001d7 , \blk00000003/blk000000dc/sig000001d7 , \blk00000003/blk000000dc/sig000001d7 , 
\blk00000003/blk000000dc/sig000001d7 , \blk00000003/blk000000dc/sig000001d7 , \blk00000003/blk000000dc/sig000001d7 , 
\blk00000003/blk000000dc/sig000001d7 , \blk00000003/blk000000dc/sig000001d7 , \blk00000003/blk000000dc/sig000001d7 , 
\blk00000003/blk000000dc/sig000001d7 , \blk00000003/blk000000dc/sig000001d7 , \blk00000003/blk000000dc/sig000001d7 , 
\blk00000003/blk000000dc/sig000001d7 , \blk00000003/blk000000dc/sig000001d7 , \blk00000003/blk000000dc/sig000001d7 }),
    .P({\blk00000003/sig00000126 , \blk00000003/sig0000012a , \blk00000003/sig0000012e , \blk00000003/sig00000132 , \blk00000003/sig00000136 , 
\blk00000003/sig0000013a , \blk00000003/sig0000013e , \blk00000003/sig00000142 , \blk00000003/sig00000146 , \blk00000003/sig0000014a , 
\blk00000003/sig0000014e , \blk00000003/sig00000152 , \blk00000003/sig00000156 , \blk00000003/sig0000015a , \blk00000003/sig0000015e , 
\blk00000003/sig00000162 , \blk00000003/sig00000166 , \blk00000003/sig0000016a , \blk00000003/sig0000016e , \blk00000003/sig00000172 , 
\blk00000003/sig00000176 , \blk00000003/sig0000017a , \blk00000003/sig0000017e , \blk00000003/sig00000182 , \blk00000003/sig00000186 , 
\blk00000003/sig0000018a , \blk00000003/sig0000018e , \blk00000003/sig00000192 , \blk00000003/sig00000196 , \blk00000003/sig0000019a , 
\blk00000003/sig0000019e , \blk00000003/sig000001a2 , \blk00000003/sig000001a6 , \blk00000003/sig000001aa , \blk00000003/sig000001ae , 
\blk00000003/sig000001b1 }),
    .BCOUT({\NLW_blk00000003/blk000000dc/blk000000df_BCOUT<17>_UNCONNECTED , \NLW_blk00000003/blk000000dc/blk000000df_BCOUT<16>_UNCONNECTED , 
\NLW_blk00000003/blk000000dc/blk000000df_BCOUT<15>_UNCONNECTED , \NLW_blk00000003/blk000000dc/blk000000df_BCOUT<14>_UNCONNECTED , 
\NLW_blk00000003/blk000000dc/blk000000df_BCOUT<13>_UNCONNECTED , \NLW_blk00000003/blk000000dc/blk000000df_BCOUT<12>_UNCONNECTED , 
\NLW_blk00000003/blk000000dc/blk000000df_BCOUT<11>_UNCONNECTED , \NLW_blk00000003/blk000000dc/blk000000df_BCOUT<10>_UNCONNECTED , 
\NLW_blk00000003/blk000000dc/blk000000df_BCOUT<9>_UNCONNECTED , \NLW_blk00000003/blk000000dc/blk000000df_BCOUT<8>_UNCONNECTED , 
\NLW_blk00000003/blk000000dc/blk000000df_BCOUT<7>_UNCONNECTED , \NLW_blk00000003/blk000000dc/blk000000df_BCOUT<6>_UNCONNECTED , 
\NLW_blk00000003/blk000000dc/blk000000df_BCOUT<5>_UNCONNECTED , \NLW_blk00000003/blk000000dc/blk000000df_BCOUT<4>_UNCONNECTED , 
\NLW_blk00000003/blk000000dc/blk000000df_BCOUT<3>_UNCONNECTED , \NLW_blk00000003/blk000000dc/blk000000df_BCOUT<2>_UNCONNECTED , 
\NLW_blk00000003/blk000000dc/blk000000df_BCOUT<1>_UNCONNECTED , \NLW_blk00000003/blk000000dc/blk000000df_BCOUT<0>_UNCONNECTED })
  );
  GND   \blk00000003/blk000000dc/blk000000de  (
    .G(\blk00000003/blk000000dc/sig000001d7 )
  );
  VCC   \blk00000003/blk000000dc/blk000000dd  (
    .P(\blk00000003/blk000000dc/sig000001fc )
  );
  MULT18X18SIO #(
    .AREG ( 0 ),
    .BREG ( 0 ),
    .B_INPUT ( "DIRECT" ),
    .PREG ( 0 ))
  \blk00000003/blk000000e0/blk000000e3  (
    .CEA(\blk00000003/blk000000e0/sig00000247 ),
    .CEB(\blk00000003/blk000000e0/sig00000247 ),
    .CEP(\blk00000003/blk000000e0/sig00000247 ),
    .CLK(\blk00000003/sig00000049 ),
    .RSTA(\blk00000003/blk000000e0/sig00000222 ),
    .RSTB(\blk00000003/blk000000e0/sig00000222 ),
    .RSTP(\blk00000003/blk000000e0/sig00000222 ),
    .A({ar_0[17], ar_0[16], ar_0[15], ar_0[14], ar_0[13], ar_0[12], ar_0[11], ar_0[10], ar_0[9], ar_0[8], ar_0[7], ar_0[6], ar_0[5], ar_0[4], ar_0[3]
, ar_0[2], ar_0[1], ar_0[0]}),
    .B({bi_3[17], bi_3[16], bi_3[15], bi_3[14], bi_3[13], bi_3[12], bi_3[11], bi_3[10], bi_3[9], bi_3[8], bi_3[7], bi_3[6], bi_3[5], bi_3[4], bi_3[3]
, bi_3[2], bi_3[1], bi_3[0]}),
    .BCIN({\blk00000003/blk000000e0/sig00000222 , \blk00000003/blk000000e0/sig00000222 , \blk00000003/blk000000e0/sig00000222 , 
\blk00000003/blk000000e0/sig00000222 , \blk00000003/blk000000e0/sig00000222 , \blk00000003/blk000000e0/sig00000222 , 
\blk00000003/blk000000e0/sig00000222 , \blk00000003/blk000000e0/sig00000222 , \blk00000003/blk000000e0/sig00000222 , 
\blk00000003/blk000000e0/sig00000222 , \blk00000003/blk000000e0/sig00000222 , \blk00000003/blk000000e0/sig00000222 , 
\blk00000003/blk000000e0/sig00000222 , \blk00000003/blk000000e0/sig00000222 , \blk00000003/blk000000e0/sig00000222 , 
\blk00000003/blk000000e0/sig00000222 , \blk00000003/blk000000e0/sig00000222 , \blk00000003/blk000000e0/sig00000222 }),
    .P({\blk00000003/sig00000125 , \blk00000003/sig00000129 , \blk00000003/sig0000012d , \blk00000003/sig00000131 , \blk00000003/sig00000135 , 
\blk00000003/sig00000139 , \blk00000003/sig0000013d , \blk00000003/sig00000141 , \blk00000003/sig00000145 , \blk00000003/sig00000149 , 
\blk00000003/sig0000014d , \blk00000003/sig00000151 , \blk00000003/sig00000155 , \blk00000003/sig00000159 , \blk00000003/sig0000015d , 
\blk00000003/sig00000161 , \blk00000003/sig00000165 , \blk00000003/sig00000169 , \blk00000003/sig0000016d , \blk00000003/sig00000171 , 
\blk00000003/sig00000175 , \blk00000003/sig00000179 , \blk00000003/sig0000017d , \blk00000003/sig00000181 , \blk00000003/sig00000185 , 
\blk00000003/sig00000189 , \blk00000003/sig0000018d , \blk00000003/sig00000191 , \blk00000003/sig00000195 , \blk00000003/sig00000199 , 
\blk00000003/sig0000019d , \blk00000003/sig000001a1 , \blk00000003/sig000001a5 , \blk00000003/sig000001a9 , \blk00000003/sig000001ad , 
\blk00000003/sig000001b0 }),
    .BCOUT({\NLW_blk00000003/blk000000e0/blk000000e3_BCOUT<17>_UNCONNECTED , \NLW_blk00000003/blk000000e0/blk000000e3_BCOUT<16>_UNCONNECTED , 
\NLW_blk00000003/blk000000e0/blk000000e3_BCOUT<15>_UNCONNECTED , \NLW_blk00000003/blk000000e0/blk000000e3_BCOUT<14>_UNCONNECTED , 
\NLW_blk00000003/blk000000e0/blk000000e3_BCOUT<13>_UNCONNECTED , \NLW_blk00000003/blk000000e0/blk000000e3_BCOUT<12>_UNCONNECTED , 
\NLW_blk00000003/blk000000e0/blk000000e3_BCOUT<11>_UNCONNECTED , \NLW_blk00000003/blk000000e0/blk000000e3_BCOUT<10>_UNCONNECTED , 
\NLW_blk00000003/blk000000e0/blk000000e3_BCOUT<9>_UNCONNECTED , \NLW_blk00000003/blk000000e0/blk000000e3_BCOUT<8>_UNCONNECTED , 
\NLW_blk00000003/blk000000e0/blk000000e3_BCOUT<7>_UNCONNECTED , \NLW_blk00000003/blk000000e0/blk000000e3_BCOUT<6>_UNCONNECTED , 
\NLW_blk00000003/blk000000e0/blk000000e3_BCOUT<5>_UNCONNECTED , \NLW_blk00000003/blk000000e0/blk000000e3_BCOUT<4>_UNCONNECTED , 
\NLW_blk00000003/blk000000e0/blk000000e3_BCOUT<3>_UNCONNECTED , \NLW_blk00000003/blk000000e0/blk000000e3_BCOUT<2>_UNCONNECTED , 
\NLW_blk00000003/blk000000e0/blk000000e3_BCOUT<1>_UNCONNECTED , \NLW_blk00000003/blk000000e0/blk000000e3_BCOUT<0>_UNCONNECTED })
  );
  GND   \blk00000003/blk000000e0/blk000000e2  (
    .G(\blk00000003/blk000000e0/sig00000222 )
  );
  VCC   \blk00000003/blk000000e0/blk000000e1  (
    .P(\blk00000003/blk000000e0/sig00000247 )
  );
  MULT18X18SIO #(
    .AREG ( 0 ),
    .BREG ( 0 ),
    .B_INPUT ( "DIRECT" ),
    .PREG ( 0 ))
  \blk00000003/blk000000e4/blk000000e7  (
    .CEA(\blk00000003/blk000000e4/sig00000292 ),
    .CEB(\blk00000003/blk000000e4/sig00000292 ),
    .CEP(\blk00000003/blk000000e4/sig00000292 ),
    .CLK(\blk00000003/sig00000049 ),
    .RSTA(\blk00000003/blk000000e4/sig0000026d ),
    .RSTB(\blk00000003/blk000000e4/sig0000026d ),
    .RSTP(\blk00000003/blk000000e4/sig0000026d ),
    .A({ai_1[17], ai_1[16], ai_1[15], ai_1[14], ai_1[13], ai_1[12], ai_1[11], ai_1[10], ai_1[9], ai_1[8], ai_1[7], ai_1[6], ai_1[5], ai_1[4], ai_1[3]
, ai_1[2], ai_1[1], ai_1[0]}),
    .B({bi_3[17], bi_3[16], bi_3[15], bi_3[14], bi_3[13], bi_3[12], bi_3[11], bi_3[10], bi_3[9], bi_3[8], bi_3[7], bi_3[6], bi_3[5], bi_3[4], bi_3[3]
, bi_3[2], bi_3[1], bi_3[0]}),
    .BCIN({\blk00000003/blk000000e4/sig0000026d , \blk00000003/blk000000e4/sig0000026d , \blk00000003/blk000000e4/sig0000026d , 
\blk00000003/blk000000e4/sig0000026d , \blk00000003/blk000000e4/sig0000026d , \blk00000003/blk000000e4/sig0000026d , 
\blk00000003/blk000000e4/sig0000026d , \blk00000003/blk000000e4/sig0000026d , \blk00000003/blk000000e4/sig0000026d , 
\blk00000003/blk000000e4/sig0000026d , \blk00000003/blk000000e4/sig0000026d , \blk00000003/blk000000e4/sig0000026d , 
\blk00000003/blk000000e4/sig0000026d , \blk00000003/blk000000e4/sig0000026d , \blk00000003/blk000000e4/sig0000026d , 
\blk00000003/blk000000e4/sig0000026d , \blk00000003/blk000000e4/sig0000026d , \blk00000003/blk000000e4/sig0000026d }),
    .P({\blk00000003/sig00000097 , \blk00000003/sig0000009b , \blk00000003/sig0000009f , \blk00000003/sig000000a3 , \blk00000003/sig000000a7 , 
\blk00000003/sig000000ab , \blk00000003/sig000000af , \blk00000003/sig000000b3 , \blk00000003/sig000000b7 , \blk00000003/sig000000bb , 
\blk00000003/sig000000bf , \blk00000003/sig000000c3 , \blk00000003/sig000000c7 , \blk00000003/sig000000cb , \blk00000003/sig000000cf , 
\blk00000003/sig000000d3 , \blk00000003/sig000000d7 , \blk00000003/sig000000db , \blk00000003/sig000000df , \blk00000003/sig000000e3 , 
\blk00000003/sig000000e7 , \blk00000003/sig000000eb , \blk00000003/sig000000ef , \blk00000003/sig000000f3 , \blk00000003/sig000000f7 , 
\blk00000003/sig000000fb , \blk00000003/sig000000ff , \blk00000003/sig00000103 , \blk00000003/sig00000107 , \blk00000003/sig0000010b , 
\blk00000003/sig0000010f , \blk00000003/sig00000113 , \blk00000003/sig00000117 , \blk00000003/sig0000011b , \blk00000003/sig0000011f , 
\blk00000003/sig00000122 }),
    .BCOUT({\NLW_blk00000003/blk000000e4/blk000000e7_BCOUT<17>_UNCONNECTED , \NLW_blk00000003/blk000000e4/blk000000e7_BCOUT<16>_UNCONNECTED , 
\NLW_blk00000003/blk000000e4/blk000000e7_BCOUT<15>_UNCONNECTED , \NLW_blk00000003/blk000000e4/blk000000e7_BCOUT<14>_UNCONNECTED , 
\NLW_blk00000003/blk000000e4/blk000000e7_BCOUT<13>_UNCONNECTED , \NLW_blk00000003/blk000000e4/blk000000e7_BCOUT<12>_UNCONNECTED , 
\NLW_blk00000003/blk000000e4/blk000000e7_BCOUT<11>_UNCONNECTED , \NLW_blk00000003/blk000000e4/blk000000e7_BCOUT<10>_UNCONNECTED , 
\NLW_blk00000003/blk000000e4/blk000000e7_BCOUT<9>_UNCONNECTED , \NLW_blk00000003/blk000000e4/blk000000e7_BCOUT<8>_UNCONNECTED , 
\NLW_blk00000003/blk000000e4/blk000000e7_BCOUT<7>_UNCONNECTED , \NLW_blk00000003/blk000000e4/blk000000e7_BCOUT<6>_UNCONNECTED , 
\NLW_blk00000003/blk000000e4/blk000000e7_BCOUT<5>_UNCONNECTED , \NLW_blk00000003/blk000000e4/blk000000e7_BCOUT<4>_UNCONNECTED , 
\NLW_blk00000003/blk000000e4/blk000000e7_BCOUT<3>_UNCONNECTED , \NLW_blk00000003/blk000000e4/blk000000e7_BCOUT<2>_UNCONNECTED , 
\NLW_blk00000003/blk000000e4/blk000000e7_BCOUT<1>_UNCONNECTED , \NLW_blk00000003/blk000000e4/blk000000e7_BCOUT<0>_UNCONNECTED })
  );
  GND   \blk00000003/blk000000e4/blk000000e6  (
    .G(\blk00000003/blk000000e4/sig0000026d )
  );
  VCC   \blk00000003/blk000000e4/blk000000e5  (
    .P(\blk00000003/blk000000e4/sig00000292 )
  );
  MULT18X18SIO #(
    .AREG ( 0 ),
    .BREG ( 0 ),
    .B_INPUT ( "DIRECT" ),
    .PREG ( 0 ))
  \blk00000003/blk000000e8/blk000000eb  (
    .CEA(\blk00000003/blk000000e8/sig000002dd ),
    .CEB(\blk00000003/blk000000e8/sig000002dd ),
    .CEP(\blk00000003/blk000000e8/sig000002dd ),
    .CLK(\blk00000003/sig00000049 ),
    .RSTA(\blk00000003/blk000000e8/sig000002b8 ),
    .RSTB(\blk00000003/blk000000e8/sig000002b8 ),
    .RSTP(\blk00000003/blk000000e8/sig000002b8 ),
    .A({ar_0[17], ar_0[16], ar_0[15], ar_0[14], ar_0[13], ar_0[12], ar_0[11], ar_0[10], ar_0[9], ar_0[8], ar_0[7], ar_0[6], ar_0[5], ar_0[4], ar_0[3]
, ar_0[2], ar_0[1], ar_0[0]}),
    .B({br_2[17], br_2[16], br_2[15], br_2[14], br_2[13], br_2[12], br_2[11], br_2[10], br_2[9], br_2[8], br_2[7], br_2[6], br_2[5], br_2[4], br_2[3]
, br_2[2], br_2[1], br_2[0]}),
    .BCIN({\blk00000003/blk000000e8/sig000002b8 , \blk00000003/blk000000e8/sig000002b8 , \blk00000003/blk000000e8/sig000002b8 , 
\blk00000003/blk000000e8/sig000002b8 , \blk00000003/blk000000e8/sig000002b8 , \blk00000003/blk000000e8/sig000002b8 , 
\blk00000003/blk000000e8/sig000002b8 , \blk00000003/blk000000e8/sig000002b8 , \blk00000003/blk000000e8/sig000002b8 , 
\blk00000003/blk000000e8/sig000002b8 , \blk00000003/blk000000e8/sig000002b8 , \blk00000003/blk000000e8/sig000002b8 , 
\blk00000003/blk000000e8/sig000002b8 , \blk00000003/blk000000e8/sig000002b8 , \blk00000003/blk000000e8/sig000002b8 , 
\blk00000003/blk000000e8/sig000002b8 , \blk00000003/blk000000e8/sig000002b8 , \blk00000003/blk000000e8/sig000002b8 }),
    .P({\blk00000003/sig00000096 , \blk00000003/sig0000009a , \blk00000003/sig0000009e , \blk00000003/sig000000a2 , \blk00000003/sig000000a6 , 
\blk00000003/sig000000aa , \blk00000003/sig000000ae , \blk00000003/sig000000b2 , \blk00000003/sig000000b6 , \blk00000003/sig000000ba , 
\blk00000003/sig000000be , \blk00000003/sig000000c2 , \blk00000003/sig000000c6 , \blk00000003/sig000000ca , \blk00000003/sig000000ce , 
\blk00000003/sig000000d2 , \blk00000003/sig000000d6 , \blk00000003/sig000000da , \blk00000003/sig000000de , \blk00000003/sig000000e2 , 
\blk00000003/sig000000e6 , \blk00000003/sig000000ea , \blk00000003/sig000000ee , \blk00000003/sig000000f2 , \blk00000003/sig000000f6 , 
\blk00000003/sig000000fa , \blk00000003/sig000000fe , \blk00000003/sig00000102 , \blk00000003/sig00000106 , \blk00000003/sig0000010a , 
\blk00000003/sig0000010e , \blk00000003/sig00000112 , \blk00000003/sig00000116 , \blk00000003/sig0000011a , \blk00000003/sig0000011e , 
\blk00000003/sig00000121 }),
    .BCOUT({\NLW_blk00000003/blk000000e8/blk000000eb_BCOUT<17>_UNCONNECTED , \NLW_blk00000003/blk000000e8/blk000000eb_BCOUT<16>_UNCONNECTED , 
\NLW_blk00000003/blk000000e8/blk000000eb_BCOUT<15>_UNCONNECTED , \NLW_blk00000003/blk000000e8/blk000000eb_BCOUT<14>_UNCONNECTED , 
\NLW_blk00000003/blk000000e8/blk000000eb_BCOUT<13>_UNCONNECTED , \NLW_blk00000003/blk000000e8/blk000000eb_BCOUT<12>_UNCONNECTED , 
\NLW_blk00000003/blk000000e8/blk000000eb_BCOUT<11>_UNCONNECTED , \NLW_blk00000003/blk000000e8/blk000000eb_BCOUT<10>_UNCONNECTED , 
\NLW_blk00000003/blk000000e8/blk000000eb_BCOUT<9>_UNCONNECTED , \NLW_blk00000003/blk000000e8/blk000000eb_BCOUT<8>_UNCONNECTED , 
\NLW_blk00000003/blk000000e8/blk000000eb_BCOUT<7>_UNCONNECTED , \NLW_blk00000003/blk000000e8/blk000000eb_BCOUT<6>_UNCONNECTED , 
\NLW_blk00000003/blk000000e8/blk000000eb_BCOUT<5>_UNCONNECTED , \NLW_blk00000003/blk000000e8/blk000000eb_BCOUT<4>_UNCONNECTED , 
\NLW_blk00000003/blk000000e8/blk000000eb_BCOUT<3>_UNCONNECTED , \NLW_blk00000003/blk000000e8/blk000000eb_BCOUT<2>_UNCONNECTED , 
\NLW_blk00000003/blk000000e8/blk000000eb_BCOUT<1>_UNCONNECTED , \NLW_blk00000003/blk000000e8/blk000000eb_BCOUT<0>_UNCONNECTED })
  );
  GND   \blk00000003/blk000000e8/blk000000ea  (
    .G(\blk00000003/blk000000e8/sig000002b8 )
  );
  VCC   \blk00000003/blk000000e8/blk000000e9  (
    .P(\blk00000003/blk000000e8/sig000002dd )
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
