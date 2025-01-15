// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2.2 (win64) Build 3118627 Tue Feb  9 05:14:06 MST 2021
// Date        : Sun Jan  5 19:00:25 2025
// Host        : Admin-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Vivado/TTCS2/TTCS2_1/TTCS2_1.gen/sources_1/bd/TTCS/ip/TTCS_TX_UART_0_0/TTCS_TX_UART_0_0_sim_netlist.v
// Design      : TTCS_TX_UART_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "TTCS_TX_UART_0_0,TX_UART,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "TX_UART,Vivado 2020.2.2" *) 
(* NotValidForBitStream *)
module TTCS_TX_UART_0_0
   (clk,
    rst,
    data,
    Tx_Start,
    Tx,
    Tx_done);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN TTCS_clk_0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input [7:0]data;
  input Tx_Start;
  output Tx;
  output Tx_done;

  wire Tx;
  wire Tx_Start;
  wire Tx_done;
  wire clk;
  wire [7:0]data;
  wire rst;

  TTCS_TX_UART_0_0_TX_UART inst
       (.Tx(Tx),
        .Tx_Start(Tx_Start),
        .Tx_done(Tx_done),
        .clk(clk),
        .data(data),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "CLOCK_16" *) 
module TTCS_TX_UART_0_0_CLOCK_16
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

  (* SOFT_HLUTNM = "soft_lutpair5" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \counter[8]_i_3 
       (.I0(counter[3]),
        .I1(counter[4]),
        .O(\counter[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
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
module TTCS_TX_UART_0_0_COUNTER
   (rst_0,
    E,
    en_b,
    clk16,
    en_b_1,
    rst,
    Q,
    Tx_done,
    \FSM_onehot_state_reg[0] ,
    rst_b);
  output rst_0;
  output [0:0]E;
  input en_b;
  input clk16;
  input en_b_1;
  input rst;
  input [0:0]Q;
  input Tx_done;
  input \FSM_onehot_state_reg[0] ;
  input rst_b;

  wire [0:0]E;
  wire \FSM_onehot_state_reg[0] ;
  wire [0:0]Q;
  wire Tx_done;
  wire Tx_done_i_3_n_0;
  wire Tx_done_i_4_n_0;
  wire [3:0]bit_counter;
  wire clk16;
  wire \cnt[3]_i_2_n_0 ;
  wire en_b;
  wire en_b_1;
  wire [3:0]plusOp;
  wire rst;
  wire rst_0;
  wire rst_b;

  LUT6 #(
    .INIT(64'hFFFFFFFF00200000)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(en_b_1),
        .I1(bit_counter[2]),
        .I2(bit_counter[3]),
        .I3(bit_counter[1]),
        .I4(bit_counter[0]),
        .I5(\FSM_onehot_state_reg[0] ),
        .O(E));
  LUT6 #(
    .INIT(64'h80FFFFFF80008000)) 
    Tx_done_i_1
       (.I0(en_b_1),
        .I1(Tx_done_i_3_n_0),
        .I2(Tx_done_i_4_n_0),
        .I3(rst),
        .I4(Q),
        .I5(Tx_done),
        .O(rst_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    Tx_done_i_3
       (.I0(bit_counter[0]),
        .I1(bit_counter[1]),
        .O(Tx_done_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    Tx_done_i_4
       (.I0(bit_counter[3]),
        .I1(bit_counter[2]),
        .O(Tx_done_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1 
       (.I0(bit_counter[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt[1]_i_1 
       (.I0(bit_counter[1]),
        .I1(bit_counter[0]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt[2]_i_1__0 
       (.I0(bit_counter[1]),
        .I1(bit_counter[0]),
        .I2(bit_counter[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6CCC)) 
    \cnt[3]_i_1__0 
       (.I0(bit_counter[2]),
        .I1(bit_counter[3]),
        .I2(bit_counter[0]),
        .I3(bit_counter[1]),
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
        .Q(bit_counter[0]));
  FDCE \cnt_reg[1] 
       (.C(clk16),
        .CE(en_b),
        .CLR(\cnt[3]_i_2_n_0 ),
        .D(plusOp[1]),
        .Q(bit_counter[1]));
  FDCE \cnt_reg[2] 
       (.C(clk16),
        .CE(en_b),
        .CLR(\cnt[3]_i_2_n_0 ),
        .D(plusOp[2]),
        .Q(bit_counter[2]));
  FDCE \cnt_reg[3] 
       (.C(clk16),
        .CE(en_b),
        .CLR(\cnt[3]_i_2_n_0 ),
        .D(plusOp[3]),
        .Q(bit_counter[3]));
endmodule

(* ORIG_REF_NAME = "COUNTER" *) 
module TTCS_TX_UART_0_0_COUNTER_0
   (\FSM_onehot_state_reg[2] ,
    \FSM_onehot_state_reg[2]_0 ,
    en_b_1,
    E,
    \cnt_reg[3]_0 ,
    en_s,
    clk16,
    Q,
    Tx_reg,
    rst_s0,
    Tx,
    rst,
    en_b,
    Tx_Start);
  output \FSM_onehot_state_reg[2] ;
  output \FSM_onehot_state_reg[2]_0 ;
  output en_b_1;
  output [0:0]E;
  output \cnt_reg[3]_0 ;
  input en_s;
  input clk16;
  input [2:0]Q;
  input [0:0]Tx_reg;
  input rst_s0;
  input Tx;
  input rst;
  input en_b;
  input Tx_Start;

  wire [0:0]E;
  wire \FSM_onehot_state_reg[2] ;
  wire \FSM_onehot_state_reg[2]_0 ;
  wire [2:0]Q;
  wire Tx;
  wire Tx_Start;
  wire Tx_i_2_n_0;
  wire [0:0]Tx_reg;
  wire clk16;
  wire \cnt[3]_i_2__0_n_0 ;
  wire [3:0]cnt_reg;
  wire \cnt_reg[3]_0 ;
  wire en_b;
  wire en_b_1;
  wire en_s;
  wire [3:0]plusOp__0;
  wire rst;
  wire rst_s0;

  LUT6 #(
    .INIT(64'hFFFFFFFF00008000)) 
    \FSM_onehot_state[2]_i_3 
       (.I0(cnt_reg[3]),
        .I1(Q[1]),
        .I2(cnt_reg[2]),
        .I3(cnt_reg[1]),
        .I4(cnt_reg[0]),
        .I5(Q[0]),
        .O(\cnt_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    Tx_done_i_2
       (.I0(Q[2]),
        .I1(cnt_reg[3]),
        .I2(cnt_reg[2]),
        .I3(cnt_reg[0]),
        .I4(cnt_reg[1]),
        .O(en_b_1));
  LUT6 #(
    .INIT(64'hF8F8F8FFF8F8F800)) 
    Tx_i_1
       (.I0(Q[2]),
        .I1(Tx_reg),
        .I2(Q[0]),
        .I3(Tx_i_2_n_0),
        .I4(rst_s0),
        .I5(Tx),
        .O(\FSM_onehot_state_reg[2] ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    Tx_i_2
       (.I0(cnt_reg[1]),
        .I1(cnt_reg[0]),
        .I2(cnt_reg[2]),
        .I3(cnt_reg[3]),
        .I4(Q[2]),
        .I5(rst),
        .O(Tx_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1__0 
       (.I0(cnt_reg[0]),
        .O(plusOp__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt[1]_i_1__0 
       (.I0(cnt_reg[0]),
        .I1(cnt_reg[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt[2]_i_1 
       (.I0(cnt_reg[1]),
        .I1(cnt_reg[0]),
        .I2(cnt_reg[2]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \cnt[3]_i_1 
       (.I0(cnt_reg[2]),
        .I1(cnt_reg[0]),
        .I2(cnt_reg[1]),
        .I3(cnt_reg[3]),
        .O(plusOp__0[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[3]_i_2__0 
       (.I0(en_s),
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
  LUT4 #(
    .INIT(16'hF080)) 
    \data_buff[7]_i_1 
       (.I0(Tx_Start),
        .I1(Q[0]),
        .I2(rst),
        .I3(en_b_1),
        .O(E));
  LUT5 #(
    .INIT(32'hAFBFA080)) 
    en_b_i_1
       (.I0(en_b_1),
        .I1(Q[2]),
        .I2(rst),
        .I3(Q[0]),
        .I4(en_b),
        .O(\FSM_onehot_state_reg[2]_0 ));
endmodule

(* ORIG_REF_NAME = "FSM" *) 
module TTCS_TX_UART_0_0_FSM
   (Tx_done,
    Tx,
    clk16,
    rst,
    Tx_Start,
    data);
  output Tx_done;
  output Tx;
  input clk16;
  input rst;
  input Tx_Start;
  input [7:0]data;

  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_2_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire Tx;
  wire Tx_Start;
  wire Tx_done;
  wire bit_cnt_n_0;
  wire bit_cnt_n_1;
  wire clk16;
  wire [7:0]data;
  wire data_buff0;
  wire \data_buff[0]_i_1_n_0 ;
  wire \data_buff[1]_i_1_n_0 ;
  wire \data_buff[2]_i_1_n_0 ;
  wire \data_buff[3]_i_1_n_0 ;
  wire \data_buff[4]_i_1_n_0 ;
  wire \data_buff[5]_i_1_n_0 ;
  wire \data_buff[6]_i_1_n_0 ;
  wire \data_buff[7]_i_2_n_0 ;
  wire \data_buff_reg_n_0_[0] ;
  wire en_b;
  wire en_b_1;
  wire en_s;
  wire [6:0]in8;
  wire rst;
  wire rst_b;
  wire rst_b_0;
  wire rst_b_i_1_n_0;
  wire rst_s;
  wire rst_s0;
  wire rst_s_i_1_n_0;
  wire sample_cnt_n_0;
  wire sample_cnt_n_1;
  wire sample_cnt_n_4;

  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(Tx_Start),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(rst_b_0),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(Tx_Start),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_state[2]_i_2 
       (.I0(rst),
        .O(\FSM_onehot_state[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "data:100,idle:001,start:010" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk16),
        .CE(bit_cnt_n_1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .PRE(\FSM_onehot_state[2]_i_2_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "data:100,idle:001,start:010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk16),
        .CE(bit_cnt_n_1),
        .CLR(\FSM_onehot_state[2]_i_2_n_0 ),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(rst_s));
  (* FSM_ENCODED_STATES = "data:100,idle:001,start:010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk16),
        .CE(bit_cnt_n_1),
        .CLR(\FSM_onehot_state[2]_i_2_n_0 ),
        .D(rst_s),
        .Q(rst_b_0));
  FDRE Tx_done_reg
       (.C(clk16),
        .CE(1'b1),
        .D(bit_cnt_n_0),
        .Q(Tx_done),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hC8)) 
    Tx_i_3
       (.I0(rst_s),
        .I1(rst),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .O(rst_s0));
  FDRE Tx_reg
       (.C(clk16),
        .CE(1'b1),
        .D(sample_cnt_n_0),
        .Q(Tx),
        .R(1'b0));
  TTCS_TX_UART_0_0_COUNTER bit_cnt
       (.E(bit_cnt_n_1),
        .\FSM_onehot_state_reg[0] (sample_cnt_n_4),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .Tx_done(Tx_done),
        .clk16(clk16),
        .en_b(en_b),
        .en_b_1(en_b_1),
        .rst(rst),
        .rst_0(bit_cnt_n_0),
        .rst_b(rst_b));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \data_buff[0]_i_1 
       (.I0(rst_s),
        .I1(in8[0]),
        .I2(rst_b_0),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(data[0]),
        .O(\data_buff[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \data_buff[1]_i_1 
       (.I0(rst_s),
        .I1(in8[1]),
        .I2(rst_b_0),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(data[1]),
        .O(\data_buff[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \data_buff[2]_i_1 
       (.I0(rst_s),
        .I1(in8[2]),
        .I2(rst_b_0),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(data[2]),
        .O(\data_buff[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \data_buff[3]_i_1 
       (.I0(rst_s),
        .I1(in8[3]),
        .I2(rst_b_0),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(data[3]),
        .O(\data_buff[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \data_buff[4]_i_1 
       (.I0(rst_s),
        .I1(in8[4]),
        .I2(rst_b_0),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(data[4]),
        .O(\data_buff[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \data_buff[5]_i_1 
       (.I0(rst_s),
        .I1(in8[5]),
        .I2(rst_b_0),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(data[5]),
        .O(\data_buff[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEAEAEA)) 
    \data_buff[6]_i_1 
       (.I0(rst_s),
        .I1(in8[6]),
        .I2(rst_b_0),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(data[6]),
        .O(\data_buff[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFEEE)) 
    \data_buff[7]_i_2 
       (.I0(rst_b_0),
        .I1(rst_s),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(data[7]),
        .O(\data_buff[7]_i_2_n_0 ));
  FDRE \data_buff_reg[0] 
       (.C(clk16),
        .CE(data_buff0),
        .D(\data_buff[0]_i_1_n_0 ),
        .Q(\data_buff_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \data_buff_reg[1] 
       (.C(clk16),
        .CE(data_buff0),
        .D(\data_buff[1]_i_1_n_0 ),
        .Q(in8[0]),
        .R(1'b0));
  FDRE \data_buff_reg[2] 
       (.C(clk16),
        .CE(data_buff0),
        .D(\data_buff[2]_i_1_n_0 ),
        .Q(in8[1]),
        .R(1'b0));
  FDRE \data_buff_reg[3] 
       (.C(clk16),
        .CE(data_buff0),
        .D(\data_buff[3]_i_1_n_0 ),
        .Q(in8[2]),
        .R(1'b0));
  FDRE \data_buff_reg[4] 
       (.C(clk16),
        .CE(data_buff0),
        .D(\data_buff[4]_i_1_n_0 ),
        .Q(in8[3]),
        .R(1'b0));
  FDRE \data_buff_reg[5] 
       (.C(clk16),
        .CE(data_buff0),
        .D(\data_buff[5]_i_1_n_0 ),
        .Q(in8[4]),
        .R(1'b0));
  FDRE \data_buff_reg[6] 
       (.C(clk16),
        .CE(data_buff0),
        .D(\data_buff[6]_i_1_n_0 ),
        .Q(in8[5]),
        .R(1'b0));
  FDRE \data_buff_reg[7] 
       (.C(clk16),
        .CE(data_buff0),
        .D(\data_buff[7]_i_2_n_0 ),
        .Q(in8[6]),
        .R(1'b0));
  FDRE en_b_reg
       (.C(clk16),
        .CE(1'b1),
        .D(sample_cnt_n_1),
        .Q(en_b),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hBF88)) 
    rst_b_i_1
       (.I0(rst_b_0),
        .I1(rst),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(rst_b),
        .O(rst_b_i_1_n_0));
  FDRE rst_b_reg
       (.C(clk16),
        .CE(1'b1),
        .D(rst_b_i_1_n_0),
        .Q(rst_b),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hBF88)) 
    rst_s_i_1
       (.I0(rst_s),
        .I1(rst),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(en_s),
        .O(rst_s_i_1_n_0));
  FDRE rst_s_reg
       (.C(clk16),
        .CE(1'b1),
        .D(rst_s_i_1_n_0),
        .Q(en_s),
        .R(1'b0));
  TTCS_TX_UART_0_0_COUNTER_0 sample_cnt
       (.E(data_buff0),
        .\FSM_onehot_state_reg[2] (sample_cnt_n_0),
        .\FSM_onehot_state_reg[2]_0 (sample_cnt_n_1),
        .Q({rst_b_0,rst_s,\FSM_onehot_state_reg_n_0_[0] }),
        .Tx(Tx),
        .Tx_Start(Tx_Start),
        .Tx_reg(\data_buff_reg_n_0_[0] ),
        .clk16(clk16),
        .\cnt_reg[3]_0 (sample_cnt_n_4),
        .en_b(en_b),
        .en_b_1(en_b_1),
        .en_s(en_s),
        .rst(rst),
        .rst_s0(rst_s0));
endmodule

(* ORIG_REF_NAME = "TX_UART" *) 
module TTCS_TX_UART_0_0_TX_UART
   (Tx_done,
    Tx,
    clk,
    Tx_Start,
    rst,
    data);
  output Tx_done;
  output Tx;
  input clk;
  input Tx_Start;
  input rst;
  input [7:0]data;

  wire Tx;
  wire Tx_Start;
  wire Tx_done;
  wire clk;
  wire clk16;
  wire [7:0]data;
  wire rst;

  TTCS_TX_UART_0_0_FSM FSM_BLOCK
       (.Tx(Tx),
        .Tx_Start(Tx_Start),
        .Tx_done(Tx_done),
        .clk16(clk16),
        .data(data),
        .rst(rst));
  TTCS_TX_UART_0_0_CLOCK_16 clk_16
       (.clk(clk),
        .clk16(clk16));
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
