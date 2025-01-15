library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_CLOCK16 is
--  Port ( );
end tb_CLOCK16;

architecture Behavioral of tb_CLOCK16 is
signal clk: std_logic :='0';
signal rstn: std_logic;
signal clk16: std_logic;

constant CLK_PERIOD: time := 10ns; 
begin
    uut: entity work.CLOCK_16 port map(
    clk100M => clk,
    clk_16 => clk16
);
    process
    begin
    clk <= '1';
    wait for CLK_PERIOD/2;
    clk<= '0';
     wait for CLK_PERIOD/2;
    
    end process;
    
    process
    begin
    wait for 100ns;
    wait;
end process;
end Behavioral;