library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;
use IEEE.NUMERIC_STD.ALL;

entity tb_FSM is
--  Port ( );
end tb_FSM;

architecture Behavioral of tb_FSM is
signal clk:  std_logic;
signal rst_n:  std_logic;
signal data_in: std_logic_vector (7 downto 0);
signal Tx_Start:  std_logic;
signal Tx_done: std_logic :='0';
signal Tx:  std_logic;

constant CLK_PERIOD: time := 10ns;
begin
    uut: entity work.FSM port map(
    clk => clk,
    rst => rst_n,
    Tx_Start => Tx_Start,
    data_in => data_in,
    Tx_done=> Tx_done,
    Tx => Tx);

process
begin
clk <= '1';
wait for CLK_PERIOD/2;
clk <= '0';
wait for CLK_PERIOD/2;
end process;

    process
    begin 
    Tx_Start <= '0';
        data_in <= "01000101";
        rst_n <= '0';
        wait for CLK_PERIOD;
        rst_n<='1';
        wait for CLK_PERIOD;
        Tx_Start <= '1';
        wait for CLK_PERIOD*5*1000;
        Tx_Start <= '0';
        wait for CLK_PERIOD *5*1000;
        Tx_Start <= '1';
        wait for CLK_PERIOD *5*1000;

--        Tx_Start <= '0';
--        wait for 480ns;
        wait;
    end process;
end Behavioral;
