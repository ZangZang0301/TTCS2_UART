
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux8_4 is
port (
    data_in: in std_logic_vector(7 downto 0);
    data_out: out std_logic_vector(3 downto 0)
);
end Mux8_4;
architecture Behavioral of Mux8_4 is
signal mux: std_logic_vector(7 downto 0);
begin
   mux <= data_in;
    process(mux)
    begin
    case mux is
         when "00110000" => data_out <= "0000";
         when "00110001" => data_out <= "0001";
         when "00110010" => data_out <= "0010";
         when "00110011" => data_out <= "0011";
         when "00110100" => data_out <= "0100";
         when "00110101" => data_out <= "0101";
         when "00110110" => data_out <= "0110";
         when "00110111" => data_out <= "0111";
         when "00111000" => data_out <= "1000";
         when "00111001" => data_out <= "1001";
         when others => data_out <= "XXXX";
    end case;       
--   with mux select
--		data_out <= b"0000" when "00110000",
--				  b"0001" when x"49",
--				  b"0010" when x"50",
--				  b"0011" when x"51",
--				  b"0100" when x"52",
--				  b"0101" when x"53",
--				  b"0110" when x"54",
--				  b"0111" when x"55",
--				  b"1000" when x"56",
--				  b"1001" when x"57",
--				  "XXXX" when others;    
    end process;
end Behavioral;
