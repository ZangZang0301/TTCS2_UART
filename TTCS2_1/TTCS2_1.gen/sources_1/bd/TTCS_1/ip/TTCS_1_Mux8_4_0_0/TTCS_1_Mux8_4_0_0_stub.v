// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2.2 (win64) Build 3118627 Tue Feb  9 05:14:06 MST 2021
// Date        : Tue Jan 14 01:05:40 2025
// Host        : Admin-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Vivado/TTCS2/TTCS2_1/TTCS2_1.gen/sources_1/bd/TTCS_1/ip/TTCS_1_Mux8_4_0_0/TTCS_1_Mux8_4_0_0_stub.v
// Design      : TTCS_1_Mux8_4_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "Mux8_4,Vivado 2020.2.2" *)
module TTCS_1_Mux8_4_0_0(data_in, data_out)
/* synthesis syn_black_box black_box_pad_pin="data_in[7:0],data_out[3:0]" */;
  input [7:0]data_in;
  output [3:0]data_out;
endmodule
