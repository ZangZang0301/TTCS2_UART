-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2.2 (win64) Build 3118627 Tue Feb  9 05:14:06 MST 2021
-- Date        : Tue Jan 14 02:42:08 2025
-- Host        : Admin-PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/Vivado/TTCS2/TTCS2_1/TTCS2_1.gen/sources_1/bd/TTCS_1/ip/TTCS_1_freq_divider_0_0/TTCS_1_freq_divider_0_0_stub.vhdl
-- Design      : TTCS_1_freq_divider_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TTCS_1_freq_divider_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    clk_c : out STD_LOGIC
  );

end TTCS_1_freq_divider_0_0;

architecture stub of TTCS_1_freq_divider_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,clk_c";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "freq_divider,Vivado 2020.2.2";
begin
end;
