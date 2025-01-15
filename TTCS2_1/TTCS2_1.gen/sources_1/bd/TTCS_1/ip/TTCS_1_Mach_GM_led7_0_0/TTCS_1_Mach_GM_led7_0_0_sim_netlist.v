// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2.2 (win64) Build 3118627 Tue Feb  9 05:14:06 MST 2021
// Date        : Mon Jan 13 21:51:00 2025
// Host        : Admin-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Vivado/TTCS2/TTCS2_1/TTCS2_1.gen/sources_1/bd/TTCS_1/ip/TTCS_1_Mach_GM_led7_0_0/TTCS_1_Mach_GM_led7_0_0_sim_netlist.v
// Design      : TTCS_1_Mach_GM_led7_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "TTCS_1_Mach_GM_led7_0_0,Mach_GM_led7,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "Mach_GM_led7,Vivado 2020.2.2" *) 
(* NotValidForBitStream *)
module TTCS_1_Mach_GM_led7_0_0
   (c,
    data_in_1,
    data_in_2,
    ou);
  input c;
  input [3:0]data_in_1;
  input [3:0]data_in_2;
  output [6:0]ou;

  wire c;
  wire [3:0]data_in_1;
  wire [3:0]data_in_2;
  wire [3:0]\inst/c_2__3 ;
  wire [6:0]ou;

  LUT6 #(
    .INIT(64'hFFFF56A6FFFFFEAE)) 
    \ou[0]_INST_0 
       (.I0(\inst/c_2__3 [1]),
        .I1(data_in_1[2]),
        .I2(c),
        .I3(data_in_2[2]),
        .I4(\inst/c_2__3 [3]),
        .I5(\inst/c_2__3 [0]),
        .O(ou[0]));
  LUT6 #(
    .INIT(64'hFFFF5404FFFFFD5D)) 
    \ou[1]_INST_0 
       (.I0(\inst/c_2__3 [1]),
        .I1(data_in_1[2]),
        .I2(c),
        .I3(data_in_2[2]),
        .I4(\inst/c_2__3 [3]),
        .I5(\inst/c_2__3 [0]),
        .O(ou[1]));
  LUT6 #(
    .INIT(64'h0E0F0E0E0E0F0F0F)) 
    \ou[2]_INST_0 
       (.I0(\inst/c_2__3 [3]),
        .I1(\inst/c_2__3 [1]),
        .I2(\inst/c_2__3 [0]),
        .I3(data_in_2[2]),
        .I4(c),
        .I5(data_in_1[2]),
        .O(ou[2]));
  LUT6 #(
    .INIT(64'hFFFF56A6FFFFABFB)) 
    \ou[3]_INST_0 
       (.I0(\inst/c_2__3 [1]),
        .I1(data_in_1[2]),
        .I2(c),
        .I3(data_in_2[2]),
        .I4(\inst/c_2__3 [3]),
        .I5(\inst/c_2__3 [0]),
        .O(ou[3]));
  LUT6 #(
    .INIT(64'hFFFBFFFFFFFBFBFB)) 
    \ou[4]_INST_0 
       (.I0(\inst/c_2__3 [0]),
        .I1(\inst/c_2__3 [1]),
        .I2(\inst/c_2__3 [3]),
        .I3(data_in_2[2]),
        .I4(c),
        .I5(data_in_1[2]),
        .O(ou[4]));
  LUT6 #(
    .INIT(64'hEFEEEFFFDFDDDFFF)) 
    \ou[5]_INST_0 
       (.I0(\inst/c_2__3 [0]),
        .I1(\inst/c_2__3 [3]),
        .I2(data_in_2[2]),
        .I3(c),
        .I4(data_in_1[2]),
        .I5(\inst/c_2__3 [1]),
        .O(ou[5]));
  LUT6 #(
    .INIT(64'hFFFFFEAEFFFFABFB)) 
    \ou[6]_INST_0 
       (.I0(\inst/c_2__3 [1]),
        .I1(data_in_1[2]),
        .I2(c),
        .I3(data_in_2[2]),
        .I4(\inst/c_2__3 [3]),
        .I5(\inst/c_2__3 [0]),
        .O(ou[6]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ou[6]_INST_0_i_1 
       (.I0(data_in_2[1]),
        .I1(c),
        .I2(data_in_1[1]),
        .O(\inst/c_2__3 [1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \ou[6]_INST_0_i_2 
       (.I0(data_in_2[3]),
        .I1(c),
        .I2(data_in_1[3]),
        .O(\inst/c_2__3 [3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ou[6]_INST_0_i_3 
       (.I0(data_in_2[0]),
        .I1(c),
        .I2(data_in_1[0]),
        .O(\inst/c_2__3 [0]));
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
