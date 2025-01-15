// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2.2 (win64) Build 3118627 Tue Feb  9 05:14:06 MST 2021
// Date        : Thu Jan  2 11:02:45 2025
// Host        : Admin-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Vivado/TTCS2/RX_UART/RX_UART.gen/sources_1/bd/UART_RX/ip/UART_RX_RX_UART_0_0/UART_RX_RX_UART_0_0_stub.v
// Design      : UART_RX_RX_UART_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "RX_UART,Vivado 2020.2.2" *)
module UART_RX_RX_UART_0_0(clk, rst, Rx, Rx_done, data_out)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,Rx,Rx_done,data_out[7:0]" */;
  input clk;
  input rst;
  input Rx;
  output Rx_done;
  output [7:0]data_out;
endmodule
