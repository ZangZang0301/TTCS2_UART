library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RX_UART is
generic (N: integer := 4);
port (
    clk: in std_logic;
    rst: in std_logic;
    Rx: in std_logic;
    Rx_done: out std_logic;
    data_out: out std_logic_vector(7 downto 0)
);
end RX_UART;
architecture Behavioral of RX_UART is
signal clk16: std_logic;
begin
    CLK_16: entity work.CLOCK_16 port map(
    clk100M => clk,
    clk_16 =>clk16
    );
    FSM_BLOCK: entity work.FSM_RX port map(
    clk => clk16,
    rst => rst,
    Rx => Rx,
    Rx_done => Rx_done,
    data_out => data_out
    );
end Behavioral;
