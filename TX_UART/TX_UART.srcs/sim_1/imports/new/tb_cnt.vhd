library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_cnt is
generic (N: integer :=4);
--  Port ( );
end tb_cnt;
architecture Behavioral of tb_cnt is
signal clk: std_logic;
signal rst: std_logic;
signal en: std_logic;
signal cnt: std_logic_vector(N-1 downto 0);

constant CLK_PERIOD: time :=10ns;
begin
    uut: entity work.COUNTER 
    generic map (N => N)
    port map(
    clk => clk,
    rst_n => rst,
    en => en,
    counter => cnt);
process
begin
    clk <= '1';
    wait for CLK_PERIOD/2;
    clk<= '0';
    wait for CLK_PERIOD/2;
end process;

process
begin
    rst <= '0';
    wait for 10ns;
    rst <= '1';
    en <= '0';
    wait for 50ns;
    en <= '1';
    wait for 50ns;
    en <= '0';
    wait for 50ns;
    en <= '1';
    wait for 400ns;
end process;
end Behavioral;
