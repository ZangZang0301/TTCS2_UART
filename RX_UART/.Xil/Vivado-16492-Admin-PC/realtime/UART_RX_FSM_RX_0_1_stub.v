// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "FSM_RX,Vivado 2020.2.2" *)
module UART_RX_FSM_RX_0_1(clk, rst, Rx, Rx_done, data_out);
  input clk;
  input rst;
  input Rx;
  output Rx_done;
  output [7:0]data_out;
endmodule
