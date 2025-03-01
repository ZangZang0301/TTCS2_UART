// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2.2 (win64) Build 3118627 Tue Feb  9 05:14:06 MST 2021
// Date        : Tue Jan 14 00:49:14 2025
// Host        : Admin-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top TTCS_1_ila_0_0 -prefix
//               TTCS_1_ila_0_0_ TTCS_1_ila_0_0_stub.v
// Design      : TTCS_1_ila_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ila,Vivado 2020.2.2" *)
module TTCS_1_ila_0_0(clk, probe0, probe1, probe2, probe3, probe4)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[7:0],probe1[7:0],probe2[7:0],probe3[3:0],probe4[3:0]" */;
  input clk;
  input [7:0]probe0;
  input [7:0]probe1;
  input [7:0]probe2;
  input [3:0]probe3;
  input [3:0]probe4;
endmodule
