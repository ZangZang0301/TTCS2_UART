----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/28/2024 11:16:12 AM
-- Design Name: 
-- Module Name: TB_FSM - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TB_FSM is 
end TB_FSM;

architecture Behavioral of TB_FSM is
signal    clk: std_logic;
signal    rst: std_logic;
signal    Rx:  std_logic;
signal    Rx_done:  std_logic;
signal    data_out: std_logic_vector(7 downto 0);

constant CLK_P: time := 10ns;
begin
    uut: entity work.FSM_RX port map(
    clk => clk,
    rst => rst,
    Rx => Rx,
    Rx_done => Rx_done,
    data_out => data_out 
    );
    process
    begin
    clk <= '1';
    wait for CLK_P/2;
    clk <= '0';
    wait for CLK_P/2;
    end process;
    
    process
    begin
    Rx <= '1';
    rst <= '0';
    wait for 2*CLK_P;
    rst<= '1';
    wait for 10*16*CLK_P;
    Rx <= '0';
    wait for 16*CLK_P;
    Rx <= '0';
    wait for 16*CLK_P;
    Rx <= '1';
    wait for 16*CLK_P;
    Rx <= '0';
    wait for 16*CLK_P;
    Rx <= '1';
    wait for 16*CLK_P;
    Rx <= '0';
    wait for 16*CLK_P;
    Rx <= '1';
    wait for 16*CLK_P;
    Rx <= '0';
    wait for 16*CLK_P;
    Rx <= '1';
    wait for 16*CLK_P;
    Rx <= '1';
    wait for 16*CLK_P;

   -- 10101010
    Rx <= '0';
    wait for 16*CLK_P;
    Rx <= '0';
    wait for 16*CLK_P;
    Rx <= '1';
    wait for 16*CLK_P;
    Rx <= '1';
    wait for 16*CLK_P;
    Rx <= '0';
    wait for 16*CLK_P;
    Rx <= '0';
    wait for 16*CLK_P;
    Rx <= '0';
    wait for 16*CLK_P;
    Rx <= '1';
    wait for 16*CLK_P;
    Rx <= '0';
    wait for 16*CLK_P;
    Rx <= '1';
    wait for 16*CLK_P;
    -- 01000110

    Rx <= '0';
    wait for 16*CLK_P;
    Rx <= '0';
    wait for 16*CLK_P;
    Rx <= '1';
    wait for 16*CLK_P;
    Rx <= '1';
    wait for 16*CLK_P;
    Rx <= '0';
    wait for 16*CLK_P;
    Rx <= '0';
    wait for 16*CLK_P;
    Rx <= '0';
    wait for 16*CLK_P;
    Rx <= '1';
    wait for 16*CLK_P;
    Rx <= '0';
    wait for 16*CLK_P;
    Rx <= '1';
    wait for 16*CLK_P;
    --01000110
    Rx <= '1';
    wait for 20*16*CLK_P;
    wait for 16*CLK_P;
    wait for 480ns;
    wait;
    end process;
end Behavioral;
