-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2.2 (win64) Build 3118627 Tue Feb  9 05:14:06 MST 2021
-- Date        : Sun Jan  5 15:37:26 2025
-- Host        : Admin-PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top TTCS_1_util_vector_logic_0_1 -prefix
--               TTCS_1_util_vector_logic_0_1_ TTCS_util_vector_logic_1_2_sim_netlist.vhdl
-- Design      : TTCS_util_vector_logic_1_2
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TTCS_1_util_vector_logic_0_1 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of TTCS_1_util_vector_logic_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of TTCS_1_util_vector_logic_0_1 : entity is "TTCS_util_vector_logic_1_2,util_vector_logic_v2_0_1_util_vector_logic,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of TTCS_1_util_vector_logic_0_1 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of TTCS_1_util_vector_logic_0_1 : entity is "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2020.2.2";
end TTCS_1_util_vector_logic_0_1;

architecture STRUCTURE of TTCS_1_util_vector_logic_0_1 is
begin
\Res[0]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Op1(0),
      O => Res(0)
    );
end STRUCTURE;
