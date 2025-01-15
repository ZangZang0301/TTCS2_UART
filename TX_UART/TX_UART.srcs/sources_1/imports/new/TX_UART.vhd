library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TX_UART is
port (
    clk: in std_logic;
    rst : in std_logic;
    data: in std_logic_vector(7 downto 0);
    Tx_Start: in std_logic;
    Tx: out std_logic;
    Tx_done: out std_logic
    );
end TX_UART;
architecture Behavioral of TX_UART is
signal clk16: std_logic;
begin
    -- CLOCK_16
    clk_16: entity work.CLOCK_16 port map(
    clk100M => clk,
    clk_16 => clk16
    );
   -- FSM
   FSM_BLOCK: entity work.FSM port map(
   clk => clk16,
    rst => rst,
    data_in => data,
    Tx_Start => Tx_Start,
    Tx_done => Tx_done,
    Tx => Tx
   );    
end Behavioral;