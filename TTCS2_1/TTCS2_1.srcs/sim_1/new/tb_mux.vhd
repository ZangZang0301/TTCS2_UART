
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_mux is
--  Port ( );
end tb_mux;

architecture Behavioral of tb_mux is
signal data_in: std_logic_vector(7 downto 0);
signal data_out: std_logic_vector(3 downto 0);
begin
    uut: entity work.Mux8_4 port map(
    data_in=>data_in,
    data_out => data_out
    ); 
process
begin
    data_in <= x"48";
    wait for 30ns;
    data_in <= x"57";
    wait for 30ns;
    data_in <= x"49";
    wait for 30ns;
    data_in <= x"55";
    wait for 30ns;
    data_in <= x"49";
    wait for 30ns;
    data_in <= x"57";
    wait for 30ns;
    data_in <= x"48";
    wait for 30ns;
    data_in <= x"57";
    wait;    
end process;
end Behavioral;
