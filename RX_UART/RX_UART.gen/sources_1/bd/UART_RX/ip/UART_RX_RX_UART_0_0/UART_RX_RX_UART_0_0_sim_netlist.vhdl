-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2.2 (win64) Build 3118627 Tue Feb  9 05:14:06 MST 2021
-- Date        : Thu Jan  2 11:02:45 2025
-- Host        : Admin-PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/Vivado/TTCS2/RX_UART/RX_UART.gen/sources_1/bd/UART_RX/ip/UART_RX_RX_UART_0_0/UART_RX_RX_UART_0_0_sim_netlist.vhdl
-- Design      : UART_RX_RX_UART_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity UART_RX_RX_UART_0_0_CLOCK_16 is
  port (
    clk16 : out STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of UART_RX_RX_UART_0_0_CLOCK_16 : entity is "CLOCK_16";
end UART_RX_RX_UART_0_0_CLOCK_16;

architecture STRUCTURE of UART_RX_RX_UART_0_0_CLOCK_16 is
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
  attribute SOFT_HLUTNM of clk_out_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \counter[3]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \counter[4]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \counter[5]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \counter[8]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \counter[8]_i_4\ : label is "soft_lutpair1";
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
entity UART_RX_RX_UART_0_0_COUNTER is
  port (
    \cnt_reg[3]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[2]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    en_b : in STD_LOGIC;
    clk16 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rst : in STD_LOGIC;
    Rx_done : in STD_LOGIC;
    Rx : in STD_LOGIC;
    \FSM_onehot_state_reg[0]\ : in STD_LOGIC;
    rst_b : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of UART_RX_RX_UART_0_0_COUNTER : entity is "COUNTER";
end UART_RX_RX_UART_0_0_COUNTER;

architecture STRUCTURE of UART_RX_RX_UART_0_0_COUNTER is
  signal \cnt[3]_i_2_n_0\ : STD_LOGIC;
  signal cnt_reg : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^cnt_reg[3]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \eqOp__2\ : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Rx_done_i_2 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cnt[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cnt[3]_i_1\ : label is "soft_lutpair3";
begin
  \cnt_reg[3]_0\(0) <= \^cnt_reg[3]_0\(0);
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF88F888F888F8"
    )
        port map (
      I0 => Q(2),
      I1 => \eqOp__2\,
      I2 => Q(0),
      I3 => Rx,
      I4 => Q(1),
      I5 => \FSM_onehot_state_reg[0]\,
      O => \FSM_onehot_state_reg[2]_0\(0)
    );
Rx_done_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFF8800"
    )
        port map (
      I0 => \eqOp__2\,
      I1 => Q(2),
      I2 => Q(0),
      I3 => rst,
      I4 => Rx_done,
      O => \FSM_onehot_state_reg[2]\
    );
Rx_done_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => cnt_reg(1),
      I1 => cnt_reg(0),
      I2 => cnt_reg(2),
      I3 => \^cnt_reg[3]_0\(0),
      O => \eqOp__2\
    );
\cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(0),
      O => plusOp(0)
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => cnt_reg(0),
      I1 => cnt_reg(1),
      O => plusOp(1)
    );
\cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => cnt_reg(1),
      I1 => cnt_reg(0),
      I2 => cnt_reg(2),
      O => plusOp(2)
    );
\cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => cnt_reg(2),
      I1 => cnt_reg(0),
      I2 => cnt_reg(1),
      I3 => \^cnt_reg[3]_0\(0),
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
      Q => cnt_reg(0)
    );
\cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk16,
      CE => en_b,
      CLR => \cnt[3]_i_2_n_0\,
      D => plusOp(1),
      Q => cnt_reg(1)
    );
\cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk16,
      CE => en_b,
      CLR => \cnt[3]_i_2_n_0\,
      D => plusOp(2),
      Q => cnt_reg(2)
    );
\cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk16,
      CE => en_b,
      CLR => \cnt[3]_i_2_n_0\,
      D => plusOp(3),
      Q => \^cnt_reg[3]_0\(0)
    );
\data_out[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => Q(2),
      I1 => rst,
      I2 => \^cnt_reg[3]_0\(0),
      I3 => cnt_reg(2),
      I4 => cnt_reg(0),
      I5 => cnt_reg(1),
      O => E(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity UART_RX_RX_UART_0_0_COUNTER_0 is
  port (
    \cnt_reg[3]_0\ : out STD_LOGIC;
    \FSM_onehot_state_reg[0]\ : out STD_LOGIC;
    \cnt_reg[1]_0\ : out STD_LOGIC;
    \FSM_onehot_state_reg[0]_0\ : out STD_LOGIC;
    data_buff0 : out STD_LOGIC;
    en_s : in STD_LOGIC;
    clk16 : in STD_LOGIC;
    en_b_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rst : in STD_LOGIC;
    en_b : in STD_LOGIC;
    Rx : in STD_LOGIC;
    rst_s_reg : in STD_LOGIC;
    rst_s : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of UART_RX_RX_UART_0_0_COUNTER_0 : entity is "COUNTER";
end UART_RX_RX_UART_0_0_COUNTER_0;

architecture STRUCTURE of UART_RX_RX_UART_0_0_COUNTER_0 is
  signal \cnt[3]_i_2__0_n_0\ : STD_LOGIC;
  signal cnt_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^cnt_reg[1]_0\ : STD_LOGIC;
  signal \data_buff[7]_i_3_n_0\ : STD_LOGIC;
  signal en_b_i_2_n_0 : STD_LOGIC;
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rst_s_i_3_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_4\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cnt[1]_i_1__0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \cnt[2]_i_1__0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \cnt[3]_i_1__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \data_buff[7]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of en_b_i_2 : label is "soft_lutpair5";
begin
  \cnt_reg[1]_0\ <= \^cnt_reg[1]_0\;
\FSM_onehot_state[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => cnt_reg(1),
      I1 => cnt_reg(0),
      I2 => cnt_reg(2),
      I3 => cnt_reg(3),
      O => \^cnt_reg[1]_0\
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
\cnt[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => cnt_reg(0),
      I1 => cnt_reg(1),
      I2 => cnt_reg(2),
      O => \plusOp__0\(2)
    );
\cnt[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => cnt_reg(2),
      I1 => cnt_reg(1),
      I2 => cnt_reg(0),
      I3 => cnt_reg(3),
      O => \plusOp__0\(3)
    );
\cnt[3]_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_s,
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
\data_buff[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF080000000000"
    )
        port map (
      I0 => \data_buff[7]_i_3_n_0\,
      I1 => Q(2),
      I2 => en_b_reg(0),
      I3 => cnt_reg(3),
      I4 => Q(0),
      I5 => rst,
      O => data_buff0
    );
\data_buff[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => cnt_reg(2),
      I1 => cnt_reg(1),
      I2 => cnt_reg(0),
      O => \data_buff[7]_i_3_n_0\
    );
en_b_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEFFFFFAA200000"
    )
        port map (
      I0 => en_b_i_2_n_0,
      I1 => en_b_reg(0),
      I2 => Q(2),
      I3 => Q(0),
      I4 => rst,
      I5 => en_b,
      O => \cnt_reg[3]_0\
    );
en_b_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => cnt_reg(0),
      I1 => cnt_reg(1),
      I2 => cnt_reg(2),
      I3 => Q(2),
      I4 => cnt_reg(3),
      O => en_b_i_2_n_0
    );
en_s_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F777FFFFB2220000"
    )
        port map (
      I0 => Q(0),
      I1 => Rx,
      I2 => Q(1),
      I3 => \^cnt_reg[1]_0\,
      I4 => rst,
      I5 => en_s,
      O => \FSM_onehot_state_reg[0]\
    );
rst_s_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABFFFFAAA80000"
    )
        port map (
      I0 => rst_s_reg,
      I1 => rst_s_i_3_n_0,
      I2 => Q(0),
      I3 => Q(2),
      I4 => rst,
      I5 => rst_s,
      O => \FSM_onehot_state_reg[0]_0\
    );
rst_s_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000040"
    )
        port map (
      I0 => Rx,
      I1 => Q(1),
      I2 => cnt_reg(3),
      I3 => cnt_reg(2),
      I4 => cnt_reg(0),
      I5 => cnt_reg(1),
      O => rst_s_i_3_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity UART_RX_RX_UART_0_0_FSM_RX is
  port (
    Rx_done : out STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk16 : in STD_LOGIC;
    rst : in STD_LOGIC;
    Rx : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of UART_RX_RX_UART_0_0_FSM_RX : entity is "FSM_RX";
end UART_RX_RX_UART_0_0_FSM_RX;

architecture STRUCTURE of UART_RX_RX_UART_0_0_FSM_RX is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \^rx_done\ : STD_LOGIC;
  signal bit_cnt_n_1 : STD_LOGIC;
  signal bit_cnt_n_3 : STD_LOGIC;
  signal cnt_reg : STD_LOGIC_VECTOR ( 3 to 3 );
  signal data_buff0 : STD_LOGIC;
  signal \data_buff[7]_i_1_n_0\ : STD_LOGIC;
  signal \data_buff_reg_n_0_[0]\ : STD_LOGIC;
  signal data_out0 : STD_LOGIC;
  signal en_b : STD_LOGIC;
  signal en_s : STD_LOGIC;
  signal in10 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal rst_b : STD_LOGIC;
  signal rst_b_i_1_n_0 : STD_LOGIC;
  signal rst_s : STD_LOGIC;
  signal rst_s_i_2_n_0 : STD_LOGIC;
  signal sample_cnt_n_0 : STD_LOGIC;
  signal sample_cnt_n_1 : STD_LOGIC;
  signal sample_cnt_n_2 : STD_LOGIC;
  signal sample_cnt_n_3 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[0]_i_1\ : label is "soft_lutpair8";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "start:010,idle:001,data:100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "start:010,idle:001,data:100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "start:010,idle:001,data:100";
  attribute SOFT_HLUTNM of rst_s_i_2 : label is "soft_lutpair8";
begin
  Rx_done <= \^rx_done\;
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => Rx,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => Rx,
      O => \FSM_onehot_state[2]_i_2_n_0\
    );
\FSM_onehot_state[2]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst,
      O => \FSM_onehot_state[2]_i_3_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk16,
      CE => bit_cnt_n_3,
      D => \FSM_onehot_state[0]_i_1_n_0\,
      PRE => \FSM_onehot_state[2]_i_3_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk16,
      CE => bit_cnt_n_3,
      CLR => \FSM_onehot_state[2]_i_3_n_0\,
      D => \FSM_onehot_state_reg_n_0_[0]\,
      Q => \FSM_onehot_state_reg_n_0_[1]\
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk16,
      CE => bit_cnt_n_3,
      CLR => \FSM_onehot_state[2]_i_3_n_0\,
      D => \FSM_onehot_state[2]_i_2_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[2]\
    );
Rx_done_reg: unisim.vcomponents.FDRE
     port map (
      C => clk16,
      CE => '1',
      D => bit_cnt_n_1,
      Q => \^rx_done\,
      R => '0'
    );
bit_cnt: entity work.UART_RX_RX_UART_0_0_COUNTER
     port map (
      E(0) => data_out0,
      \FSM_onehot_state_reg[0]\ => sample_cnt_n_2,
      \FSM_onehot_state_reg[2]\ => bit_cnt_n_1,
      \FSM_onehot_state_reg[2]_0\(0) => bit_cnt_n_3,
      Q(2) => \FSM_onehot_state_reg_n_0_[2]\,
      Q(1) => \FSM_onehot_state_reg_n_0_[1]\,
      Q(0) => \FSM_onehot_state_reg_n_0_[0]\,
      Rx => Rx,
      Rx_done => \^rx_done\,
      clk16 => clk16,
      \cnt_reg[3]_0\(0) => cnt_reg(3),
      en_b => en_b,
      rst => rst,
      rst_b => rst_b
    );
\data_buff[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => rst,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \data_buff[7]_i_1_n_0\
    );
\data_buff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk16,
      CE => data_buff0,
      D => in10(0),
      Q => \data_buff_reg_n_0_[0]\,
      R => \data_buff[7]_i_1_n_0\
    );
\data_buff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk16,
      CE => data_buff0,
      D => in10(1),
      Q => in10(0),
      R => \data_buff[7]_i_1_n_0\
    );
\data_buff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk16,
      CE => data_buff0,
      D => in10(2),
      Q => in10(1),
      R => \data_buff[7]_i_1_n_0\
    );
\data_buff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk16,
      CE => data_buff0,
      D => in10(3),
      Q => in10(2),
      R => \data_buff[7]_i_1_n_0\
    );
\data_buff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk16,
      CE => data_buff0,
      D => in10(4),
      Q => in10(3),
      R => \data_buff[7]_i_1_n_0\
    );
\data_buff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk16,
      CE => data_buff0,
      D => in10(5),
      Q => in10(4),
      R => \data_buff[7]_i_1_n_0\
    );
\data_buff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk16,
      CE => data_buff0,
      D => in10(6),
      Q => in10(5),
      R => \data_buff[7]_i_1_n_0\
    );
\data_buff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk16,
      CE => data_buff0,
      D => Rx,
      Q => in10(6),
      R => \data_buff[7]_i_1_n_0\
    );
\data_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk16,
      CE => data_out0,
      D => \data_buff_reg_n_0_[0]\,
      Q => data_out(0),
      R => '0'
    );
\data_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk16,
      CE => data_out0,
      D => in10(0),
      Q => data_out(1),
      R => '0'
    );
\data_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk16,
      CE => data_out0,
      D => in10(1),
      Q => data_out(2),
      R => '0'
    );
\data_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk16,
      CE => data_out0,
      D => in10(2),
      Q => data_out(3),
      R => '0'
    );
\data_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk16,
      CE => data_out0,
      D => in10(3),
      Q => data_out(4),
      R => '0'
    );
\data_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk16,
      CE => data_out0,
      D => in10(4),
      Q => data_out(5),
      R => '0'
    );
\data_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk16,
      CE => data_out0,
      D => in10(5),
      Q => data_out(6),
      R => '0'
    );
\data_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk16,
      CE => data_out0,
      D => in10(6),
      Q => data_out(7),
      R => '0'
    );
en_b_reg: unisim.vcomponents.FDRE
     port map (
      C => clk16,
      CE => '1',
      D => sample_cnt_n_0,
      Q => en_b,
      R => '0'
    );
en_s_reg: unisim.vcomponents.FDRE
     port map (
      C => clk16,
      CE => '1',
      D => sample_cnt_n_1,
      Q => en_s,
      R => '0'
    );
rst_b_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFC0"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => rst,
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
rst_s_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FCEE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => Rx,
      O => rst_s_i_2_n_0
    );
rst_s_reg: unisim.vcomponents.FDRE
     port map (
      C => clk16,
      CE => '1',
      D => sample_cnt_n_3,
      Q => rst_s,
      R => '0'
    );
sample_cnt: entity work.UART_RX_RX_UART_0_0_COUNTER_0
     port map (
      \FSM_onehot_state_reg[0]\ => sample_cnt_n_1,
      \FSM_onehot_state_reg[0]_0\ => sample_cnt_n_3,
      Q(2) => \FSM_onehot_state_reg_n_0_[2]\,
      Q(1) => \FSM_onehot_state_reg_n_0_[1]\,
      Q(0) => \FSM_onehot_state_reg_n_0_[0]\,
      Rx => Rx,
      clk16 => clk16,
      \cnt_reg[1]_0\ => sample_cnt_n_2,
      \cnt_reg[3]_0\ => sample_cnt_n_0,
      data_buff0 => data_buff0,
      en_b => en_b,
      en_b_reg(0) => cnt_reg(3),
      en_s => en_s,
      rst => rst,
      rst_s => rst_s,
      rst_s_reg => rst_s_i_2_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity UART_RX_RX_UART_0_0_RX_UART is
  port (
    data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Rx_done : out STD_LOGIC;
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    Rx : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of UART_RX_RX_UART_0_0_RX_UART : entity is "RX_UART";
end UART_RX_RX_UART_0_0_RX_UART;

architecture STRUCTURE of UART_RX_RX_UART_0_0_RX_UART is
  signal clk16 : STD_LOGIC;
begin
CLK_16: entity work.UART_RX_RX_UART_0_0_CLOCK_16
     port map (
      clk => clk,
      clk16 => clk16
    );
FSM_BLOCK: entity work.UART_RX_RX_UART_0_0_FSM_RX
     port map (
      Rx => Rx,
      Rx_done => Rx_done,
      clk16 => clk16,
      data_out(7 downto 0) => data_out(7 downto 0),
      rst => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity UART_RX_RX_UART_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    Rx : in STD_LOGIC;
    Rx_done : out STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of UART_RX_RX_UART_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of UART_RX_RX_UART_0_0 : entity is "UART_RX_RX_UART_0_0,RX_UART,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of UART_RX_RX_UART_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of UART_RX_RX_UART_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of UART_RX_RX_UART_0_0 : entity is "RX_UART,Vivado 2020.2.2";
end UART_RX_RX_UART_0_0;

architecture STRUCTURE of UART_RX_RX_UART_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN UART_RX_clk_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.UART_RX_RX_UART_0_0_RX_UART
     port map (
      Rx => Rx,
      Rx_done => Rx_done,
      clk => clk,
      data_out(7 downto 0) => data_out(7 downto 0),
      rst => rst
    );
end STRUCTURE;
