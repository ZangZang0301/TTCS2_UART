library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;
entity FSM is
generic (N: integer := 4);
port (
    clk: in std_logic;
    rst: in std_logic;
    data_in: in std_logic_vector (7 downto 0);
    Tx_Start: in std_logic;
    Tx_done: out std_logic;
    Tx: out std_logic
);
end FSM;
architecture Behavioral of FSM is
type state_mode is (IDLE,START,DATA,STOP);
signal state: state_mode;
signal rst_s: std_logic;
signal rst_b: std_logic;
signal bit_counter: std_logic_vector(3 downto 0) ;
signal sample_counter: std_logic_vector (3 downto 0);
signal data_buff: std_logic_vector(7 downto 0);
signal en_b: std_logic;
signal en_s: std_logic;

begin
    sample_cnt: entity work.COUNTER
    generic map (N=>N)
    port map(
    clk => clk,
    rst_n => rst_s,
    en => en_s,
    counter => sample_counter
    );
    
    bit_cnt: entity work.COUNTER 
    generic map (N=>N)
    port map (
    clk => clk,
    rst_n => rst_b,
    en => en_b,
    counter => bit_counter
    );
    ------------------------------------------------------
        process(clk,rst)
        begin
            if rst = '0' then
                state <= IDLE;
            else
                if rising_edge(clk) then
                    case (state) is
                        when IDLE =>
                            rst_b <= '0';
                            rst_s <= '0';
--                            data_buff <= (others =>'0');
                            en_s <= '0';
                            en_b <= '0';
                            Tx <= '1';
                            Tx_done <= '0';
                            if(Tx_Start = '1')then
                                state <= START;
                                data_buff <= data_in;
                                else 
                                state <= IDLE; 
                            end if;
                        when START =>
                            rst_s <= '1';
                            en_s <= '1';
                            Tx <= '0'; 
                            if(sample_counter = 14) then
                            state <= DATA;                          
                        end if;
                        when DATA =>
                                rst_b <= '1';    
                                if(sample_counter = 15)then
                                     Tx <= data_buff(0);
                                     data_buff <= '1' & data_buff(7 downto 1);
                                     en_b <= '1'; 
                                else
                                     en_b <= '0';
                                end if;
                              if (bit_counter = 9 and sample_counter = 15) then  
                                state <= IDLE;
                               Tx_done <='1';
                              end if;                    
                         when others =>
                            state <= IDLE;
                    end case;
                end if;
            end if;
        end process;
end Behavioral;