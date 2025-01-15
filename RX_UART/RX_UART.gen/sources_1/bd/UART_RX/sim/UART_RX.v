//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2.2 (win64) Build 3118627 Tue Feb  9 05:14:06 MST 2021
//Date        : Thu Jan  2 11:02:02 2025
//Host        : Admin-PC running 64-bit major release  (build 9200)
//Command     : generate_target UART_RX.bd
//Design      : UART_RX
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "UART_RX,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=UART_RX,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "UART_RX.hwdef" *) 
module UART_RX
   (Rx_0,
    clk_0,
    data_out_0,
    rst_0);
  input Rx_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_0, ASSOCIATED_RESET rst_0, CLK_DOMAIN UART_RX_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input clk_0;
  output [7:0]data_out_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input rst_0;

  wire [7:0]FSM_RX_0_data_out;
  wire RX_UART_0_Rx_done;
  wire Rx_0_1;
  wire clk_0_1;
  wire rst_0_1;

  assign Rx_0_1 = Rx_0;
  assign clk_0_1 = clk_0;
  assign data_out_0[7:0] = FSM_RX_0_data_out;
  assign rst_0_1 = rst_0;
  UART_RX_RX_UART_0_0 RX_UART_0
       (.Rx(Rx_0_1),
        .Rx_done(RX_UART_0_Rx_done),
        .clk(clk_0_1),
        .data_out(FSM_RX_0_data_out),
        .rst(rst_0_1));
  UART_RX_ila_0_0 ila_0
       (.clk(clk_0_1),
        .probe0(RX_UART_0_Rx_done),
        .probe1(FSM_RX_0_data_out));
endmodule
