library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_TX is
--  Port ( );
end tb_TX;

architecture Behavioral of tb_TX is
signal    clk:  std_logic;
signal    rst_n :  std_logic;
signal    data:  std_logic_vector(7 downto 0);
signal    Tx_Start:  std_logic;
signal    Tx:  std_logic;
signal    Tx_done:  std_logic;

constant CLK_PERIOD: time := 10ns;

begin
    uut: entity work.TX_UART port map(
    clk => clk,
    rst => rst_n,
    data => data,
    Tx_Start => Tx_Start,
    Tx => Tx,
    Tx_done => Tx_done
    );
    
process
begin
clk <= '1';
wait for CLK_PERIOD/2;
clk <= '0';
wait for CLK_PERIOD/2;
end process;

process
begin
        data <= "01000110";
        rst_n <= '0';
        Tx_Start <= '0';
        wait for 2*CLK_PERIOD;
        rst_n<='1';
        Tx_Start <= '1';
        wait for CLK_PERIOD;
        
        wait for 1000*652 *CLK_PERIOD;
----        Tx_Start <= '0';
--        wait for 480ns;
        wait;
end process;
end Behavioral;