// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2.2 (win64) Build 3118627 Tue Feb  9 05:14:06 MST 2021
// Date        : Tue Jan 14 02:42:08 2025
// Host        : Admin-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ TTCS_1_RAM_0_0_stub.v
// Design      : TTCS_1_RAM_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "RAM,Vivado 2020.2.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, rst, data_in, led_7_1, led_7_2, wr_en)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,data_in[7:0],led_7_1[7:0],led_7_2[7:0],wr_en" */;
  input clk;
  input rst;
  input [7:0]data_in;
  output [7:0]led_7_1;
  output [7:0]led_7_2;
  input wr_en;
endmodule
