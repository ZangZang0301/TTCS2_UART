// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2.2 (win64) Build 3118627 Tue Feb  9 05:14:06 MST 2021
// Date        : Tue Jan 14 02:42:08 2025
// Host        : Admin-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Vivado/TTCS2/TTCS2_1/TTCS2_1.gen/sources_1/bd/TTCS_1/ip/TTCS_1_freq_divider_0_0/TTCS_1_freq_divider_0_0_sim_netlist.v
// Design      : TTCS_1_freq_divider_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "TTCS_1_freq_divider_0_0,freq_divider,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "freq_divider,Vivado 2020.2.2" *) 
(* NotValidForBitStream *)
module TTCS_1_freq_divider_0_0
   (clk,
    rst,
    clk_c);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN TTCS_1_clk_0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  output clk_c;

  wire clk;
  wire clk_c;
  wire rst;

  TTCS_1_freq_divider_0_0_freq_divider inst
       (.clk(clk),
        .clk_c(clk_c),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "freq_divider" *) 
module TTCS_1_freq_divider_0_0_freq_divider
   (clk_c,
    clk,
    rst);
  output clk_c;
  input clk;
  input rst;

  wire clk;
  wire clk_0_01s_reg_i_1_n_0;
  wire clk_0_01s_reg_i_2_n_0;
  wire clk_0_01s_reg_i_3_n_0;
  wire clk_0_01s_reg_i_4_n_0;
  wire clk_0_01s_reg_i_5_n_0;
  wire clk_0_01s_reg_i_6_n_0;
  wire clk_0_01s_reg_i_7_n_0;
  wire clk_c;
  wire [19:0]counter_0_01s;
  wire counter_0_01s0_carry__0_n_0;
  wire counter_0_01s0_carry__0_n_1;
  wire counter_0_01s0_carry__0_n_2;
  wire counter_0_01s0_carry__0_n_3;
  wire counter_0_01s0_carry__1_n_0;
  wire counter_0_01s0_carry__1_n_1;
  wire counter_0_01s0_carry__1_n_2;
  wire counter_0_01s0_carry__1_n_3;
  wire counter_0_01s0_carry__2_n_0;
  wire counter_0_01s0_carry__2_n_1;
  wire counter_0_01s0_carry__2_n_2;
  wire counter_0_01s0_carry__2_n_3;
  wire counter_0_01s0_carry__3_n_2;
  wire counter_0_01s0_carry__3_n_3;
  wire counter_0_01s0_carry_n_0;
  wire counter_0_01s0_carry_n_1;
  wire counter_0_01s0_carry_n_2;
  wire counter_0_01s0_carry_n_3;
  wire [19:0]counter_0_01s_0;
  wire [19:1]data0;
  wire rst;
  wire [3:2]NLW_counter_0_01s0_carry__3_CO_UNCONNECTED;
  wire [3:3]NLW_counter_0_01s0_carry__3_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFFFFFFFE00000001)) 
    clk_0_01s_reg_i_1
       (.I0(clk_0_01s_reg_i_3_n_0),
        .I1(clk_0_01s_reg_i_4_n_0),
        .I2(clk_0_01s_reg_i_5_n_0),
        .I3(clk_0_01s_reg_i_6_n_0),
        .I4(clk_0_01s_reg_i_7_n_0),
        .I5(clk_c),
        .O(clk_0_01s_reg_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    clk_0_01s_reg_i_2
       (.I0(rst),
        .O(clk_0_01s_reg_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    clk_0_01s_reg_i_3
       (.I0(counter_0_01s[1]),
        .I1(counter_0_01s[0]),
        .I2(counter_0_01s[3]),
        .I3(counter_0_01s[2]),
        .O(clk_0_01s_reg_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFDF)) 
    clk_0_01s_reg_i_4
       (.I0(counter_0_01s[13]),
        .I1(counter_0_01s[12]),
        .I2(counter_0_01s[15]),
        .I3(counter_0_01s[14]),
        .O(clk_0_01s_reg_i_4_n_0));
  LUT4 #(
    .INIT(16'hFF7F)) 
    clk_0_01s_reg_i_5
       (.I0(counter_0_01s[17]),
        .I1(counter_0_01s[16]),
        .I2(counter_0_01s[18]),
        .I3(counter_0_01s[19]),
        .O(clk_0_01s_reg_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFD)) 
    clk_0_01s_reg_i_6
       (.I0(counter_0_01s[8]),
        .I1(counter_0_01s[9]),
        .I2(counter_0_01s[11]),
        .I3(counter_0_01s[10]),
        .O(clk_0_01s_reg_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFD)) 
    clk_0_01s_reg_i_7
       (.I0(counter_0_01s[5]),
        .I1(counter_0_01s[4]),
        .I2(counter_0_01s[7]),
        .I3(counter_0_01s[6]),
        .O(clk_0_01s_reg_i_7_n_0));
  FDCE #(
    .INIT(1'b0)) 
    clk_0_01s_reg_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(clk_0_01s_reg_i_2_n_0),
        .D(clk_0_01s_reg_i_1_n_0),
        .Q(clk_c));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter_0_01s0_carry
       (.CI(1'b0),
        .CO({counter_0_01s0_carry_n_0,counter_0_01s0_carry_n_1,counter_0_01s0_carry_n_2,counter_0_01s0_carry_n_3}),
        .CYINIT(counter_0_01s[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(counter_0_01s[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter_0_01s0_carry__0
       (.CI(counter_0_01s0_carry_n_0),
        .CO({counter_0_01s0_carry__0_n_0,counter_0_01s0_carry__0_n_1,counter_0_01s0_carry__0_n_2,counter_0_01s0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(counter_0_01s[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter_0_01s0_carry__1
       (.CI(counter_0_01s0_carry__0_n_0),
        .CO({counter_0_01s0_carry__1_n_0,counter_0_01s0_carry__1_n_1,counter_0_01s0_carry__1_n_2,counter_0_01s0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(counter_0_01s[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter_0_01s0_carry__2
       (.CI(counter_0_01s0_carry__1_n_0),
        .CO({counter_0_01s0_carry__2_n_0,counter_0_01s0_carry__2_n_1,counter_0_01s0_carry__2_n_2,counter_0_01s0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(counter_0_01s[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter_0_01s0_carry__3
       (.CI(counter_0_01s0_carry__2_n_0),
        .CO({NLW_counter_0_01s0_carry__3_CO_UNCONNECTED[3:2],counter_0_01s0_carry__3_n_2,counter_0_01s0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_counter_0_01s0_carry__3_O_UNCONNECTED[3],data0[19:17]}),
        .S({1'b0,counter_0_01s[19:17]}));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter_0_01s[0]_i_1 
       (.I0(counter_0_01s[0]),
        .O(counter_0_01s_0[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter_0_01s[10]_i_1 
       (.I0(clk_0_01s_reg_i_3_n_0),
        .I1(clk_0_01s_reg_i_4_n_0),
        .I2(clk_0_01s_reg_i_5_n_0),
        .I3(clk_0_01s_reg_i_6_n_0),
        .I4(clk_0_01s_reg_i_7_n_0),
        .I5(data0[10]),
        .O(counter_0_01s_0[10]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter_0_01s[11]_i_1 
       (.I0(clk_0_01s_reg_i_3_n_0),
        .I1(clk_0_01s_reg_i_4_n_0),
        .I2(clk_0_01s_reg_i_5_n_0),
        .I3(clk_0_01s_reg_i_6_n_0),
        .I4(clk_0_01s_reg_i_7_n_0),
        .I5(data0[11]),
        .O(counter_0_01s_0[11]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter_0_01s[12]_i_1 
       (.I0(clk_0_01s_reg_i_3_n_0),
        .I1(clk_0_01s_reg_i_4_n_0),
        .I2(clk_0_01s_reg_i_5_n_0),
        .I3(clk_0_01s_reg_i_6_n_0),
        .I4(clk_0_01s_reg_i_7_n_0),
        .I5(data0[12]),
        .O(counter_0_01s_0[12]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter_0_01s[13]_i_1 
       (.I0(clk_0_01s_reg_i_3_n_0),
        .I1(clk_0_01s_reg_i_4_n_0),
        .I2(clk_0_01s_reg_i_5_n_0),
        .I3(clk_0_01s_reg_i_6_n_0),
        .I4(clk_0_01s_reg_i_7_n_0),
        .I5(data0[13]),
        .O(counter_0_01s_0[13]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter_0_01s[14]_i_1 
       (.I0(clk_0_01s_reg_i_3_n_0),
        .I1(clk_0_01s_reg_i_4_n_0),
        .I2(clk_0_01s_reg_i_5_n_0),
        .I3(clk_0_01s_reg_i_6_n_0),
        .I4(clk_0_01s_reg_i_7_n_0),
        .I5(data0[14]),
        .O(counter_0_01s_0[14]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter_0_01s[15]_i_1 
       (.I0(clk_0_01s_reg_i_3_n_0),
        .I1(clk_0_01s_reg_i_4_n_0),
        .I2(clk_0_01s_reg_i_5_n_0),
        .I3(clk_0_01s_reg_i_6_n_0),
        .I4(clk_0_01s_reg_i_7_n_0),
        .I5(data0[15]),
        .O(counter_0_01s_0[15]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter_0_01s[16]_i_1 
       (.I0(clk_0_01s_reg_i_3_n_0),
        .I1(clk_0_01s_reg_i_4_n_0),
        .I2(clk_0_01s_reg_i_5_n_0),
        .I3(clk_0_01s_reg_i_6_n_0),
        .I4(clk_0_01s_reg_i_7_n_0),
        .I5(data0[16]),
        .O(counter_0_01s_0[16]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter_0_01s[17]_i_1 
       (.I0(clk_0_01s_reg_i_3_n_0),
        .I1(clk_0_01s_reg_i_4_n_0),
        .I2(clk_0_01s_reg_i_5_n_0),
        .I3(clk_0_01s_reg_i_6_n_0),
        .I4(clk_0_01s_reg_i_7_n_0),
        .I5(data0[17]),
        .O(counter_0_01s_0[17]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter_0_01s[18]_i_1 
       (.I0(clk_0_01s_reg_i_3_n_0),
        .I1(clk_0_01s_reg_i_4_n_0),
        .I2(clk_0_01s_reg_i_5_n_0),
        .I3(clk_0_01s_reg_i_6_n_0),
        .I4(clk_0_01s_reg_i_7_n_0),
        .I5(data0[18]),
        .O(counter_0_01s_0[18]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter_0_01s[19]_i_1 
       (.I0(clk_0_01s_reg_i_3_n_0),
        .I1(clk_0_01s_reg_i_4_n_0),
        .I2(clk_0_01s_reg_i_5_n_0),
        .I3(clk_0_01s_reg_i_6_n_0),
        .I4(clk_0_01s_reg_i_7_n_0),
        .I5(data0[19]),
        .O(counter_0_01s_0[19]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter_0_01s[1]_i_1 
       (.I0(clk_0_01s_reg_i_3_n_0),
        .I1(clk_0_01s_reg_i_4_n_0),
        .I2(clk_0_01s_reg_i_5_n_0),
        .I3(clk_0_01s_reg_i_6_n_0),
        .I4(clk_0_01s_reg_i_7_n_0),
        .I5(data0[1]),
        .O(counter_0_01s_0[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter_0_01s[2]_i_1 
       (.I0(clk_0_01s_reg_i_3_n_0),
        .I1(clk_0_01s_reg_i_4_n_0),
        .I2(clk_0_01s_reg_i_5_n_0),
        .I3(clk_0_01s_reg_i_6_n_0),
        .I4(clk_0_01s_reg_i_7_n_0),
        .I5(data0[2]),
        .O(counter_0_01s_0[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter_0_01s[3]_i_1 
       (.I0(clk_0_01s_reg_i_3_n_0),
        .I1(clk_0_01s_reg_i_4_n_0),
        .I2(clk_0_01s_reg_i_5_n_0),
        .I3(clk_0_01s_reg_i_6_n_0),
        .I4(clk_0_01s_reg_i_7_n_0),
        .I5(data0[3]),
        .O(counter_0_01s_0[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter_0_01s[4]_i_1 
       (.I0(clk_0_01s_reg_i_3_n_0),
        .I1(clk_0_01s_reg_i_4_n_0),
        .I2(clk_0_01s_reg_i_5_n_0),
        .I3(clk_0_01s_reg_i_6_n_0),
        .I4(clk_0_01s_reg_i_7_n_0),
        .I5(data0[4]),
        .O(counter_0_01s_0[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter_0_01s[5]_i_1 
       (.I0(clk_0_01s_reg_i_3_n_0),
        .I1(clk_0_01s_reg_i_4_n_0),
        .I2(clk_0_01s_reg_i_5_n_0),
        .I3(clk_0_01s_reg_i_6_n_0),
        .I4(clk_0_01s_reg_i_7_n_0),
        .I5(data0[5]),
        .O(counter_0_01s_0[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter_0_01s[6]_i_1 
       (.I0(clk_0_01s_reg_i_3_n_0),
        .I1(clk_0_01s_reg_i_4_n_0),
        .I2(clk_0_01s_reg_i_5_n_0),
        .I3(clk_0_01s_reg_i_6_n_0),
        .I4(clk_0_01s_reg_i_7_n_0),
        .I5(data0[6]),
        .O(counter_0_01s_0[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter_0_01s[7]_i_1 
       (.I0(clk_0_01s_reg_i_3_n_0),
        .I1(clk_0_01s_reg_i_4_n_0),
        .I2(clk_0_01s_reg_i_5_n_0),
        .I3(clk_0_01s_reg_i_6_n_0),
        .I4(clk_0_01s_reg_i_7_n_0),
        .I5(data0[7]),
        .O(counter_0_01s_0[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter_0_01s[8]_i_1 
       (.I0(clk_0_01s_reg_i_3_n_0),
        .I1(clk_0_01s_reg_i_4_n_0),
        .I2(clk_0_01s_reg_i_5_n_0),
        .I3(clk_0_01s_reg_i_6_n_0),
        .I4(clk_0_01s_reg_i_7_n_0),
        .I5(data0[8]),
        .O(counter_0_01s_0[8]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \counter_0_01s[9]_i_1 
       (.I0(clk_0_01s_reg_i_3_n_0),
        .I1(clk_0_01s_reg_i_4_n_0),
        .I2(clk_0_01s_reg_i_5_n_0),
        .I3(clk_0_01s_reg_i_6_n_0),
        .I4(clk_0_01s_reg_i_7_n_0),
        .I5(data0[9]),
        .O(counter_0_01s_0[9]));
  FDPE #(
    .INIT(1'b1)) 
    \counter_0_01s_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0_01s_0[0]),
        .PRE(clk_0_01s_reg_i_2_n_0),
        .Q(counter_0_01s[0]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_0_01s_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clk_0_01s_reg_i_2_n_0),
        .D(counter_0_01s_0[10]),
        .Q(counter_0_01s[10]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_0_01s_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clk_0_01s_reg_i_2_n_0),
        .D(counter_0_01s_0[11]),
        .Q(counter_0_01s[11]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_0_01s_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clk_0_01s_reg_i_2_n_0),
        .D(counter_0_01s_0[12]),
        .Q(counter_0_01s[12]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_0_01s_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clk_0_01s_reg_i_2_n_0),
        .D(counter_0_01s_0[13]),
        .Q(counter_0_01s[13]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_0_01s_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clk_0_01s_reg_i_2_n_0),
        .D(counter_0_01s_0[14]),
        .Q(counter_0_01s[14]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_0_01s_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clk_0_01s_reg_i_2_n_0),
        .D(counter_0_01s_0[15]),
        .Q(counter_0_01s[15]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_0_01s_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clk_0_01s_reg_i_2_n_0),
        .D(counter_0_01s_0[16]),
        .Q(counter_0_01s[16]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_0_01s_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clk_0_01s_reg_i_2_n_0),
        .D(counter_0_01s_0[17]),
        .Q(counter_0_01s[17]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_0_01s_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clk_0_01s_reg_i_2_n_0),
        .D(counter_0_01s_0[18]),
        .Q(counter_0_01s[18]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_0_01s_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clk_0_01s_reg_i_2_n_0),
        .D(counter_0_01s_0[19]),
        .Q(counter_0_01s[19]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_0_01s_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clk_0_01s_reg_i_2_n_0),
        .D(counter_0_01s_0[1]),
        .Q(counter_0_01s[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_0_01s_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clk_0_01s_reg_i_2_n_0),
        .D(counter_0_01s_0[2]),
        .Q(counter_0_01s[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_0_01s_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clk_0_01s_reg_i_2_n_0),
        .D(counter_0_01s_0[3]),
        .Q(counter_0_01s[3]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_0_01s_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clk_0_01s_reg_i_2_n_0),
        .D(counter_0_01s_0[4]),
        .Q(counter_0_01s[4]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_0_01s_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clk_0_01s_reg_i_2_n_0),
        .D(counter_0_01s_0[5]),
        .Q(counter_0_01s[5]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_0_01s_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clk_0_01s_reg_i_2_n_0),
        .D(counter_0_01s_0[6]),
        .Q(counter_0_01s[6]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_0_01s_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clk_0_01s_reg_i_2_n_0),
        .D(counter_0_01s_0[7]),
        .Q(counter_0_01s[7]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_0_01s_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clk_0_01s_reg_i_2_n_0),
        .D(counter_0_01s_0[8]),
        .Q(counter_0_01s[8]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_0_01s_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(clk_0_01s_reg_i_2_n_0),
        .D(counter_0_01s_0[9]),
        .Q(counter_0_01s[9]));
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
