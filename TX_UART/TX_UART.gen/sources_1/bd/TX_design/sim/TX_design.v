//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2.2 (win64) Build 3118627 Tue Feb  9 05:14:06 MST 2021
//Date        : Tue Jan 14 00:05:51 2025
//Host        : Admin-PC running 64-bit major release  (build 9200)
//Command     : generate_target TX_design.bd
//Design      : TX_design
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "TX_design,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=TX_design,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_board_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "TX_design.hwdef" *) 
module TX_design
   (Tx_0,
    data_0,
    reset,
    sys_clock);
  output Tx_0;
  input [7:0]data_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLOCK, ASSOCIATED_RESET reset, CLK_DOMAIN TX_design_sys_clock, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input sys_clock;

  wire TX_UART_0_Tx_done;
  wire Tx;
  wire clk_wiz_0_clk_out1;
  wire [7:0]data_0_1;
  wire reset_1;
  wire [0:0]vio_0_probe_out0;

  assign Tx_0 = Tx;
  assign clk_wiz_0_clk_out1 = sys_clock;
  assign data_0_1 = data_0[7:0];
  assign reset_1 = reset;
  TX_design_TX_UART_0_0 TX_UART_0
       (.Tx(Tx),
        .Tx_Start(vio_0_probe_out0),
        .Tx_done(TX_UART_0_Tx_done),
        .clk(clk_wiz_0_clk_out1),
        .data(data_0_1),
        .rst(reset_1));
  TX_design_ila_0_0 ila_0
       (.clk(clk_wiz_0_clk_out1),
        .probe0(Tx),
        .probe1(data_0_1),
        .probe2(TX_UART_0_Tx_done));
  TX_design_vio_0_0 vio_0
       (.clk(clk_wiz_0_clk_out1),
        .probe_out0(vio_0_probe_out0));
endmodule
