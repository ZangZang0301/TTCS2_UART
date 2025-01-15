
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity Mach_GM_led7 is
Port (
        c: in std_logic;
        data_in_1 : in std_logic_vector (3 downto 0);
        data_in_2 : in std_logic_vector (3 downto 0);
        ou: out std_logic_vector(6 downto 0)); 
end Mach_GM_led7;
architecture Behavioral of Mach_GM_led7 is 
signal c_2: std_logic_vector (3 downto 0)  := x"0";
begin
 process(c)
    begin
        if c ='0' then
            c_2 <= data_in_1;    
        else
            c_2 <= data_in_2;
        end if;
end process;
    
    with c_2 select
		ou <=    b"1111_110" when x"0",
				  b"0110_000" when x"1",
				  b"1101_101" when x"2",
				  b"1111_001" when x"3",
				  b"0110_011" when x"4",
				  b"1011_011" when x"5",
				  b"1011_111" when x"6",
				  b"1110_000" when x"7",
				  b"1111_111" when x"8",
				  b"1111_011" when x"9",
				  "XXXXXXX" when others;

end Behavioral;


