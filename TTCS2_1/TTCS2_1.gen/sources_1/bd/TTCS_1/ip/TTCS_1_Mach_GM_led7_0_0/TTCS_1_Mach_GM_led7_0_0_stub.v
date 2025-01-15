// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2.2 (win64) Build 3118627 Tue Feb  9 05:14:06 MST 2021
// Date        : Mon Jan 13 21:51:00 2025
// Host        : Admin-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Vivado/TTCS2/TTCS2_1/TTCS2_1.gen/sources_1/bd/TTCS_1/ip/TTCS_1_Mach_GM_led7_0_0/TTCS_1_Mach_GM_led7_0_0_stub.v
// Design      : TTCS_1_Mach_GM_led7_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "Mach_GM_led7,Vivado 2020.2.2" *)
module TTCS_1_Mach_GM_led7_0_0(c, data_in_1, data_in_2, ou)
/* synthesis syn_black_box black_box_pad_pin="c,data_in_1[3:0],data_in_2[3:0],ou[6:0]" */;
  input c;
  input [3:0]data_in_1;
  input [3:0]data_in_2;
  output [6:0]ou;
endmodule
