-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2.2 (win64) Build 3118627 Tue Feb  9 05:14:06 MST 2021
-- Date        : Sat Jan  4 09:30:18 2025
-- Host        : Admin-PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/Vivado/TTCS2/TX_UART/TX_UART.gen/sources_1/bd/TX_design/ip/TX_design_TX_UART_0_0/TX_design_TX_UART_0_0_stub.vhdl
-- Design      : TX_design_TX_UART_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TX_design_TX_UART_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Tx_Start : in STD_LOGIC;
    Tx : out STD_LOGIC;
    Tx_done : out STD_LOGIC
  );

end TX_design_TX_UART_0_0;

architecture stub of TX_design_TX_UART_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,data[7:0],Tx_Start,Tx,Tx_done";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "TX_UART,Vivado 2020.2.2";
begin
end;
