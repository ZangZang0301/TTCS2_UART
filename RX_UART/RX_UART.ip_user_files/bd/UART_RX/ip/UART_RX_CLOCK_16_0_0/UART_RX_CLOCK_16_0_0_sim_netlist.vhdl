-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2.2 (win64) Build 3118627 Tue Feb  9 05:14:06 MST 2021
-- Date        : Mon Dec 30 17:37:33 2024
-- Host        : Admin-PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/Vivado/TTCS2/RX_UART/RX_UART.gen/sources_1/bd/UART_RX/ip/UART_RX_CLOCK_16_0_0/UART_RX_CLOCK_16_0_0_sim_netlist.vhdl
-- Design      : UART_RX_CLOCK_16_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity UART_RX_CLOCK_16_0_0_CLOCK_16 is
  port (
    clk_16 : out STD_LOGIC;
    clk100M : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of UART_RX_CLOCK_16_0_0_CLOCK_16 : entity is "CLOCK_16";
end UART_RX_CLOCK_16_0_0_CLOCK_16;

architecture STRUCTURE of UART_RX_CLOCK_16_0_0_CLOCK_16 is
  signal \^clk_16\ : STD_LOGIC;
  signal clk_out_i_1_n_0 : STD_LOGIC;
  signal clk_out_i_2_n_0 : STD_LOGIC;
  signal counter : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \counter[3]_i_2_n_0\ : STD_LOGIC;
  signal \counter[4]_i_2_n_0\ : STD_LOGIC;
  signal \counter[5]_i_2_n_0\ : STD_LOGIC;
  signal \counter[5]_i_3_n_0\ : STD_LOGIC;
  signal \counter[5]_i_4_n_0\ : STD_LOGIC;
  signal \counter[8]_i_2_n_0\ : STD_LOGIC;
  signal \counter[8]_i_3_n_0\ : STD_LOGIC;
  signal \counter[8]_i_4_n_0\ : STD_LOGIC;
  signal counter_0 : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \counter[3]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \counter[4]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \counter[5]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \counter[8]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \counter[8]_i_4\ : label is "soft_lutpair1";
begin
  clk_16 <= \^clk_16\;
clk_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF1000"
    )
        port map (
      I0 => counter(4),
      I1 => counter(3),
      I2 => counter(2),
      I3 => clk_out_i_2_n_0,
      I4 => \^clk_16\,
      O => clk_out_i_1_n_0
    );
clk_out_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000200000"
    )
        port map (
      I0 => counter(6),
      I1 => counter(5),
      I2 => counter(8),
      I3 => counter(7),
      I4 => counter(1),
      I5 => counter(0),
      O => clk_out_i_2_n_0
    );
clk_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100M,
      CE => '1',
      D => clk_out_i_1_n_0,
      Q => \^clk_16\,
      R => '0'
    );
\counter[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1000FFFF"
    )
        port map (
      I0 => counter(4),
      I1 => counter(3),
      I2 => counter(2),
      I3 => clk_out_i_2_n_0,
      I4 => counter(0),
      O => counter_0(0)
    );
\counter[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3C3C3C3C3C383C3C"
    )
        port map (
      I0 => counter(7),
      I1 => counter(1),
      I2 => counter(0),
      I3 => counter(5),
      I4 => counter(2),
      I5 => \counter[5]_i_3_n_0\,
      O => counter_0(1)
    );
\counter[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F3FC0C03F3BC0C0"
    )
        port map (
      I0 => counter(7),
      I1 => counter(1),
      I2 => counter(0),
      I3 => counter(5),
      I4 => counter(2),
      I5 => \counter[5]_i_3_n_0\,
      O => counter_0(2)
    );
\counter[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"32333333CCCCCCCC"
    )
        port map (
      I0 => \counter[8]_i_4_n_0\,
      I1 => counter(3),
      I2 => counter(4),
      I3 => counter(8),
      I4 => counter(6),
      I5 => \counter[3]_i_2_n_0\,
      O => counter_0(3)
    );
\counter[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => counter(2),
      I1 => counter(0),
      I2 => counter(1),
      O => \counter[3]_i_2_n_0\
    );
\counter[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F00E0F0F0F"
    )
        port map (
      I0 => \counter[8]_i_4_n_0\,
      I1 => counter(3),
      I2 => counter(4),
      I3 => counter(8),
      I4 => counter(6),
      I5 => \counter[4]_i_2_n_0\,
      O => counter_0(4)
    );
\counter[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => counter(1),
      I1 => counter(0),
      I2 => counter(2),
      I3 => counter(3),
      O => \counter[4]_i_2_n_0\
    );
\counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555555AAAAAA8A"
    )
        port map (
      I0 => \counter[5]_i_2_n_0\,
      I1 => \counter[5]_i_3_n_0\,
      I2 => counter(2),
      I3 => \counter[5]_i_4_n_0\,
      I4 => counter(7),
      I5 => counter(5),
      O => counter_0(5)
    );
\counter[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => counter(4),
      I1 => counter(3),
      I2 => counter(2),
      I3 => counter(0),
      I4 => counter(1),
      O => \counter[5]_i_2_n_0\
    );
\counter[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => counter(6),
      I1 => counter(8),
      I2 => counter(4),
      I3 => counter(3),
      O => \counter[5]_i_3_n_0\
    );
\counter[5]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => counter(0),
      I1 => counter(1),
      O => \counter[5]_i_4_n_0\
    );
\counter[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA255555555"
    )
        port map (
      I0 => \counter[8]_i_2_n_0\,
      I1 => counter(8),
      I2 => counter(4),
      I3 => counter(3),
      I4 => \counter[8]_i_4_n_0\,
      I5 => counter(6),
      O => counter_0(6)
    );
\counter[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDD5DDD22220222"
    )
        port map (
      I0 => counter(6),
      I1 => \counter[8]_i_2_n_0\,
      I2 => counter(8),
      I3 => \counter[8]_i_3_n_0\,
      I4 => \counter[8]_i_4_n_0\,
      I5 => counter(7),
      O => counter_0(7)
    );
\counter[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBF33BF40404040"
    )
        port map (
      I0 => \counter[8]_i_2_n_0\,
      I1 => counter(6),
      I2 => counter(7),
      I3 => \counter[8]_i_3_n_0\,
      I4 => \counter[8]_i_4_n_0\,
      I5 => counter(8),
      O => counter_0(8)
    );
\counter[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => counter(1),
      I1 => counter(0),
      I2 => counter(2),
      I3 => counter(3),
      I4 => counter(4),
      I5 => counter(5),
      O => \counter[8]_i_2_n_0\
    );
\counter[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(3),
      I1 => counter(4),
      O => \counter[8]_i_3_n_0\
    );
\counter[8]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFDFF"
    )
        port map (
      I0 => counter(2),
      I1 => counter(5),
      I2 => counter(0),
      I3 => counter(1),
      I4 => counter(7),
      O => \counter[8]_i_4_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk100M,
      CE => '1',
      D => counter_0(0),
      Q => counter(0),
      R => '0'
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100M,
      CE => '1',
      D => counter_0(1),
      Q => counter(1),
      R => '0'
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100M,
      CE => '1',
      D => counter_0(2),
      Q => counter(2),
      R => '0'
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100M,
      CE => '1',
      D => counter_0(3),
      Q => counter(3),
      R => '0'
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100M,
      CE => '1',
      D => counter_0(4),
      Q => counter(4),
      R => '0'
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100M,
      CE => '1',
      D => counter_0(5),
      Q => counter(5),
      R => '0'
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100M,
      CE => '1',
      D => counter_0(6),
      Q => counter(6),
      R => '0'
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100M,
      CE => '1',
      D => counter_0(7),
      Q => counter(7),
      R => '0'
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk100M,
      CE => '1',
      D => counter_0(8),
      Q => counter(8),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity UART_RX_CLOCK_16_0_0 is
  port (
    clk100M : in STD_LOGIC;
    clk_16 : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of UART_RX_CLOCK_16_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of UART_RX_CLOCK_16_0_0 : entity is "UART_RX_CLOCK_16_0_0,CLOCK_16,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of UART_RX_CLOCK_16_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of UART_RX_CLOCK_16_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of UART_RX_CLOCK_16_0_0 : entity is "CLOCK_16,Vivado 2020.2.2";
end UART_RX_CLOCK_16_0_0;

architecture STRUCTURE of UART_RX_CLOCK_16_0_0 is
begin
inst: entity work.UART_RX_CLOCK_16_0_0_CLOCK_16
     port map (
      clk100M => clk100M,
      clk_16 => clk_16
    );
end STRUCTURE;
