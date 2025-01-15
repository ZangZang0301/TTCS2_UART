-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2.2 (win64) Build 3118627 Tue Feb  9 05:14:06 MST 2021
-- Date        : Mon Jan 13 21:51:00 2025
-- Host        : Admin-PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/Vivado/TTCS2/TTCS2_1/TTCS2_1.gen/sources_1/bd/TTCS_1/ip/TTCS_1_Mach_GM_led7_0_0/TTCS_1_Mach_GM_led7_0_0_stub.vhdl
-- Design      : TTCS_1_Mach_GM_led7_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TTCS_1_Mach_GM_led7_0_0 is
  Port ( 
    c : in STD_LOGIC;
    data_in_1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data_in_2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ou : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );

end TTCS_1_Mach_GM_led7_0_0;

architecture stub of TTCS_1_Mach_GM_led7_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "c,data_in_1[3:0],data_in_2[3:0],ou[6:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "Mach_GM_led7,Vivado 2020.2.2";
begin
end;
