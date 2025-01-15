library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;

entity RAM is
   port(
    clk: in std_logic;
    rst: in std_logic;
    data_in: in std_logic_vector(7 downto 0);
    led_7_1: out std_logic_vector(7 downto 0);
    led_7_2: out std_logic_vector(7 downto 0);
    wr_en: in std_logic
   );
end RAM;

architecture Behavioral of RAM is
   signal buff1: std_logic_vector(7 downto 0);
   signal buff2: std_logic_vector(7 downto 0);
   signal read_pointer   : std_logic := '0';            -- Con tr? ??c

begin
    process (clk, rst)
    begin
        if rst = '0' then
            buff1 <= (others => '0');
            buff2 <= (others => '0');
            read_pointer <= '0';
        else
            if rising_edge(clk) then
                    if wr_en = '1' then
                        if read_pointer = '0' then
                            buff1 <= data_in;
                            read_pointer <= '1';
                        else
                            buff2 <= data_in;
                            read_pointer <= '0';
                        end if;
                    end if;  
            end if;
       end if;
       led_7_1 <= buff1;
       led_7_2 <= buff2; 
    end process;
end Behavioral;

