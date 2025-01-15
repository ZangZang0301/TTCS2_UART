library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity CLOCK_16 is
    port (
        clk100M : in  std_logic;             
        clk_16  : out std_logic              
    );
end CLOCK_16;

architecture Behavioral of CLOCK_16 is     
    constant DIVISOR      : integer := 652;
    
    signal counter : integer range 1 to DIVISOR/2 := 1;
    signal clk_out : std_logic := '0';
    
begin
    process(clk100M)
    begin
        if rising_edge(clk100M) then
                if counter = DIVISOR/2 then
                    counter <= 1;
                    clk_out <= not clk_out; 
                else
                    counter <= counter + 1;
                end if;
            end if;
    end process;
    clk_16 <= clk_out;
end Behavioral;
