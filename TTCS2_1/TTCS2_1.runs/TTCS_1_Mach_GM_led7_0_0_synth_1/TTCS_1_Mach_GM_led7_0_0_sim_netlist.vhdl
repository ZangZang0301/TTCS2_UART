-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2.2 (win64) Build 3118627 Tue Feb  9 05:14:06 MST 2021
-- Date        : Mon Jan 13 21:51:00 2025
-- Host        : Admin-PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ TTCS_1_Mach_GM_led7_0_0_sim_netlist.vhdl
-- Design      : TTCS_1_Mach_GM_led7_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    c : in STD_LOGIC;
    data_in_1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data_in_2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ou : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "TTCS_1_Mach_GM_led7_0_0,Mach_GM_led7,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Mach_GM_led7,Vivado 2020.2.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \inst/c_2__3\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ou[6]_INST_0_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \ou[6]_INST_0_i_3\ : label is "soft_lutpair0";
begin
\ou[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF56A6FFFFFEAE"
    )
        port map (
      I0 => \inst/c_2__3\(1),
      I1 => data_in_1(2),
      I2 => c,
      I3 => data_in_2(2),
      I4 => \inst/c_2__3\(3),
      I5 => \inst/c_2__3\(0),
      O => ou(0)
    );
\ou[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF5404FFFFFD5D"
    )
        port map (
      I0 => \inst/c_2__3\(1),
      I1 => data_in_1(2),
      I2 => c,
      I3 => data_in_2(2),
      I4 => \inst/c_2__3\(3),
      I5 => \inst/c_2__3\(0),
      O => ou(1)
    );
\ou[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E0F0E0E0E0F0F0F"
    )
        port map (
      I0 => \inst/c_2__3\(3),
      I1 => \inst/c_2__3\(1),
      I2 => \inst/c_2__3\(0),
      I3 => data_in_2(2),
      I4 => c,
      I5 => data_in_1(2),
      O => ou(2)
    );
\ou[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF56A6FFFFABFB"
    )
        port map (
      I0 => \inst/c_2__3\(1),
      I1 => data_in_1(2),
      I2 => c,
      I3 => data_in_2(2),
      I4 => \inst/c_2__3\(3),
      I5 => \inst/c_2__3\(0),
      O => ou(3)
    );
\ou[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFFFFFBFBFB"
    )
        port map (
      I0 => \inst/c_2__3\(0),
      I1 => \inst/c_2__3\(1),
      I2 => \inst/c_2__3\(3),
      I3 => data_in_2(2),
      I4 => c,
      I5 => data_in_1(2),
      O => ou(4)
    );
\ou[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEEEFFFDFDDDFFF"
    )
        port map (
      I0 => \inst/c_2__3\(0),
      I1 => \inst/c_2__3\(3),
      I2 => data_in_2(2),
      I3 => c,
      I4 => data_in_1(2),
      I5 => \inst/c_2__3\(1),
      O => ou(5)
    );
\ou[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEAEFFFFABFB"
    )
        port map (
      I0 => \inst/c_2__3\(1),
      I1 => data_in_1(2),
      I2 => c,
      I3 => data_in_2(2),
      I4 => \inst/c_2__3\(3),
      I5 => \inst/c_2__3\(0),
      O => ou(6)
    );
\ou[6]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_in_2(1),
      I1 => c,
      I2 => data_in_1(1),
      O => \inst/c_2__3\(1)
    );
\ou[6]_INST_0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_in_2(3),
      I1 => c,
      I2 => data_in_1(3),
      O => \inst/c_2__3\(3)
    );
\ou[6]_INST_0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_in_2(0),
      I1 => c,
      I2 => data_in_1(0),
      O => \inst/c_2__3\(0)
    );
end STRUCTURE;
