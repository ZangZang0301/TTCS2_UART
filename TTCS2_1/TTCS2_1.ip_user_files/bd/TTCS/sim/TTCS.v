//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2.2 (win64) Build 3118627 Tue Feb  9 05:14:06 MST 2021
//Date        : Sun Jan  5 19:06:05 2025
//Host        : Admin-PC running 64-bit major release  (build 9200)
//Command     : generate_target TTCS.bd
//Design      : TTCS
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "TTCS,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=TTCS,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=7,numReposBlks=7,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "TTCS.hwdef" *) 
module TTCS
   (Rx_0,
    Tx_0,
    clk_0,
    rst_0);
  input Rx_0;
  output Tx_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_0, ASSOCIATED_RESET rst_0, CLK_DOMAIN TTCS_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input clk_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input rst_0;

  wire RX_UART_0_Rx_done;
  wire [7:0]RX_UART_0_data_out;
  wire Rx_0_1;
  wire TX_UART_0_Tx;
  wire TX_UART_0_Tx_done;
  wire clk_0_1;
  wire [7:0]fifo_generator_0_dout;
  wire fifo_generator_0_empty;
  wire fifo_generator_0_full;
  wire rst_0_1;
  wire [0:0]util_vector_logic_0_Res;
  wire [0:0]util_vector_logic_1_Res;
  wire [0:0]util_vector_logic_2_Res;
  wire [0:0]util_vector_logic_3_Res;

  assign Rx_0_1 = Rx_0;
  assign Tx_0 = TX_UART_0_Tx;
  assign clk_0_1 = clk_0;
  assign rst_0_1 = rst_0;
  TTCS_RX_UART_0_0 RX_UART_0
       (.Rx(Rx_0_1),
        .Rx_done(RX_UART_0_Rx_done),
        .clk(clk_0_1),
        .data_out(RX_UART_0_data_out),
        .rst(rst_0_1));
  TTCS_TX_UART_0_0 TX_UART_0
       (.Tx(TX_UART_0_Tx),
        .Tx_Start(util_vector_logic_1_Res),
        .Tx_done(TX_UART_0_Tx_done),
        .clk(clk_0_1),
        .data(fifo_generator_0_dout),
        .rst(rst_0_1));
  TTCS_fifo_generator_0_0 fifo_generator_0
       (.clk(clk_0_1),
        .din(RX_UART_0_data_out),
        .dout(fifo_generator_0_dout),
        .empty(fifo_generator_0_empty),
        .full(fifo_generator_0_full),
        .rd_en(TX_UART_0_Tx_done),
        .srst(util_vector_logic_3_Res),
        .wr_en(util_vector_logic_0_Res));
  TTCS_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(util_vector_logic_2_Res),
        .Op2(RX_UART_0_Rx_done),
        .Res(util_vector_logic_0_Res));
  TTCS_util_vector_logic_1_0 util_vector_logic_1
       (.Op1(fifo_generator_0_empty),
        .Res(util_vector_logic_1_Res));
  TTCS_util_vector_logic_1_1 util_vector_logic_2
       (.Op1(fifo_generator_0_full),
        .Res(util_vector_logic_2_Res));
  TTCS_util_vector_logic_2_0 util_vector_logic_3
       (.Op1(rst_0_1),
        .Res(util_vector_logic_3_Res));
endmodule
