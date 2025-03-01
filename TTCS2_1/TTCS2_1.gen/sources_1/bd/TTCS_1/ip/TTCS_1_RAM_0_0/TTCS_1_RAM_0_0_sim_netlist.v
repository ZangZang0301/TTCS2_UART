// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2.2 (win64) Build 3118627 Tue Feb  9 05:14:06 MST 2021
// Date        : Tue Jan 14 02:42:08 2025
// Host        : Admin-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Vivado/TTCS2/TTCS2_1/TTCS2_1.gen/sources_1/bd/TTCS_1/ip/TTCS_1_RAM_0_0/TTCS_1_RAM_0_0_sim_netlist.v
// Design      : TTCS_1_RAM_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "TTCS_1_RAM_0_0,RAM,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "RAM,Vivado 2020.2.2" *) 
(* NotValidForBitStream *)
module TTCS_1_RAM_0_0
   (clk,
    rst,
    data_in,
    led_7_1,
    led_7_2,
    wr_en);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input [7:0]data_in;
  output [7:0]led_7_1;
  output [7:0]led_7_2;
  input wr_en;

  wire clk;
  wire [7:0]data_in;
  wire [7:0]led_7_1;
  wire [7:0]led_7_2;
  wire rst;
  wire wr_en;

  TTCS_1_RAM_0_0_RAM inst
       (.clk(clk),
        .data_in(data_in),
        .led_7_1(led_7_1),
        .led_7_2(led_7_2),
        .rst(rst),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "RAM" *) 
module TTCS_1_RAM_0_0_RAM
   (led_7_1,
    led_7_2,
    wr_en,
    data_in,
    clk,
    rst);
  output [7:0]led_7_1;
  output [7:0]led_7_2;
  input wr_en;
  input [7:0]data_in;
  input clk;
  input rst;

  wire \buff1[7]_i_1_n_0 ;
  wire \buff1[7]_i_2_n_0 ;
  wire buff2;
  wire clk;
  wire [7:0]data_in;
  wire [7:0]led_7_1;
  wire [7:0]led_7_2;
  wire read_pointer;
  wire read_pointer_i_1_n_0;
  wire rst;
  wire wr_en;

  LUT2 #(
    .INIT(4'h2)) 
    \buff1[7]_i_1 
       (.I0(wr_en),
        .I1(read_pointer),
        .O(\buff1[7]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \buff1[7]_i_2 
       (.I0(rst),
        .O(\buff1[7]_i_2_n_0 ));
  FDCE \buff1_reg[0] 
       (.C(clk),
        .CE(\buff1[7]_i_1_n_0 ),
        .CLR(\buff1[7]_i_2_n_0 ),
        .D(data_in[0]),
        .Q(led_7_1[0]));
  FDCE \buff1_reg[1] 
       (.C(clk),
        .CE(\buff1[7]_i_1_n_0 ),
        .CLR(\buff1[7]_i_2_n_0 ),
        .D(data_in[1]),
        .Q(led_7_1[1]));
  FDCE \buff1_reg[2] 
       (.C(clk),
        .CE(\buff1[7]_i_1_n_0 ),
        .CLR(\buff1[7]_i_2_n_0 ),
        .D(data_in[2]),
        .Q(led_7_1[2]));
  FDCE \buff1_reg[3] 
       (.C(clk),
        .CE(\buff1[7]_i_1_n_0 ),
        .CLR(\buff1[7]_i_2_n_0 ),
        .D(data_in[3]),
        .Q(led_7_1[3]));
  FDCE \buff1_reg[4] 
       (.C(clk),
        .CE(\buff1[7]_i_1_n_0 ),
        .CLR(\buff1[7]_i_2_n_0 ),
        .D(data_in[4]),
        .Q(led_7_1[4]));
  FDCE \buff1_reg[5] 
       (.C(clk),
        .CE(\buff1[7]_i_1_n_0 ),
        .CLR(\buff1[7]_i_2_n_0 ),
        .D(data_in[5]),
        .Q(led_7_1[5]));
  FDCE \buff1_reg[6] 
       (.C(clk),
        .CE(\buff1[7]_i_1_n_0 ),
        .CLR(\buff1[7]_i_2_n_0 ),
        .D(data_in[6]),
        .Q(led_7_1[6]));
  FDCE \buff1_reg[7] 
       (.C(clk),
        .CE(\buff1[7]_i_1_n_0 ),
        .CLR(\buff1[7]_i_2_n_0 ),
        .D(data_in[7]),
        .Q(led_7_1[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \buff2[7]_i_1 
       (.I0(wr_en),
        .I1(read_pointer),
        .O(buff2));
  FDCE \buff2_reg[0] 
       (.C(clk),
        .CE(buff2),
        .CLR(\buff1[7]_i_2_n_0 ),
        .D(data_in[0]),
        .Q(led_7_2[0]));
  FDCE \buff2_reg[1] 
       (.C(clk),
        .CE(buff2),
        .CLR(\buff1[7]_i_2_n_0 ),
        .D(data_in[1]),
        .Q(led_7_2[1]));
  FDCE \buff2_reg[2] 
       (.C(clk),
        .CE(buff2),
        .CLR(\buff1[7]_i_2_n_0 ),
        .D(data_in[2]),
        .Q(led_7_2[2]));
  FDCE \buff2_reg[3] 
       (.C(clk),
        .CE(buff2),
        .CLR(\buff1[7]_i_2_n_0 ),
        .D(data_in[3]),
        .Q(led_7_2[3]));
  FDCE \buff2_reg[4] 
       (.C(clk),
        .CE(buff2),
        .CLR(\buff1[7]_i_2_n_0 ),
        .D(data_in[4]),
        .Q(led_7_2[4]));
  FDCE \buff2_reg[5] 
       (.C(clk),
        .CE(buff2),
        .CLR(\buff1[7]_i_2_n_0 ),
        .D(data_in[5]),
        .Q(led_7_2[5]));
  FDCE \buff2_reg[6] 
       (.C(clk),
        .CE(buff2),
        .CLR(\buff1[7]_i_2_n_0 ),
        .D(data_in[6]),
        .Q(led_7_2[6]));
  FDCE \buff2_reg[7] 
       (.C(clk),
        .CE(buff2),
        .CLR(\buff1[7]_i_2_n_0 ),
        .D(data_in[7]),
        .Q(led_7_2[7]));
  LUT2 #(
    .INIT(4'h6)) 
    read_pointer_i_1
       (.I0(wr_en),
        .I1(read_pointer),
        .O(read_pointer_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    read_pointer_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\buff1[7]_i_2_n_0 ),
        .D(read_pointer_i_1_n_0),
        .Q(read_pointer));
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
