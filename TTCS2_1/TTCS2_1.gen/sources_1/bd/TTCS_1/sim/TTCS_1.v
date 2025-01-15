//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2.2 (win64) Build 3118627 Tue Feb  9 05:14:06 MST 2021
//Date        : Tue Jan 14 02:41:18 2025
//Host        : Admin-PC running 64-bit major release  (build 9200)
//Command     : generate_target TTCS_1.bd
//Design      : TTCS_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "TTCS_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=TTCS_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=8,numReposBlks=8,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=7,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "TTCS_1.hwdef" *) 
module TTCS_1
   (Rx_0,
    clk_0,
    clk_c_0,
    ou_0,
    rst_0);
  input Rx_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_0, ASSOCIATED_RESET rst_0, CLK_DOMAIN TTCS_1_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input clk_0;
  output clk_c_0;
  output [6:0]ou_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input rst_0;

  wire CLOCK_16_0_clk_16;
  wire [6:0]Mach_GM_led7_0_ou;
  wire [3:0]Mux8_4_0_data_out;
  wire [3:0]Mux8_4_1_data_out;
  wire [7:0]RAM_0_led_7_1;
  wire [7:0]RAM_0_led_7_2;
  wire RX_UART_0_Rx_done;
  wire [7:0]RX_UART_0_data_out;
  wire Rx_0_1;
  wire clk_0_1;
  wire freq_divider_0_clk_c;
  wire rst_0_1;

  assign Rx_0_1 = Rx_0;
  assign clk_0_1 = clk_0;
  assign clk_c_0 = freq_divider_0_clk_c;
  assign ou_0[6:0] = Mach_GM_led7_0_ou;
  assign rst_0_1 = rst_0;
  TTCS_1_CLOCK_16_0_0 CLOCK_16_0
       (.clk100M(clk_0_1),
        .clk_16(CLOCK_16_0_clk_16));
  TTCS_1_Mach_GM_led7_0_0 Mach_GM_led7_0
       (.c(freq_divider_0_clk_c),
        .data_in_1(Mux8_4_1_data_out),
        .data_in_2(Mux8_4_0_data_out),
        .ou(Mach_GM_led7_0_ou));
  TTCS_1_Mux8_4_0_0 Mux8_4_0
       (.data_in(RAM_0_led_7_1),
        .data_out(Mux8_4_0_data_out));
  TTCS_1_Mux8_4_1_0 Mux8_4_1
       (.data_in(RAM_0_led_7_2),
        .data_out(Mux8_4_1_data_out));
  TTCS_1_RAM_0_0 RAM_0
       (.clk(CLOCK_16_0_clk_16),
        .data_in(RX_UART_0_data_out),
        .led_7_1(RAM_0_led_7_1),
        .led_7_2(RAM_0_led_7_2),
        .rst(rst_0_1),
        .wr_en(RX_UART_0_Rx_done));
  TTCS_1_RX_UART_0_0 RX_UART_0
       (.Rx(Rx_0_1),
        .Rx_done(RX_UART_0_Rx_done),
        .clk(clk_0_1),
        .data_out(RX_UART_0_data_out),
        .rst(rst_0_1));
  TTCS_1_freq_divider_0_0 freq_divider_0
       (.clk(clk_0_1),
        .clk_c(freq_divider_0_clk_c),
        .rst(rst_0_1));
  TTCS_1_ila_0_0 ila_0
       (.clk(clk_0_1),
        .probe0(RX_UART_0_data_out),
        .probe1(RAM_0_led_7_1),
        .probe2(RAM_0_led_7_2),
        .probe3(Mux8_4_0_data_out),
        .probe4(Mux8_4_1_data_out));
endmodule
