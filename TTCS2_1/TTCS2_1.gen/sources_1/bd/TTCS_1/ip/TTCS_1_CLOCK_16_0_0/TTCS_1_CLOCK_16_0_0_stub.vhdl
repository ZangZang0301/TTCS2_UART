-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2.2 (win64) Build 3118627 Tue Feb  9 05:14:06 MST 2021
-- Date        : Mon Jan 13 23:24:31 2025
-- Host        : Admin-PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/Vivado/TTCS2/TTCS2_1/TTCS2_1.gen/sources_1/bd/TTCS_1/ip/TTCS_1_CLOCK_16_0_0/TTCS_1_CLOCK_16_0_0_stub.vhdl
-- Design      : TTCS_1_CLOCK_16_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TTCS_1_CLOCK_16_0_0 is
  Port ( 
    clk100M : in STD_LOGIC;
    clk_16 : out STD_LOGIC
  );

end TTCS_1_CLOCK_16_0_0;

architecture stub of TTCS_1_CLOCK_16_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk100M,clk_16";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "CLOCK_16,Vivado 2020.2.2";
begin
end;
