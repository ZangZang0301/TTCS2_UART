-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2.2 (win64) Build 3118627 Tue Feb  9 05:14:06 MST 2021
-- Date        : Tue Jan 14 02:42:08 2025
-- Host        : Admin-PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/Vivado/TTCS2/TTCS2_1/TTCS2_1.gen/sources_1/bd/TTCS_1/ip/TTCS_1_RAM_0_0/TTCS_1_RAM_0_0_sim_netlist.vhdl
-- Design      : TTCS_1_RAM_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TTCS_1_RAM_0_0_RAM is
  port (
    led_7_1 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    led_7_2 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_en : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of TTCS_1_RAM_0_0_RAM : entity is "RAM";
end TTCS_1_RAM_0_0_RAM;

architecture STRUCTURE of TTCS_1_RAM_0_0_RAM is
  signal \buff1[7]_i_1_n_0\ : STD_LOGIC;
  signal \buff1[7]_i_2_n_0\ : STD_LOGIC;
  signal buff2 : STD_LOGIC;
  signal read_pointer : STD_LOGIC;
  signal read_pointer_i_1_n_0 : STD_LOGIC;
begin
\buff1[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wr_en,
      I1 => read_pointer,
      O => \buff1[7]_i_1_n_0\
    );
\buff1[7]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst,
      O => \buff1[7]_i_2_n_0\
    );
\buff1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \buff1[7]_i_1_n_0\,
      CLR => \buff1[7]_i_2_n_0\,
      D => data_in(0),
      Q => led_7_1(0)
    );
\buff1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \buff1[7]_i_1_n_0\,
      CLR => \buff1[7]_i_2_n_0\,
      D => data_in(1),
      Q => led_7_1(1)
    );
\buff1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \buff1[7]_i_1_n_0\,
      CLR => \buff1[7]_i_2_n_0\,
      D => data_in(2),
      Q => led_7_1(2)
    );
\buff1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \buff1[7]_i_1_n_0\,
      CLR => \buff1[7]_i_2_n_0\,
      D => data_in(3),
      Q => led_7_1(3)
    );
\buff1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \buff1[7]_i_1_n_0\,
      CLR => \buff1[7]_i_2_n_0\,
      D => data_in(4),
      Q => led_7_1(4)
    );
\buff1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \buff1[7]_i_1_n_0\,
      CLR => \buff1[7]_i_2_n_0\,
      D => data_in(5),
      Q => led_7_1(5)
    );
\buff1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \buff1[7]_i_1_n_0\,
      CLR => \buff1[7]_i_2_n_0\,
      D => data_in(6),
      Q => led_7_1(6)
    );
\buff1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \buff1[7]_i_1_n_0\,
      CLR => \buff1[7]_i_2_n_0\,
      D => data_in(7),
      Q => led_7_1(7)
    );
\buff2[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => wr_en,
      I1 => read_pointer,
      O => buff2
    );
\buff2_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => buff2,
      CLR => \buff1[7]_i_2_n_0\,
      D => data_in(0),
      Q => led_7_2(0)
    );
\buff2_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => buff2,
      CLR => \buff1[7]_i_2_n_0\,
      D => data_in(1),
      Q => led_7_2(1)
    );
\buff2_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => buff2,
      CLR => \buff1[7]_i_2_n_0\,
      D => data_in(2),
      Q => led_7_2(2)
    );
\buff2_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => buff2,
      CLR => \buff1[7]_i_2_n_0\,
      D => data_in(3),
      Q => led_7_2(3)
    );
\buff2_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => buff2,
      CLR => \buff1[7]_i_2_n_0\,
      D => data_in(4),
      Q => led_7_2(4)
    );
\buff2_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => buff2,
      CLR => \buff1[7]_i_2_n_0\,
      D => data_in(5),
      Q => led_7_2(5)
    );
\buff2_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => buff2,
      CLR => \buff1[7]_i_2_n_0\,
      D => data_in(6),
      Q => led_7_2(6)
    );
\buff2_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => buff2,
      CLR => \buff1[7]_i_2_n_0\,
      D => data_in(7),
      Q => led_7_2(7)
    );
read_pointer_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => wr_en,
      I1 => read_pointer,
      O => read_pointer_i_1_n_0
    );
read_pointer_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \buff1[7]_i_2_n_0\,
      D => read_pointer_i_1_n_0,
      Q => read_pointer
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TTCS_1_RAM_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    led_7_1 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    led_7_2 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_en : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of TTCS_1_RAM_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of TTCS_1_RAM_0_0 : entity is "TTCS_1_RAM_0_0,RAM,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of TTCS_1_RAM_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of TTCS_1_RAM_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of TTCS_1_RAM_0_0 : entity is "RAM,Vivado 2020.2.2";
end TTCS_1_RAM_0_0;

architecture STRUCTURE of TTCS_1_RAM_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.TTCS_1_RAM_0_0_RAM
     port map (
      clk => clk,
      data_in(7 downto 0) => data_in(7 downto 0),
      led_7_1(7 downto 0) => led_7_1(7 downto 0),
      led_7_2(7 downto 0) => led_7_2(7 downto 0),
      rst => rst,
      wr_en => wr_en
    );
end STRUCTURE;
