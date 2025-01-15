library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all;

entity freq_divider is
    Port (
        clk         : in std_logic; 
        rst         : in std_logic; 
        clk_c   : out std_logic  
    );
end freq_divider;

architecture Behavioral of freq_divider is
    constant CLK_FREQ : integer := 100000000; 
    constant COUNT_0_01S : integer := CLK_FREQ/100; 
    
    signal counter_0_01s : integer range 1 to COUNT_0_01S:= 1;
    signal clk_0_01s_reg : std_logic := '0';

begin
    process(clk, rst)
    begin
        if rst = '0' then
            counter_0_01s <= 1;
            clk_0_01s_reg <= '0';
        elsif rising_edge(clk) then
            if counter_0_01s = COUNT_0_01S/2 then
                counter_0_01s <= 1;
                clk_0_01s_reg <= not clk_0_01s_reg;
            else
                counter_0_01s <= counter_0_01s + 1;
            end if;
        end if;
    end process;
    clk_c <= clk_0_01s_reg;

end Behavioral;
