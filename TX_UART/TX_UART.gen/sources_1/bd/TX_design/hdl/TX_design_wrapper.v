//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2.2 (win64) Build 3118627 Tue Feb  9 05:14:06 MST 2021
//Date        : Tue Jan 14 00:05:51 2025
//Host        : Admin-PC running 64-bit major release  (build 9200)
//Command     : generate_target TX_design_wrapper.bd
//Design      : TX_design_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module TX_design_wrapper
   (Tx_0,
    data_0,
    reset,
    sys_clock);
  output Tx_0;
  input [7:0]data_0;
  input reset;
  input sys_clock;

  wire Tx_0;
  wire [7:0]data_0;
  wire reset;
  wire sys_clock;

  TX_design TX_design_i
       (.Tx_0(Tx_0),
        .data_0(data_0),
        .reset(reset),
        .sys_clock(sys_clock));
endmodule
