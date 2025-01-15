// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2.2 (win64) Build 3118627 Tue Feb  9 05:14:06 MST 2021
// Date        : Mon Dec 30 17:37:33 2024
// Host        : Admin-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Vivado/TTCS2/RX_UART/RX_UART.gen/sources_1/bd/UART_RX/ip/UART_RX_CLOCK_16_0_0/UART_RX_CLOCK_16_0_0_sim_netlist.v
// Design      : UART_RX_CLOCK_16_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "UART_RX_CLOCK_16_0_0,CLOCK_16,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "CLOCK_16,Vivado 2020.2.2" *) 
(* NotValidForBitStream *)
module UART_RX_CLOCK_16_0_0
   (clk100M,
    clk_16);
  input clk100M;
  output clk_16;

  wire clk100M;
  wire clk_16;

  UART_RX_CLOCK_16_0_0_CLOCK_16 inst
       (.clk100M(clk100M),
        .clk_16(clk_16));
endmodule

(* ORIG_REF_NAME = "CLOCK_16" *) 
module UART_RX_CLOCK_16_0_0_CLOCK_16
   (clk_16,
    clk100M);
  output clk_16;
  input clk100M;

  wire clk100M;
  wire clk_16;
  wire clk_out_i_1_n_0;
  wire clk_out_i_2_n_0;
  wire [8:0]counter;
  wire \counter[3]_i_2_n_0 ;
  wire \counter[4]_i_2_n_0 ;
  wire \counter[5]_i_2_n_0 ;
  wire \counter[5]_i_3_n_0 ;
  wire \counter[5]_i_4_n_0 ;
  wire \counter[8]_i_2_n_0 ;
  wire \counter[8]_i_3_n_0 ;
  wire \counter[8]_i_4_n_0 ;
  wire [8:0]counter_0;

  LUT5 #(
    .INIT(32'hEFFF1000)) 
    clk_out_i_1
       (.I0(counter[4]),
        .I1(counter[3]),
        .I2(counter[2]),
        .I3(clk_out_i_2_n_0),
        .I4(clk_16),
        .O(clk_out_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    clk_out_i_2
       (.I0(counter[6]),
        .I1(counter[5]),
        .I2(counter[8]),
        .I3(counter[7]),
        .I4(counter[1]),
        .I5(counter[0]),
        .O(clk_out_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clk_out_reg
       (.C(clk100M),
        .CE(1'b1),
        .D(clk_out_i_1_n_0),
        .Q(clk_16),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h1000FFFF)) 
    \counter[0]_i_1 
       (.I0(counter[4]),
        .I1(counter[3]),
        .I2(counter[2]),
        .I3(clk_out_i_2_n_0),
        .I4(counter[0]),
        .O(counter_0[0]));
  LUT6 #(
    .INIT(64'h3C3C3C3C3C383C3C)) 
    \counter[1]_i_1 
       (.I0(counter[7]),
        .I1(counter[1]),
        .I2(counter[0]),
        .I3(counter[5]),
        .I4(counter[2]),
        .I5(\counter[5]_i_3_n_0 ),
        .O(counter_0[1]));
  LUT6 #(
    .INIT(64'h3F3FC0C03F3BC0C0)) 
    \counter[2]_i_1 
       (.I0(counter[7]),
        .I1(counter[1]),
        .I2(counter[0]),
        .I3(counter[5]),
        .I4(counter[2]),
        .I5(\counter[5]_i_3_n_0 ),
        .O(counter_0[2]));
  LUT6 #(
    .INIT(64'h32333333CCCCCCCC)) 
    \counter[3]_i_1 
       (.I0(\counter[8]_i_4_n_0 ),
        .I1(counter[3]),
        .I2(counter[4]),
        .I3(counter[8]),
        .I4(counter[6]),
        .I5(\counter[3]_i_2_n_0 ),
        .O(counter_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \counter[3]_i_2 
       (.I0(counter[2]),
        .I1(counter[0]),
        .I2(counter[1]),
        .O(\counter[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F00E0F0F0F)) 
    \counter[4]_i_1 
       (.I0(\counter[8]_i_4_n_0 ),
        .I1(counter[3]),
        .I2(counter[4]),
        .I3(counter[8]),
        .I4(counter[6]),
        .I5(\counter[4]_i_2_n_0 ),
        .O(counter_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \counter[4]_i_2 
       (.I0(counter[1]),
        .I1(counter[0]),
        .I2(counter[2]),
        .I3(counter[3]),
        .O(\counter[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h55555555AAAAAA8A)) 
    \counter[5]_i_1 
       (.I0(\counter[5]_i_2_n_0 ),
        .I1(\counter[5]_i_3_n_0 ),
        .I2(counter[2]),
        .I3(\counter[5]_i_4_n_0 ),
        .I4(counter[7]),
        .I5(counter[5]),
        .O(counter_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \counter[5]_i_2 
       (.I0(counter[4]),
        .I1(counter[3]),
        .I2(counter[2]),
        .I3(counter[0]),
        .I4(counter[1]),
        .O(\counter[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \counter[5]_i_3 
       (.I0(counter[6]),
        .I1(counter[8]),
        .I2(counter[4]),
        .I3(counter[3]),
        .O(\counter[5]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \counter[5]_i_4 
       (.I0(counter[0]),
        .I1(counter[1]),
        .O(\counter[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA255555555)) 
    \counter[6]_i_1 
       (.I0(\counter[8]_i_2_n_0 ),
        .I1(counter[8]),
        .I2(counter[4]),
        .I3(counter[3]),
        .I4(\counter[8]_i_4_n_0 ),
        .I5(counter[6]),
        .O(counter_0[6]));
  LUT6 #(
    .INIT(64'hDDDD5DDD22220222)) 
    \counter[7]_i_1 
       (.I0(counter[6]),
        .I1(\counter[8]_i_2_n_0 ),
        .I2(counter[8]),
        .I3(\counter[8]_i_3_n_0 ),
        .I4(\counter[8]_i_4_n_0 ),
        .I5(counter[7]),
        .O(counter_0[7]));
  LUT6 #(
    .INIT(64'hBFBF33BF40404040)) 
    \counter[8]_i_1 
       (.I0(\counter[8]_i_2_n_0 ),
        .I1(counter[6]),
        .I2(counter[7]),
        .I3(\counter[8]_i_3_n_0 ),
        .I4(\counter[8]_i_4_n_0 ),
        .I5(counter[8]),
        .O(counter_0[8]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \counter[8]_i_2 
       (.I0(counter[1]),
        .I1(counter[0]),
        .I2(counter[2]),
        .I3(counter[3]),
        .I4(counter[4]),
        .I5(counter[5]),
        .O(\counter[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \counter[8]_i_3 
       (.I0(counter[3]),
        .I1(counter[4]),
        .O(\counter[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFFDFF)) 
    \counter[8]_i_4 
       (.I0(counter[2]),
        .I1(counter[5]),
        .I2(counter[0]),
        .I3(counter[1]),
        .I4(counter[7]),
        .O(\counter[8]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \counter_reg[0] 
       (.C(clk100M),
        .CE(1'b1),
        .D(counter_0[0]),
        .Q(counter[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk100M),
        .CE(1'b1),
        .D(counter_0[1]),
        .Q(counter[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk100M),
        .CE(1'b1),
        .D(counter_0[2]),
        .Q(counter[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk100M),
        .CE(1'b1),
        .D(counter_0[3]),
        .Q(counter[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk100M),
        .CE(1'b1),
        .D(counter_0[4]),
        .Q(counter[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk100M),
        .CE(1'b1),
        .D(counter_0[5]),
        .Q(counter[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk100M),
        .CE(1'b1),
        .D(counter_0[6]),
        .Q(counter[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk100M),
        .CE(1'b1),
        .D(counter_0[7]),
        .Q(counter[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk100M),
        .CE(1'b1),
        .D(counter_0[8]),
        .Q(counter[8]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
