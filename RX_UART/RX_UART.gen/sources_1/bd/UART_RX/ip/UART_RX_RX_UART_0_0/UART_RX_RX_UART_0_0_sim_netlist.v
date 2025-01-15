// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2.2 (win64) Build 3118627 Tue Feb  9 05:14:06 MST 2021
// Date        : Thu Jan  2 11:02:45 2025
// Host        : Admin-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Vivado/TTCS2/RX_UART/RX_UART.gen/sources_1/bd/UART_RX/ip/UART_RX_RX_UART_0_0/UART_RX_RX_UART_0_0_sim_netlist.v
// Design      : UART_RX_RX_UART_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "UART_RX_RX_UART_0_0,RX_UART,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "RX_UART,Vivado 2020.2.2" *) 
(* NotValidForBitStream *)
module UART_RX_RX_UART_0_0
   (clk,
    rst,
    Rx,
    Rx_done,
    data_out);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN UART_RX_clk_0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input Rx;
  output Rx_done;
  output [7:0]data_out;

  wire Rx;
  wire Rx_done;
  wire clk;
  wire [7:0]data_out;
  wire rst;

  UART_RX_RX_UART_0_0_RX_UART inst
       (.Rx(Rx),
        .Rx_done(Rx_done),
        .clk(clk),
        .data_out(data_out),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "CLOCK_16" *) 
module UART_RX_RX_UART_0_0_CLOCK_16
   (clk16,
    clk);
  output clk16;
  input clk;

  wire clk;
  wire clk16;
  wire clk_out_i_1_n_0;
  wire [8:0]counter;
  wire \counter[0]_i_2_n_0 ;
  wire \counter[3]_i_2_n_0 ;
  wire \counter[4]_i_2_n_0 ;
  wire \counter[5]_i_2_n_0 ;
  wire \counter[5]_i_3_n_0 ;
  wire \counter[5]_i_4_n_0 ;
  wire \counter[8]_i_2_n_0 ;
  wire \counter[8]_i_3_n_0 ;
  wire \counter[8]_i_4_n_0 ;
  wire [8:0]counter_0;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hEFFF1000)) 
    clk_out_i_1
       (.I0(counter[4]),
        .I1(counter[3]),
        .I2(counter[2]),
        .I3(\counter[0]_i_2_n_0 ),
        .I4(clk16),
        .O(clk_out_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clk_out_reg
       (.C(clk),
        .CE(1'b1),
        .D(clk_out_i_1_n_0),
        .Q(clk16),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h1000FFFF)) 
    \counter[0]_i_1 
       (.I0(counter[4]),
        .I1(counter[3]),
        .I2(counter[2]),
        .I3(\counter[0]_i_2_n_0 ),
        .I4(counter[0]),
        .O(counter_0[0]));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \counter[0]_i_2 
       (.I0(counter[6]),
        .I1(counter[5]),
        .I2(counter[8]),
        .I3(counter[7]),
        .I4(counter[1]),
        .I5(counter[0]),
        .O(\counter[0]_i_2_n_0 ));
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
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[0]),
        .Q(counter[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[1]),
        .Q(counter[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[2]),
        .Q(counter[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[3]),
        .Q(counter[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[4]),
        .Q(counter[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[5]),
        .Q(counter[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[6]),
        .Q(counter[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[7]),
        .Q(counter[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(counter_0[8]),
        .Q(counter[8]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "COUNTER" *) 
module UART_RX_RX_UART_0_0_COUNTER
   (\cnt_reg[3]_0 ,
    \FSM_onehot_state_reg[2] ,
    E,
    \FSM_onehot_state_reg[2]_0 ,
    en_b,
    clk16,
    Q,
    rst,
    Rx_done,
    Rx,
    \FSM_onehot_state_reg[0] ,
    rst_b);
  output [0:0]\cnt_reg[3]_0 ;
  output \FSM_onehot_state_reg[2] ;
  output [0:0]E;
  output [0:0]\FSM_onehot_state_reg[2]_0 ;
  input en_b;
  input clk16;
  input [2:0]Q;
  input rst;
  input Rx_done;
  input Rx;
  input \FSM_onehot_state_reg[0] ;
  input rst_b;

  wire [0:0]E;
  wire \FSM_onehot_state_reg[0] ;
  wire \FSM_onehot_state_reg[2] ;
  wire [0:0]\FSM_onehot_state_reg[2]_0 ;
  wire [2:0]Q;
  wire Rx;
  wire Rx_done;
  wire clk16;
  wire \cnt[3]_i_2_n_0 ;
  wire [2:0]cnt_reg;
  wire [0:0]\cnt_reg[3]_0 ;
  wire en_b;
  wire eqOp__2;
  wire [3:0]plusOp;
  wire rst;
  wire rst_b;

  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(Q[2]),
        .I1(eqOp__2),
        .I2(Q[0]),
        .I3(Rx),
        .I4(Q[1]),
        .I5(\FSM_onehot_state_reg[0] ),
        .O(\FSM_onehot_state_reg[2]_0 ));
  LUT5 #(
    .INIT(32'h8FFF8800)) 
    Rx_done_i_1
       (.I0(eqOp__2),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(rst),
        .I4(Rx_done),
        .O(\FSM_onehot_state_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    Rx_done_i_2
       (.I0(cnt_reg[1]),
        .I1(cnt_reg[0]),
        .I2(cnt_reg[2]),
        .I3(\cnt_reg[3]_0 ),
        .O(eqOp__2));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1 
       (.I0(cnt_reg[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt[1]_i_1 
       (.I0(cnt_reg[0]),
        .I1(cnt_reg[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt[2]_i_1 
       (.I0(cnt_reg[1]),
        .I1(cnt_reg[0]),
        .I2(cnt_reg[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \cnt[3]_i_1 
       (.I0(cnt_reg[2]),
        .I1(cnt_reg[0]),
        .I2(cnt_reg[1]),
        .I3(\cnt_reg[3]_0 ),
        .O(plusOp[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[3]_i_2 
       (.I0(rst_b),
        .O(\cnt[3]_i_2_n_0 ));
  FDCE \cnt_reg[0] 
       (.C(clk16),
        .CE(en_b),
        .CLR(\cnt[3]_i_2_n_0 ),
        .D(plusOp[0]),
        .Q(cnt_reg[0]));
  FDCE \cnt_reg[1] 
       (.C(clk16),
        .CE(en_b),
        .CLR(\cnt[3]_i_2_n_0 ),
        .D(plusOp[1]),
        .Q(cnt_reg[1]));
  FDCE \cnt_reg[2] 
       (.C(clk16),
        .CE(en_b),
        .CLR(\cnt[3]_i_2_n_0 ),
        .D(plusOp[2]),
        .Q(cnt_reg[2]));
  FDCE \cnt_reg[3] 
       (.C(clk16),
        .CE(en_b),
        .CLR(\cnt[3]_i_2_n_0 ),
        .D(plusOp[3]),
        .Q(\cnt_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \data_out[7]_i_1 
       (.I0(Q[2]),
        .I1(rst),
        .I2(\cnt_reg[3]_0 ),
        .I3(cnt_reg[2]),
        .I4(cnt_reg[0]),
        .I5(cnt_reg[1]),
        .O(E));
endmodule

(* ORIG_REF_NAME = "COUNTER" *) 
module UART_RX_RX_UART_0_0_COUNTER_0
   (\cnt_reg[3]_0 ,
    \FSM_onehot_state_reg[0] ,
    \cnt_reg[1]_0 ,
    \FSM_onehot_state_reg[0]_0 ,
    data_buff0,
    en_s,
    clk16,
    en_b_reg,
    Q,
    rst,
    en_b,
    Rx,
    rst_s_reg,
    rst_s);
  output \cnt_reg[3]_0 ;
  output \FSM_onehot_state_reg[0] ;
  output \cnt_reg[1]_0 ;
  output \FSM_onehot_state_reg[0]_0 ;
  output data_buff0;
  input en_s;
  input clk16;
  input [0:0]en_b_reg;
  input [2:0]Q;
  input rst;
  input en_b;
  input Rx;
  input rst_s_reg;
  input rst_s;

  wire \FSM_onehot_state_reg[0] ;
  wire \FSM_onehot_state_reg[0]_0 ;
  wire [2:0]Q;
  wire Rx;
  wire clk16;
  wire \cnt[3]_i_2__0_n_0 ;
  wire [3:0]cnt_reg;
  wire \cnt_reg[1]_0 ;
  wire \cnt_reg[3]_0 ;
  wire data_buff0;
  wire \data_buff[7]_i_3_n_0 ;
  wire en_b;
  wire en_b_i_2_n_0;
  wire [0:0]en_b_reg;
  wire en_s;
  wire [3:0]plusOp__0;
  wire rst;
  wire rst_s;
  wire rst_s_i_3_n_0;
  wire rst_s_reg;

  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \FSM_onehot_state[2]_i_4 
       (.I0(cnt_reg[1]),
        .I1(cnt_reg[0]),
        .I2(cnt_reg[2]),
        .I3(cnt_reg[3]),
        .O(\cnt_reg[1]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1__0 
       (.I0(cnt_reg[0]),
        .O(plusOp__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt[1]_i_1__0 
       (.I0(cnt_reg[0]),
        .I1(cnt_reg[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt[2]_i_1__0 
       (.I0(cnt_reg[0]),
        .I1(cnt_reg[1]),
        .I2(cnt_reg[2]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \cnt[3]_i_1__0 
       (.I0(cnt_reg[2]),
        .I1(cnt_reg[1]),
        .I2(cnt_reg[0]),
        .I3(cnt_reg[3]),
        .O(plusOp__0[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[3]_i_2__0 
       (.I0(rst_s),
        .O(\cnt[3]_i_2__0_n_0 ));
  FDCE \cnt_reg[0] 
       (.C(clk16),
        .CE(en_s),
        .CLR(\cnt[3]_i_2__0_n_0 ),
        .D(plusOp__0[0]),
        .Q(cnt_reg[0]));
  FDCE \cnt_reg[1] 
       (.C(clk16),
        .CE(en_s),
        .CLR(\cnt[3]_i_2__0_n_0 ),
        .D(plusOp__0[1]),
        .Q(cnt_reg[1]));
  FDCE \cnt_reg[2] 
       (.C(clk16),
        .CE(en_s),
        .CLR(\cnt[3]_i_2__0_n_0 ),
        .D(plusOp__0[2]),
        .Q(cnt_reg[2]));
  FDCE \cnt_reg[3] 
       (.C(clk16),
        .CE(en_s),
        .CLR(\cnt[3]_i_2__0_n_0 ),
        .D(plusOp__0[3]),
        .Q(cnt_reg[3]));
  LUT6 #(
    .INIT(64'hFFFF080000000000)) 
    \data_buff[7]_i_2 
       (.I0(\data_buff[7]_i_3_n_0 ),
        .I1(Q[2]),
        .I2(en_b_reg),
        .I3(cnt_reg[3]),
        .I4(Q[0]),
        .I5(rst),
        .O(data_buff0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \data_buff[7]_i_3 
       (.I0(cnt_reg[2]),
        .I1(cnt_reg[1]),
        .I2(cnt_reg[0]),
        .O(\data_buff[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAEFFFFFAA200000)) 
    en_b_i_1
       (.I0(en_b_i_2_n_0),
        .I1(en_b_reg),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(rst),
        .I5(en_b),
        .O(\cnt_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    en_b_i_2
       (.I0(cnt_reg[0]),
        .I1(cnt_reg[1]),
        .I2(cnt_reg[2]),
        .I3(Q[2]),
        .I4(cnt_reg[3]),
        .O(en_b_i_2_n_0));
  LUT6 #(
    .INIT(64'hF777FFFFB2220000)) 
    en_s_i_1
       (.I0(Q[0]),
        .I1(Rx),
        .I2(Q[1]),
        .I3(\cnt_reg[1]_0 ),
        .I4(rst),
        .I5(en_s),
        .O(\FSM_onehot_state_reg[0] ));
  LUT6 #(
    .INIT(64'hAAABFFFFAAA80000)) 
    rst_s_i_1
       (.I0(rst_s_reg),
        .I1(rst_s_i_3_n_0),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(rst),
        .I5(rst_s),
        .O(\FSM_onehot_state_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    rst_s_i_3
       (.I0(Rx),
        .I1(Q[1]),
        .I2(cnt_reg[3]),
        .I3(cnt_reg[2]),
        .I4(cnt_reg[0]),
        .I5(cnt_reg[1]),
        .O(rst_s_i_3_n_0));
endmodule

(* ORIG_REF_NAME = "FSM_RX" *) 
module UART_RX_RX_UART_0_0_FSM_RX
   (Rx_done,
    data_out,
    clk16,
    rst,
    Rx);
  output Rx_done;
  output [7:0]data_out;
  input clk16;
  input rst;
  input Rx;

  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_2_n_0 ;
  wire \FSM_onehot_state[2]_i_3_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire Rx;
  wire Rx_done;
  wire bit_cnt_n_1;
  wire bit_cnt_n_3;
  wire clk16;
  wire [3:3]cnt_reg;
  wire data_buff0;
  wire \data_buff[7]_i_1_n_0 ;
  wire \data_buff_reg_n_0_[0] ;
  wire [7:0]data_out;
  wire data_out0;
  wire en_b;
  wire en_s;
  wire [6:0]in10;
  wire rst;
  wire rst_b;
  wire rst_b_i_1_n_0;
  wire rst_s;
  wire rst_s_i_2_n_0;
  wire sample_cnt_n_0;
  wire sample_cnt_n_1;
  wire sample_cnt_n_2;
  wire sample_cnt_n_3;

  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(Rx),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[2]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(Rx),
        .O(\FSM_onehot_state[2]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_state[2]_i_3 
       (.I0(rst),
        .O(\FSM_onehot_state[2]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "start:010,idle:001,data:100" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk16),
        .CE(bit_cnt_n_3),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .PRE(\FSM_onehot_state[2]_i_3_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "start:010,idle:001,data:100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk16),
        .CE(bit_cnt_n_3),
        .CLR(\FSM_onehot_state[2]_i_3_n_0 ),
        .D(\FSM_onehot_state_reg_n_0_[0] ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "start:010,idle:001,data:100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk16),
        .CE(bit_cnt_n_3),
        .CLR(\FSM_onehot_state[2]_i_3_n_0 ),
        .D(\FSM_onehot_state[2]_i_2_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ));
  FDRE Rx_done_reg
       (.C(clk16),
        .CE(1'b1),
        .D(bit_cnt_n_1),
        .Q(Rx_done),
        .R(1'b0));
  UART_RX_RX_UART_0_0_COUNTER bit_cnt
       (.E(data_out0),
        .\FSM_onehot_state_reg[0] (sample_cnt_n_2),
        .\FSM_onehot_state_reg[2] (bit_cnt_n_1),
        .\FSM_onehot_state_reg[2]_0 (bit_cnt_n_3),
        .Q({\FSM_onehot_state_reg_n_0_[2] ,\FSM_onehot_state_reg_n_0_[1] ,\FSM_onehot_state_reg_n_0_[0] }),
        .Rx(Rx),
        .Rx_done(Rx_done),
        .clk16(clk16),
        .\cnt_reg[3]_0 (cnt_reg),
        .en_b(en_b),
        .rst(rst),
        .rst_b(rst_b));
  LUT3 #(
    .INIT(8'h08)) 
    \data_buff[7]_i_1 
       (.I0(rst),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\data_buff[7]_i_1_n_0 ));
  FDRE \data_buff_reg[0] 
       (.C(clk16),
        .CE(data_buff0),
        .D(in10[0]),
        .Q(\data_buff_reg_n_0_[0] ),
        .R(\data_buff[7]_i_1_n_0 ));
  FDRE \data_buff_reg[1] 
       (.C(clk16),
        .CE(data_buff0),
        .D(in10[1]),
        .Q(in10[0]),
        .R(\data_buff[7]_i_1_n_0 ));
  FDRE \data_buff_reg[2] 
       (.C(clk16),
        .CE(data_buff0),
        .D(in10[2]),
        .Q(in10[1]),
        .R(\data_buff[7]_i_1_n_0 ));
  FDRE \data_buff_reg[3] 
       (.C(clk16),
        .CE(data_buff0),
        .D(in10[3]),
        .Q(in10[2]),
        .R(\data_buff[7]_i_1_n_0 ));
  FDRE \data_buff_reg[4] 
       (.C(clk16),
        .CE(data_buff0),
        .D(in10[4]),
        .Q(in10[3]),
        .R(\data_buff[7]_i_1_n_0 ));
  FDRE \data_buff_reg[5] 
       (.C(clk16),
        .CE(data_buff0),
        .D(in10[5]),
        .Q(in10[4]),
        .R(\data_buff[7]_i_1_n_0 ));
  FDRE \data_buff_reg[6] 
       (.C(clk16),
        .CE(data_buff0),
        .D(in10[6]),
        .Q(in10[5]),
        .R(\data_buff[7]_i_1_n_0 ));
  FDRE \data_buff_reg[7] 
       (.C(clk16),
        .CE(data_buff0),
        .D(Rx),
        .Q(in10[6]),
        .R(\data_buff[7]_i_1_n_0 ));
  FDRE \data_out_reg[0] 
       (.C(clk16),
        .CE(data_out0),
        .D(\data_buff_reg_n_0_[0] ),
        .Q(data_out[0]),
        .R(1'b0));
  FDRE \data_out_reg[1] 
       (.C(clk16),
        .CE(data_out0),
        .D(in10[0]),
        .Q(data_out[1]),
        .R(1'b0));
  FDRE \data_out_reg[2] 
       (.C(clk16),
        .CE(data_out0),
        .D(in10[1]),
        .Q(data_out[2]),
        .R(1'b0));
  FDRE \data_out_reg[3] 
       (.C(clk16),
        .CE(data_out0),
        .D(in10[2]),
        .Q(data_out[3]),
        .R(1'b0));
  FDRE \data_out_reg[4] 
       (.C(clk16),
        .CE(data_out0),
        .D(in10[3]),
        .Q(data_out[4]),
        .R(1'b0));
  FDRE \data_out_reg[5] 
       (.C(clk16),
        .CE(data_out0),
        .D(in10[4]),
        .Q(data_out[5]),
        .R(1'b0));
  FDRE \data_out_reg[6] 
       (.C(clk16),
        .CE(data_out0),
        .D(in10[5]),
        .Q(data_out[6]),
        .R(1'b0));
  FDRE \data_out_reg[7] 
       (.C(clk16),
        .CE(data_out0),
        .D(in10[6]),
        .Q(data_out[7]),
        .R(1'b0));
  FDRE en_b_reg
       (.C(clk16),
        .CE(1'b1),
        .D(sample_cnt_n_0),
        .Q(en_b),
        .R(1'b0));
  FDRE en_s_reg
       (.C(clk16),
        .CE(1'b1),
        .D(sample_cnt_n_1),
        .Q(en_s),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hDFC0)) 
    rst_b_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(rst),
        .I3(rst_b),
        .O(rst_b_i_1_n_0));
  FDRE rst_b_reg
       (.C(clk16),
        .CE(1'b1),
        .D(rst_b_i_1_n_0),
        .Q(rst_b),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFCEE)) 
    rst_s_i_2
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(Rx),
        .O(rst_s_i_2_n_0));
  FDRE rst_s_reg
       (.C(clk16),
        .CE(1'b1),
        .D(sample_cnt_n_3),
        .Q(rst_s),
        .R(1'b0));
  UART_RX_RX_UART_0_0_COUNTER_0 sample_cnt
       (.\FSM_onehot_state_reg[0] (sample_cnt_n_1),
        .\FSM_onehot_state_reg[0]_0 (sample_cnt_n_3),
        .Q({\FSM_onehot_state_reg_n_0_[2] ,\FSM_onehot_state_reg_n_0_[1] ,\FSM_onehot_state_reg_n_0_[0] }),
        .Rx(Rx),
        .clk16(clk16),
        .\cnt_reg[1]_0 (sample_cnt_n_2),
        .\cnt_reg[3]_0 (sample_cnt_n_0),
        .data_buff0(data_buff0),
        .en_b(en_b),
        .en_b_reg(cnt_reg),
        .en_s(en_s),
        .rst(rst),
        .rst_s(rst_s),
        .rst_s_reg(rst_s_i_2_n_0));
endmodule

(* ORIG_REF_NAME = "RX_UART" *) 
module UART_RX_RX_UART_0_0_RX_UART
   (data_out,
    Rx_done,
    rst,
    clk,
    Rx);
  output [7:0]data_out;
  output Rx_done;
  input rst;
  input clk;
  input Rx;

  wire Rx;
  wire Rx_done;
  wire clk;
  wire clk16;
  wire [7:0]data_out;
  wire rst;

  UART_RX_RX_UART_0_0_CLOCK_16 CLK_16
       (.clk(clk),
        .clk16(clk16));
  UART_RX_RX_UART_0_0_FSM_RX FSM_BLOCK
       (.Rx(Rx),
        .Rx_done(Rx_done),
        .clk16(clk16),
        .data_out(data_out),
        .rst(rst));
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
