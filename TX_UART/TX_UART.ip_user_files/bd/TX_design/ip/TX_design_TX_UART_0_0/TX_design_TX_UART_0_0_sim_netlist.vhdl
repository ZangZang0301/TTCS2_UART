-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2.2 (win64) Build 3118627 Tue Feb  9 05:14:06 MST 2021
-- Date        : Sat Jan  4 09:30:18 2025
-- Host        : Admin-PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/Vivado/TTCS2/TX_UART/TX_UART.gen/sources_1/bd/TX_design/ip/TX_design_TX_UART_0_0/TX_design_TX_UART_0_0_sim_netlist.vhdl
-- Design      : TX_design_TX_UART_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TX_design_TX_UART_0_0_CLOCK_16 is
  port (
    clk16 : out STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of TX_design_TX_UART_0_0_CLOCK_16 : entity is "CLOCK_16";
end TX_design_TX_UART_0_0_CLOCK_16;

architecture STRUCTURE of TX_design_TX_UART_0_0_CLOCK_16 is
  signal \^clk16\ : STD_LOGIC;
  signal clk_out_i_1_n_0 : STD_LOGIC;
  signal counter : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \counter[0]_i_2_n_0\ : STD_LOGIC;
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
  attribute SOFT_HLUTNM of clk_out_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \counter[3]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \counter[4]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \counter[5]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \counter[8]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \counter[8]_i_4\ : label is "soft_lutpair6";
begin
  clk16 <= \^clk16\;
clk_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF1000"
    )
        port map (
      I0 => counter(4),
      I1 => counter(3),
      I2 => counter(2),
      I3 => \counter[0]_i_2_n_0\,
      I4 => \^clk16\,
      O => clk_out_i_1_n_0
    );
clk_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => clk_out_i_1_n_0,
      Q => \^clk16\,
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
      I3 => \counter[0]_i_2_n_0\,
      I4 => counter(0),
      O => counter_0(0)
    );
\counter[0]_i_2\: unisim.vcomponents.LUT6
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
      O => \counter[0]_i_2_n_0\
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
      C => clk,
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
entity TX_design_TX_UART_0_0_COUNTER is
  port (
    rst_0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    en_b : in STD_LOGIC;
    clk16 : in STD_LOGIC;
    en_b_1 : in STD_LOGIC;
    rst : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    Tx_done : in STD_LOGIC;
    \FSM_onehot_state_reg[0]\ : in STD_LOGIC;
    rst_b : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of TX_design_TX_UART_0_0_COUNTER : entity is "COUNTER";
end TX_design_TX_UART_0_0_COUNTER;

architecture STRUCTURE of TX_design_TX_UART_0_0_COUNTER is
  signal Tx_done_i_3_n_0 : STD_LOGIC;
  signal Tx_done_i_4_n_0 : STD_LOGIC;
  signal bit_counter : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \cnt[3]_i_2_n_0\ : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Tx_done_i_3 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cnt[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cnt[2]_i_1__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnt[3]_i_1__0\ : label is "soft_lutpair0";
begin
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00200000"
    )
        port map (
      I0 => en_b_1,
      I1 => bit_counter(2),
      I2 => bit_counter(3),
      I3 => bit_counter(1),
      I4 => bit_counter(0),
      I5 => \FSM_onehot_state_reg[0]\,
      O => E(0)
    );
Tx_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80FFFFFF80008000"
    )
        port map (
      I0 => en_b_1,
      I1 => Tx_done_i_3_n_0,
      I2 => Tx_done_i_4_n_0,
      I3 => rst,
      I4 => Q(0),
      I5 => Tx_done,
      O => rst_0
    );
Tx_done_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bit_counter(0),
      I1 => bit_counter(1),
      O => Tx_done_i_3_n_0
    );
Tx_done_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => bit_counter(3),
      I1 => bit_counter(2),
      O => Tx_done_i_4_n_0
    );
\cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bit_counter(0),
      O => plusOp(0)
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => bit_counter(1),
      I1 => bit_counter(0),
      O => plusOp(1)
    );
\cnt[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => bit_counter(1),
      I1 => bit_counter(0),
      I2 => bit_counter(2),
      O => plusOp(2)
    );
\cnt[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6CCC"
    )
        port map (
      I0 => bit_counter(2),
      I1 => bit_counter(3),
      I2 => bit_counter(0),
      I3 => bit_counter(1),
      O => plusOp(3)
    );
\cnt[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_b,
      O => \cnt[3]_i_2_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk16,
      CE => en_b,
      CLR => \cnt[3]_i_2_n_0\,
      D => plusOp(0),
      Q => bit_counter(0)
    );
\cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk16,
      CE => en_b,
      CLR => \cnt[3]_i_2_n_0\,
      D => plusOp(1),
      Q => bit_counter(1)
    );
\cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk16,
      CE => en_b,
      CLR => \cnt[3]_i_2_n_0\,
      D => plusOp(2),
      Q => bit_counter(2)
    );
\cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk16,
      CE => en_b,
      CLR => \cnt[3]_i_2_n_0\,
      D => plusOp(3),
      Q => bit_counter(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TX_design_TX_UART_0_0_COUNTER_0 is
  port (
    \FSM_onehot_state_reg[2]\ : out STD_LOGIC;
    \FSM_onehot_state_reg[2]_0\ : out STD_LOGIC;
    en_b_1 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \cnt_reg[3]_0\ : out STD_LOGIC;
    en_s : in STD_LOGIC;
    clk16 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Tx_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    rst_s0 : in STD_LOGIC;
    Tx : in STD_LOGIC;
    rst : in STD_LOGIC;
    en_b : in STD_LOGIC;
    Tx_Start : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of TX_design_TX_UART_0_0_COUNTER_0 : entity is "COUNTER";
end TX_design_TX_UART_0_0_COUNTER_0;

architecture STRUCTURE of TX_design_TX_UART_0_0_COUNTER_0 is
  signal Tx_i_2_n_0 : STD_LOGIC;
  signal \cnt[3]_i_2__0_n_0\ : STD_LOGIC;
  signal cnt_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^en_b_1\ : STD_LOGIC;
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Tx_done_i_2 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt[1]_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt[3]_i_1\ : label is "soft_lutpair2";
begin
  en_b_1 <= \^en_b_1\;
\FSM_onehot_state[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00008000"
    )
        port map (
      I0 => cnt_reg(3),
      I1 => Q(1),
      I2 => cnt_reg(2),
      I3 => cnt_reg(1),
      I4 => cnt_reg(0),
      I5 => Q(0),
      O => \cnt_reg[3]_0\
    );
Tx_done_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => Q(2),
      I1 => cnt_reg(3),
      I2 => cnt_reg(2),
      I3 => cnt_reg(0),
      I4 => cnt_reg(1),
      O => \^en_b_1\
    );
Tx_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F8F8FFF8F8F800"
    )
        port map (
      I0 => Q(2),
      I1 => Tx_reg(0),
      I2 => Q(0),
      I3 => Tx_i_2_n_0,
      I4 => rst_s0,
      I5 => Tx,
      O => \FSM_onehot_state_reg[2]\
    );
Tx_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => cnt_reg(1),
      I1 => cnt_reg(0),
      I2 => cnt_reg(2),
      I3 => cnt_reg(3),
      I4 => Q(2),
      I5 => rst,
      O => Tx_i_2_n_0
    );
\cnt[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(0),
      O => \plusOp__0\(0)
    );
\cnt[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => cnt_reg(0),
      I1 => cnt_reg(1),
      O => \plusOp__0\(1)
    );
\cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => cnt_reg(1),
      I1 => cnt_reg(0),
      I2 => cnt_reg(2),
      O => \plusOp__0\(2)
    );
\cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => cnt_reg(2),
      I1 => cnt_reg(0),
      I2 => cnt_reg(1),
      I3 => cnt_reg(3),
      O => \plusOp__0\(3)
    );
\cnt[3]_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => en_s,
      O => \cnt[3]_i_2__0_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk16,
      CE => en_s,
      CLR => \cnt[3]_i_2__0_n_0\,
      D => \plusOp__0\(0),
      Q => cnt_reg(0)
    );
\cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk16,
      CE => en_s,
      CLR => \cnt[3]_i_2__0_n_0\,
      D => \plusOp__0\(1),
      Q => cnt_reg(1)
    );
\cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk16,
      CE => en_s,
      CLR => \cnt[3]_i_2__0_n_0\,
      D => \plusOp__0\(2),
      Q => cnt_reg(2)
    );
\cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk16,
      CE => en_s,
      CLR => \cnt[3]_i_2__0_n_0\,
      D => \plusOp__0\(3),
      Q => cnt_reg(3)
    );
\data_buff[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F080"
    )
        port map (
      I0 => Tx_Start,
      I1 => Q(0),
      I2 => rst,
      I3 => \^en_b_1\,
      O => E(0)
    );
en_b_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFBFA080"
    )
        port map (
      I0 => \^en_b_1\,
      I1 => Q(2),
      I2 => rst,
      I3 => Q(0),
      I4 => en_b,
      O => \FSM_onehot_state_reg[2]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TX_design_TX_UART_0_0_FSM is
  port (
    Tx_done : out STD_LOGIC;
    Tx : out STD_LOGIC;
    clk16 : in STD_LOGIC;
    rst : in STD_LOGIC;
    Tx_Start : in STD_LOGIC;
    data : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of TX_design_TX_UART_0_0_FSM : entity is "FSM";
end TX_design_TX_UART_0_0_FSM;

architecture STRUCTURE of TX_design_TX_UART_0_0_FSM is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \^tx\ : STD_LOGIC;
  signal \^tx_done\ : STD_LOGIC;
  signal bit_cnt_n_0 : STD_LOGIC;
  signal bit_cnt_n_1 : STD_LOGIC;
  signal data_buff0 : STD_LOGIC;
  signal \data_buff[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_buff[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_buff[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_buff[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_buff[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_buff[5]_i_1_n_0\ : STD_LOGIC;
  signal \data_buff[6]_i_1_n_0\ : STD_LOGIC;
  signal \data_buff[7]_i_2_n_0\ : STD_LOGIC;
  signal \data_buff_reg_n_0_[0]\ : STD_LOGIC;
  signal en_b : STD_LOGIC;
  signal en_b_1 : STD_LOGIC;
  signal en_s : STD_LOGIC;
  signal in8 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal rst_b : STD_LOGIC;
  signal rst_b_0 : STD_LOGIC;
  signal rst_b_i_1_n_0 : STD_LOGIC;
  signal rst_s : STD_LOGIC;
  signal rst_s0 : STD_LOGIC;
  signal rst_s_i_1_n_0 : STD_LOGIC;
  signal sample_cnt_n_0 : STD_LOGIC;
  signal sample_cnt_n_1 : STD_LOGIC;
  signal sample_cnt_n_4 : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "data:100,idle:001,start:010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "data:100,idle:001,start:010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "data:100,idle:001,start:010";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Tx_i_3 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of rst_s_i_1 : label is "soft_lutpair4";
begin
  Tx <= \^tx\;
  Tx_done <= \^tx_done\;
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => Tx_Start,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => rst_b_0,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Tx_Start,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst,
      O => \FSM_onehot_state[2]_i_2_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk16,
      CE => bit_cnt_n_1,
      D => \FSM_onehot_state[0]_i_1_n_0\,
      PRE => \FSM_onehot_state[2]_i_2_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk16,
      CE => bit_cnt_n_1,
      CLR => \FSM_onehot_state[2]_i_2_n_0\,
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => rst_s
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk16,
      CE => bit_cnt_n_1,
      CLR => \FSM_onehot_state[2]_i_2_n_0\,
      D => rst_s,
      Q => rst_b_0
    );
Tx_done_reg: unisim.vcomponents.FDRE
     port map (
      C => clk16,
      CE => '1',
      D => bit_cnt_n_0,
      Q => \^tx_done\,
      R => '0'
    );
Tx_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => rst_s,
      I1 => rst,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      O => rst_s0
    );
Tx_reg: unisim.vcomponents.FDRE
     port map (
      C => clk16,
      CE => '1',
      D => sample_cnt_n_0,
      Q => \^tx\,
      R => '0'
    );
bit_cnt: entity work.TX_design_TX_UART_0_0_COUNTER
     port map (
      E(0) => bit_cnt_n_1,
      \FSM_onehot_state_reg[0]\ => sample_cnt_n_4,
      Q(0) => \FSM_onehot_state_reg_n_0_[0]\,
      Tx_done => \^tx_done\,
      clk16 => clk16,
      en_b => en_b,
      en_b_1 => en_b_1,
      rst => rst,
      rst_0 => bit_cnt_n_0,
      rst_b => rst_b
    );
\data_buff[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => rst_s,
      I1 => in8(0),
      I2 => rst_b_0,
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => data(0),
      O => \data_buff[0]_i_1_n_0\
    );
\data_buff[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => rst_s,
      I1 => in8(1),
      I2 => rst_b_0,
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => data(1),
      O => \data_buff[1]_i_1_n_0\
    );
\data_buff[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => rst_s,
      I1 => in8(2),
      I2 => rst_b_0,
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => data(2),
      O => \data_buff[2]_i_1_n_0\
    );
\data_buff[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => rst_s,
      I1 => in8(3),
      I2 => rst_b_0,
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => data(3),
      O => \data_buff[3]_i_1_n_0\
    );
\data_buff[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => rst_s,
      I1 => in8(4),
      I2 => rst_b_0,
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => data(4),
      O => \data_buff[4]_i_1_n_0\
    );
\data_buff[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => rst_s,
      I1 => in8(5),
      I2 => rst_b_0,
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => data(5),
      O => \data_buff[5]_i_1_n_0\
    );
\data_buff[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => rst_s,
      I1 => in8(6),
      I2 => rst_b_0,
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => data(6),
      O => \data_buff[6]_i_1_n_0\
    );
\data_buff[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEEE"
    )
        port map (
      I0 => rst_b_0,
      I1 => rst_s,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => data(7),
      O => \data_buff[7]_i_2_n_0\
    );
\data_buff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk16,
      CE => data_buff0,
      D => \data_buff[0]_i_1_n_0\,
      Q => \data_buff_reg_n_0_[0]\,
      R => '0'
    );
\data_buff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk16,
      CE => data_buff0,
      D => \data_buff[1]_i_1_n_0\,
      Q => in8(0),
      R => '0'
    );
\data_buff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk16,
      CE => data_buff0,
      D => \data_buff[2]_i_1_n_0\,
      Q => in8(1),
      R => '0'
    );
\data_buff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk16,
      CE => data_buff0,
      D => \data_buff[3]_i_1_n_0\,
      Q => in8(2),
      R => '0'
    );
\data_buff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk16,
      CE => data_buff0,
      D => \data_buff[4]_i_1_n_0\,
      Q => in8(3),
      R => '0'
    );
\data_buff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk16,
      CE => data_buff0,
      D => \data_buff[5]_i_1_n_0\,
      Q => in8(4),
      R => '0'
    );
\data_buff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk16,
      CE => data_buff0,
      D => \data_buff[6]_i_1_n_0\,
      Q => in8(5),
      R => '0'
    );
\data_buff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk16,
      CE => data_buff0,
      D => \data_buff[7]_i_2_n_0\,
      Q => in8(6),
      R => '0'
    );
en_b_reg: unisim.vcomponents.FDRE
     port map (
      C => clk16,
      CE => '1',
      D => sample_cnt_n_1,
      Q => en_b,
      R => '0'
    );
rst_b_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF88"
    )
        port map (
      I0 => rst_b_0,
      I1 => rst,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => rst_b,
      O => rst_b_i_1_n_0
    );
rst_b_reg: unisim.vcomponents.FDRE
     port map (
      C => clk16,
      CE => '1',
      D => rst_b_i_1_n_0,
      Q => rst_b,
      R => '0'
    );
rst_s_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF88"
    )
        port map (
      I0 => rst_s,
      I1 => rst,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => en_s,
      O => rst_s_i_1_n_0
    );
rst_s_reg: unisim.vcomponents.FDRE
     port map (
      C => clk16,
      CE => '1',
      D => rst_s_i_1_n_0,
      Q => en_s,
      R => '0'
    );
sample_cnt: entity work.TX_design_TX_UART_0_0_COUNTER_0
     port map (
      E(0) => data_buff0,
      \FSM_onehot_state_reg[2]\ => sample_cnt_n_0,
      \FSM_onehot_state_reg[2]_0\ => sample_cnt_n_1,
      Q(2) => rst_b_0,
      Q(1) => rst_s,
      Q(0) => \FSM_onehot_state_reg_n_0_[0]\,
      Tx => \^tx\,
      Tx_Start => Tx_Start,
      Tx_reg(0) => \data_buff_reg_n_0_[0]\,
      clk16 => clk16,
      \cnt_reg[3]_0\ => sample_cnt_n_4,
      en_b => en_b,
      en_b_1 => en_b_1,
      en_s => en_s,
      rst => rst,
      rst_s0 => rst_s0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TX_design_TX_UART_0_0_TX_UART is
  port (
    Tx_done : out STD_LOGIC;
    Tx : out STD_LOGIC;
    clk : in STD_LOGIC;
    Tx_Start : in STD_LOGIC;
    rst : in STD_LOGIC;
    data : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of TX_design_TX_UART_0_0_TX_UART : entity is "TX_UART";
end TX_design_TX_UART_0_0_TX_UART;

architecture STRUCTURE of TX_design_TX_UART_0_0_TX_UART is
  signal clk16 : STD_LOGIC;
begin
FSM_BLOCK: entity work.TX_design_TX_UART_0_0_FSM
     port map (
      Tx => Tx,
      Tx_Start => Tx_Start,
      Tx_done => Tx_done,
      clk16 => clk16,
      data(7 downto 0) => data(7 downto 0),
      rst => rst
    );
clk_16: entity work.TX_design_TX_UART_0_0_CLOCK_16
     port map (
      clk => clk,
      clk16 => clk16
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TX_design_TX_UART_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Tx_Start : in STD_LOGIC;
    Tx : out STD_LOGIC;
    Tx_done : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of TX_design_TX_UART_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of TX_design_TX_UART_0_0 : entity is "TX_design_TX_UART_0_0,TX_UART,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of TX_design_TX_UART_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of TX_design_TX_UART_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of TX_design_TX_UART_0_0 : entity is "TX_UART,Vivado 2020.2.2";
end TX_design_TX_UART_0_0;

architecture STRUCTURE of TX_design_TX_UART_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN TX_design_sys_clock, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.TX_design_TX_UART_0_0_TX_UART
     port map (
      Tx => Tx,
      Tx_Start => Tx_Start,
      Tx_done => Tx_done,
      clk => clk,
      data(7 downto 0) => data(7 downto 0),
      rst => rst
    );
end STRUCTURE;
