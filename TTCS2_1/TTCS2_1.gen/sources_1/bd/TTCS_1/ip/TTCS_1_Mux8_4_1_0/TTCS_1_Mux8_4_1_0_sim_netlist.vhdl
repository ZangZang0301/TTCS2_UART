-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2.2 (win64) Build 3118627 Tue Feb  9 05:14:06 MST 2021
-- Date        : Tue Jan 14 01:05:39 2025
-- Host        : Admin-PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/Vivado/TTCS2/TTCS2_1/TTCS2_1.gen/sources_1/bd/TTCS_1/ip/TTCS_1_Mux8_4_1_0/TTCS_1_Mux8_4_1_0_sim_netlist.vhdl
-- Design      : TTCS_1_Mux8_4_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TTCS_1_Mux8_4_1_0 is
  port (
    data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    data_out : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of TTCS_1_Mux8_4_1_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of TTCS_1_Mux8_4_1_0 : entity is "TTCS_1_Mux8_4_1_0,Mux8_4,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of TTCS_1_Mux8_4_1_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of TTCS_1_Mux8_4_1_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of TTCS_1_Mux8_4_1_0 : entity is "Mux8_4,Vivado 2020.2.2";
end TTCS_1_Mux8_4_1_0;

architecture STRUCTURE of TTCS_1_Mux8_4_1_0 is
  signal \^data_in\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^data_out\ : STD_LOGIC_VECTOR ( 2 downto 1 );
begin
  \^data_in\(3 downto 0) <= data_in(3 downto 0);
  data_out(3) <= \^data_in\(3);
  data_out(2 downto 1) <= \^data_out\(2 downto 1);
  data_out(0) <= \^data_in\(0);
\data_out[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^data_in\(1),
      I1 => \^data_in\(3),
      O => \^data_out\(1)
    );
\data_out[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^data_in\(2),
      I1 => \^data_in\(3),
      O => \^data_out\(2)
    );
end STRUCTURE;
