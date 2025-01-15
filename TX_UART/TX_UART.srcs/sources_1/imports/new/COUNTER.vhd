library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;

entity COUNTER is
generic(N: integer := 4);
port(
    clk: in std_logic;
    rst_n: in std_logic;
    en: in std_logic;
    counter: out std_logic_vector (N-1 downto 0)
    );
end COUNTER;
architecture Behavioral of COUNTER is
signal cnt: std_logic_vector (N-1 downto 0);
begin
    process(clk,rst_n)
    begin
        if(rst_n = '0')then
            cnt <= (others =>'0');
        else
           if rising_edge(clk)then
            if(en = '1') then
                cnt <= cnt + 1;
            end if;
        end if;
      end if;
    end process;   
    counter <= cnt;                 
end Behavioral;
