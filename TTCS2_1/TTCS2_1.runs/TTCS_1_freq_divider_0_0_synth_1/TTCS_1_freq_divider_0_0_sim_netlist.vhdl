-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2.2 (win64) Build 3118627 Tue Feb  9 05:14:06 MST 2021
-- Date        : Tue Jan 14 02:42:08 2025
-- Host        : Admin-PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ TTCS_1_freq_divider_0_0_sim_netlist.vhdl
-- Design      : TTCS_1_freq_divider_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_freq_divider is
  port (
    clk_c : out STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_freq_divider;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_freq_divider is
  signal clk_0_01s_reg_i_1_n_0 : STD_LOGIC;
  signal clk_0_01s_reg_i_2_n_0 : STD_LOGIC;
  signal clk_0_01s_reg_i_3_n_0 : STD_LOGIC;
  signal clk_0_01s_reg_i_4_n_0 : STD_LOGIC;
  signal clk_0_01s_reg_i_5_n_0 : STD_LOGIC;
  signal clk_0_01s_reg_i_6_n_0 : STD_LOGIC;
  signal clk_0_01s_reg_i_7_n_0 : STD_LOGIC;
  signal \^clk_c\ : STD_LOGIC;
  signal counter_0_01s : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \counter_0_01s0_carry__0_n_0\ : STD_LOGIC;
  signal \counter_0_01s0_carry__0_n_1\ : STD_LOGIC;
  signal \counter_0_01s0_carry__0_n_2\ : STD_LOGIC;
  signal \counter_0_01s0_carry__0_n_3\ : STD_LOGIC;
  signal \counter_0_01s0_carry__1_n_0\ : STD_LOGIC;
  signal \counter_0_01s0_carry__1_n_1\ : STD_LOGIC;
  signal \counter_0_01s0_carry__1_n_2\ : STD_LOGIC;
  signal \counter_0_01s0_carry__1_n_3\ : STD_LOGIC;
  signal \counter_0_01s0_carry__2_n_0\ : STD_LOGIC;
  signal \counter_0_01s0_carry__2_n_1\ : STD_LOGIC;
  signal \counter_0_01s0_carry__2_n_2\ : STD_LOGIC;
  signal \counter_0_01s0_carry__2_n_3\ : STD_LOGIC;
  signal \counter_0_01s0_carry__3_n_2\ : STD_LOGIC;
  signal \counter_0_01s0_carry__3_n_3\ : STD_LOGIC;
  signal counter_0_01s0_carry_n_0 : STD_LOGIC;
  signal counter_0_01s0_carry_n_1 : STD_LOGIC;
  signal counter_0_01s0_carry_n_2 : STD_LOGIC;
  signal counter_0_01s0_carry_n_3 : STD_LOGIC;
  signal counter_0_01s_0 : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal data0 : STD_LOGIC_VECTOR ( 19 downto 1 );
  signal \NLW_counter_0_01s0_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_counter_0_01s0_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of clk_0_01s_reg_i_3 : label is "soft_lutpair0";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of counter_0_01s0_carry : label is 35;
  attribute ADDER_THRESHOLD of \counter_0_01s0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \counter_0_01s0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \counter_0_01s0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \counter_0_01s0_carry__3\ : label is 35;
  attribute SOFT_HLUTNM of \counter_0_01s[0]_i_1\ : label is "soft_lutpair0";
begin
  clk_c <= \^clk_c\;
clk_0_01s_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000001"
    )
        port map (
      I0 => clk_0_01s_reg_i_3_n_0,
      I1 => clk_0_01s_reg_i_4_n_0,
      I2 => clk_0_01s_reg_i_5_n_0,
      I3 => clk_0_01s_reg_i_6_n_0,
      I4 => clk_0_01s_reg_i_7_n_0,
      I5 => \^clk_c\,
      O => clk_0_01s_reg_i_1_n_0
    );
clk_0_01s_reg_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst,
      O => clk_0_01s_reg_i_2_n_0
    );
clk_0_01s_reg_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter_0_01s(1),
      I1 => counter_0_01s(0),
      I2 => counter_0_01s(3),
      I3 => counter_0_01s(2),
      O => clk_0_01s_reg_i_3_n_0
    );
clk_0_01s_reg_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => counter_0_01s(13),
      I1 => counter_0_01s(12),
      I2 => counter_0_01s(15),
      I3 => counter_0_01s(14),
      O => clk_0_01s_reg_i_4_n_0
    );
clk_0_01s_reg_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => counter_0_01s(17),
      I1 => counter_0_01s(16),
      I2 => counter_0_01s(18),
      I3 => counter_0_01s(19),
      O => clk_0_01s_reg_i_5_n_0
    );
clk_0_01s_reg_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => counter_0_01s(8),
      I1 => counter_0_01s(9),
      I2 => counter_0_01s(11),
      I3 => counter_0_01s(10),
      O => clk_0_01s_reg_i_6_n_0
    );
clk_0_01s_reg_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => counter_0_01s(5),
      I1 => counter_0_01s(4),
      I2 => counter_0_01s(7),
      I3 => counter_0_01s(6),
      O => clk_0_01s_reg_i_7_n_0
    );
clk_0_01s_reg_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => clk_0_01s_reg_i_2_n_0,
      D => clk_0_01s_reg_i_1_n_0,
      Q => \^clk_c\
    );
counter_0_01s0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => counter_0_01s0_carry_n_0,
      CO(2) => counter_0_01s0_carry_n_1,
      CO(1) => counter_0_01s0_carry_n_2,
      CO(0) => counter_0_01s0_carry_n_3,
      CYINIT => counter_0_01s(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => counter_0_01s(4 downto 1)
    );
\counter_0_01s0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => counter_0_01s0_carry_n_0,
      CO(3) => \counter_0_01s0_carry__0_n_0\,
      CO(2) => \counter_0_01s0_carry__0_n_1\,
      CO(1) => \counter_0_01s0_carry__0_n_2\,
      CO(0) => \counter_0_01s0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => counter_0_01s(8 downto 5)
    );
\counter_0_01s0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_0_01s0_carry__0_n_0\,
      CO(3) => \counter_0_01s0_carry__1_n_0\,
      CO(2) => \counter_0_01s0_carry__1_n_1\,
      CO(1) => \counter_0_01s0_carry__1_n_2\,
      CO(0) => \counter_0_01s0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => counter_0_01s(12 downto 9)
    );
\counter_0_01s0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_0_01s0_carry__1_n_0\,
      CO(3) => \counter_0_01s0_carry__2_n_0\,
      CO(2) => \counter_0_01s0_carry__2_n_1\,
      CO(1) => \counter_0_01s0_carry__2_n_2\,
      CO(0) => \counter_0_01s0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3 downto 0) => counter_0_01s(16 downto 13)
    );
\counter_0_01s0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_0_01s0_carry__2_n_0\,
      CO(3 downto 2) => \NLW_counter_0_01s0_carry__3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \counter_0_01s0_carry__3_n_2\,
      CO(0) => \counter_0_01s0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_counter_0_01s0_carry__3_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(19 downto 17),
      S(3) => '0',
      S(2 downto 0) => counter_0_01s(19 downto 17)
    );
\counter_0_01s[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_0_01s(0),
      O => counter_0_01s_0(0)
    );
\counter_0_01s[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => clk_0_01s_reg_i_3_n_0,
      I1 => clk_0_01s_reg_i_4_n_0,
      I2 => clk_0_01s_reg_i_5_n_0,
      I3 => clk_0_01s_reg_i_6_n_0,
      I4 => clk_0_01s_reg_i_7_n_0,
      I5 => data0(10),
      O => counter_0_01s_0(10)
    );
\counter_0_01s[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => clk_0_01s_reg_i_3_n_0,
      I1 => clk_0_01s_reg_i_4_n_0,
      I2 => clk_0_01s_reg_i_5_n_0,
      I3 => clk_0_01s_reg_i_6_n_0,
      I4 => clk_0_01s_reg_i_7_n_0,
      I5 => data0(11),
      O => counter_0_01s_0(11)
    );
\counter_0_01s[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => clk_0_01s_reg_i_3_n_0,
      I1 => clk_0_01s_reg_i_4_n_0,
      I2 => clk_0_01s_reg_i_5_n_0,
      I3 => clk_0_01s_reg_i_6_n_0,
      I4 => clk_0_01s_reg_i_7_n_0,
      I5 => data0(12),
      O => counter_0_01s_0(12)
    );
\counter_0_01s[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => clk_0_01s_reg_i_3_n_0,
      I1 => clk_0_01s_reg_i_4_n_0,
      I2 => clk_0_01s_reg_i_5_n_0,
      I3 => clk_0_01s_reg_i_6_n_0,
      I4 => clk_0_01s_reg_i_7_n_0,
      I5 => data0(13),
      O => counter_0_01s_0(13)
    );
\counter_0_01s[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => clk_0_01s_reg_i_3_n_0,
      I1 => clk_0_01s_reg_i_4_n_0,
      I2 => clk_0_01s_reg_i_5_n_0,
      I3 => clk_0_01s_reg_i_6_n_0,
      I4 => clk_0_01s_reg_i_7_n_0,
      I5 => data0(14),
      O => counter_0_01s_0(14)
    );
\counter_0_01s[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => clk_0_01s_reg_i_3_n_0,
      I1 => clk_0_01s_reg_i_4_n_0,
      I2 => clk_0_01s_reg_i_5_n_0,
      I3 => clk_0_01s_reg_i_6_n_0,
      I4 => clk_0_01s_reg_i_7_n_0,
      I5 => data0(15),
      O => counter_0_01s_0(15)
    );
\counter_0_01s[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => clk_0_01s_reg_i_3_n_0,
      I1 => clk_0_01s_reg_i_4_n_0,
      I2 => clk_0_01s_reg_i_5_n_0,
      I3 => clk_0_01s_reg_i_6_n_0,
      I4 => clk_0_01s_reg_i_7_n_0,
      I5 => data0(16),
      O => counter_0_01s_0(16)
    );
\counter_0_01s[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => clk_0_01s_reg_i_3_n_0,
      I1 => clk_0_01s_reg_i_4_n_0,
      I2 => clk_0_01s_reg_i_5_n_0,
      I3 => clk_0_01s_reg_i_6_n_0,
      I4 => clk_0_01s_reg_i_7_n_0,
      I5 => data0(17),
      O => counter_0_01s_0(17)
    );
\counter_0_01s[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => clk_0_01s_reg_i_3_n_0,
      I1 => clk_0_01s_reg_i_4_n_0,
      I2 => clk_0_01s_reg_i_5_n_0,
      I3 => clk_0_01s_reg_i_6_n_0,
      I4 => clk_0_01s_reg_i_7_n_0,
      I5 => data0(18),
      O => counter_0_01s_0(18)
    );
\counter_0_01s[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => clk_0_01s_reg_i_3_n_0,
      I1 => clk_0_01s_reg_i_4_n_0,
      I2 => clk_0_01s_reg_i_5_n_0,
      I3 => clk_0_01s_reg_i_6_n_0,
      I4 => clk_0_01s_reg_i_7_n_0,
      I5 => data0(19),
      O => counter_0_01s_0(19)
    );
\counter_0_01s[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => clk_0_01s_reg_i_3_n_0,
      I1 => clk_0_01s_reg_i_4_n_0,
      I2 => clk_0_01s_reg_i_5_n_0,
      I3 => clk_0_01s_reg_i_6_n_0,
      I4 => clk_0_01s_reg_i_7_n_0,
      I5 => data0(1),
      O => counter_0_01s_0(1)
    );
\counter_0_01s[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => clk_0_01s_reg_i_3_n_0,
      I1 => clk_0_01s_reg_i_4_n_0,
      I2 => clk_0_01s_reg_i_5_n_0,
      I3 => clk_0_01s_reg_i_6_n_0,
      I4 => clk_0_01s_reg_i_7_n_0,
      I5 => data0(2),
      O => counter_0_01s_0(2)
    );
\counter_0_01s[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => clk_0_01s_reg_i_3_n_0,
      I1 => clk_0_01s_reg_i_4_n_0,
      I2 => clk_0_01s_reg_i_5_n_0,
      I3 => clk_0_01s_reg_i_6_n_0,
      I4 => clk_0_01s_reg_i_7_n_0,
      I5 => data0(3),
      O => counter_0_01s_0(3)
    );
\counter_0_01s[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => clk_0_01s_reg_i_3_n_0,
      I1 => clk_0_01s_reg_i_4_n_0,
      I2 => clk_0_01s_reg_i_5_n_0,
      I3 => clk_0_01s_reg_i_6_n_0,
      I4 => clk_0_01s_reg_i_7_n_0,
      I5 => data0(4),
      O => counter_0_01s_0(4)
    );
\counter_0_01s[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => clk_0_01s_reg_i_3_n_0,
      I1 => clk_0_01s_reg_i_4_n_0,
      I2 => clk_0_01s_reg_i_5_n_0,
      I3 => clk_0_01s_reg_i_6_n_0,
      I4 => clk_0_01s_reg_i_7_n_0,
      I5 => data0(5),
      O => counter_0_01s_0(5)
    );
\counter_0_01s[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => clk_0_01s_reg_i_3_n_0,
      I1 => clk_0_01s_reg_i_4_n_0,
      I2 => clk_0_01s_reg_i_5_n_0,
      I3 => clk_0_01s_reg_i_6_n_0,
      I4 => clk_0_01s_reg_i_7_n_0,
      I5 => data0(6),
      O => counter_0_01s_0(6)
    );
\counter_0_01s[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => clk_0_01s_reg_i_3_n_0,
      I1 => clk_0_01s_reg_i_4_n_0,
      I2 => clk_0_01s_reg_i_5_n_0,
      I3 => clk_0_01s_reg_i_6_n_0,
      I4 => clk_0_01s_reg_i_7_n_0,
      I5 => data0(7),
      O => counter_0_01s_0(7)
    );
\counter_0_01s[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => clk_0_01s_reg_i_3_n_0,
      I1 => clk_0_01s_reg_i_4_n_0,
      I2 => clk_0_01s_reg_i_5_n_0,
      I3 => clk_0_01s_reg_i_6_n_0,
      I4 => clk_0_01s_reg_i_7_n_0,
      I5 => data0(8),
      O => counter_0_01s_0(8)
    );
\counter_0_01s[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => clk_0_01s_reg_i_3_n_0,
      I1 => clk_0_01s_reg_i_4_n_0,
      I2 => clk_0_01s_reg_i_5_n_0,
      I3 => clk_0_01s_reg_i_6_n_0,
      I4 => clk_0_01s_reg_i_7_n_0,
      I5 => data0(9),
      O => counter_0_01s_0(9)
    );
\counter_0_01s_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => counter_0_01s_0(0),
      PRE => clk_0_01s_reg_i_2_n_0,
      Q => counter_0_01s(0)
    );
\counter_0_01s_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => clk_0_01s_reg_i_2_n_0,
      D => counter_0_01s_0(10),
      Q => counter_0_01s(10)
    );
\counter_0_01s_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => clk_0_01s_reg_i_2_n_0,
      D => counter_0_01s_0(11),
      Q => counter_0_01s(11)
    );
\counter_0_01s_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => clk_0_01s_reg_i_2_n_0,
      D => counter_0_01s_0(12),
      Q => counter_0_01s(12)
    );
\counter_0_01s_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => clk_0_01s_reg_i_2_n_0,
      D => counter_0_01s_0(13),
      Q => counter_0_01s(13)
    );
\counter_0_01s_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => clk_0_01s_reg_i_2_n_0,
      D => counter_0_01s_0(14),
      Q => counter_0_01s(14)
    );
\counter_0_01s_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => clk_0_01s_reg_i_2_n_0,
      D => counter_0_01s_0(15),
      Q => counter_0_01s(15)
    );
\counter_0_01s_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => clk_0_01s_reg_i_2_n_0,
      D => counter_0_01s_0(16),
      Q => counter_0_01s(16)
    );
\counter_0_01s_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => clk_0_01s_reg_i_2_n_0,
      D => counter_0_01s_0(17),
      Q => counter_0_01s(17)
    );
\counter_0_01s_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => clk_0_01s_reg_i_2_n_0,
      D => counter_0_01s_0(18),
      Q => counter_0_01s(18)
    );
\counter_0_01s_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => clk_0_01s_reg_i_2_n_0,
      D => counter_0_01s_0(19),
      Q => counter_0_01s(19)
    );
\counter_0_01s_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => clk_0_01s_reg_i_2_n_0,
      D => counter_0_01s_0(1),
      Q => counter_0_01s(1)
    );
\counter_0_01s_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => clk_0_01s_reg_i_2_n_0,
      D => counter_0_01s_0(2),
      Q => counter_0_01s(2)
    );
\counter_0_01s_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => clk_0_01s_reg_i_2_n_0,
      D => counter_0_01s_0(3),
      Q => counter_0_01s(3)
    );
\counter_0_01s_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => clk_0_01s_reg_i_2_n_0,
      D => counter_0_01s_0(4),
      Q => counter_0_01s(4)
    );
\counter_0_01s_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => clk_0_01s_reg_i_2_n_0,
      D => counter_0_01s_0(5),
      Q => counter_0_01s(5)
    );
\counter_0_01s_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => clk_0_01s_reg_i_2_n_0,
      D => counter_0_01s_0(6),
      Q => counter_0_01s(6)
    );
\counter_0_01s_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => clk_0_01s_reg_i_2_n_0,
      D => counter_0_01s_0(7),
      Q => counter_0_01s(7)
    );
\counter_0_01s_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => clk_0_01s_reg_i_2_n_0,
      D => counter_0_01s_0(8),
      Q => counter_0_01s(8)
    );
\counter_0_01s_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => clk_0_01s_reg_i_2_n_0,
      D => counter_0_01s_0(9),
      Q => counter_0_01s(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    clk_c : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "TTCS_1_freq_divider_0_0,freq_divider,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "freq_divider,Vivado 2020.2.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN TTCS_1_clk_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_freq_divider
     port map (
      clk => clk,
      clk_c => clk_c,
      rst => rst
    );
end STRUCTURE;
