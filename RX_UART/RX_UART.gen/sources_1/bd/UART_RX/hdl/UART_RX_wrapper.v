//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2.2 (win64) Build 3118627 Tue Feb  9 05:14:06 MST 2021
//Date        : Thu Jan  2 11:02:02 2025
//Host        : Admin-PC running 64-bit major release  (build 9200)
//Command     : generate_target UART_RX_wrapper.bd
//Design      : UART_RX_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module UART_RX_wrapper
   (Rx_0,
    clk_0,
    data_out_0,
    rst_0);
  input Rx_0;
  input clk_0;
  output [7:0]data_out_0;
  input rst_0;

  wire Rx_0;
  wire clk_0;
  wire [7:0]data_out_0;
  wire rst_0;

  UART_RX UART_RX_i
       (.Rx_0(Rx_0),
        .clk_0(clk_0),
        .data_out_0(data_out_0),
        .rst_0(rst_0));
endmodule
