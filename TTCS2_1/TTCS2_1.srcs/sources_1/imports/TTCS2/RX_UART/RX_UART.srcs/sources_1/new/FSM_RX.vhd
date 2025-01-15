

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;

entity FSM_RX is
generic (N: integer := 4);
    port(
    clk: in std_logic;
    rst: in std_logic;
    Rx: in std_logic;
    Rx_done: out std_logic;
    data_out: out std_logic_vector(7 downto 0)
    );
end FSM_RX;

architecture Behavioral of FSM_RX is
type state_mode is (IDLE,START,DATA);
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
    port map(
    clk => clk,
    rst_n => rst_b,
    en => en_b,
    counter => bit_counter
    );
    
    
    process(clk,rst)
    begin
        if(rst = '0') then
          state <= IDLE;
        else
            if rising_edge(clk) then
            case (state) is
                when IDLE =>
                        Rx_done <= '0';
                        rst_b <= '0';
                        rst_s <= '0';
                        data_buff <= (others => '0');
                        en_b <= '0';
                        en_s <= '0';
                        if Rx = '0' then
                            state <= START;
                            rst_s <= '1';
                            en_s <= '1';    
                            end if;
                        when START =>
                            if sample_counter = 8 then
                                if Rx = '0' then
                                rst_s <= '0';
                                en_s <= '1';
                                state <= DATA;
                                else
                                state <= IDLE;
                                end if;
                            end if;
                        when DATA =>
                           rst_s <= '1';
                           rst_b <= '1';
                           if bit_counter < 8 then
                               if sample_counter = 14 then  
                               data_buff <= Rx & data_buff(7 downto 1);
                               en_b <= '1';
                               else
                               en_b <= '0';
                               end if;
                           end if;
                           
                           if bit_counter = 8 then
                           data_out <= data_buff;
                           Rx_done <= '1';
                           state <= IDLE;
                           end if;
                        when others =>
                            state <= IDLE;
                        end case;
                     end if;
                  end if;
             end process;
end Behavioral;
