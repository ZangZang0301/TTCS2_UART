library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity tb_ram16 is
end tb_ram16;

architecture behavior of tb_ram16 is
    -- Tham chi?u ??n module RAM_16
    component RAM_16
        port(
            clk: in std_logic;
            rst: in std_logic;
            data_in: in std_logic_vector(7 downto 0);
            data_out_led: out std_logic_vector(15 downto 0);
            data_out_tx: out std_logic_vector(7 downto 0);
            tx_start: out std_logic;
            rd_en: in std_logic;
        );
    end component;

    -- Các tín hi?u mô ph?ng
    signal clk: std_logic := '0';
    signal rst: std_logic := '1';
    signal data_in: std_logic_vector(7 downto 0) := (others => '0');
    signal data_out_led: std_logic_vector(15 downto 0);
    signal data_out_tx: std_logic_vector(7 downto 0);
    signal tx_start: std_logic;
    signal rx_en: std_logic := '0';
    signal tx_en: std_logic := '0';
    signal delay_done: std_logic;

    -- Th?i gian delay
    constant CLK_PERIOD: time := 20 ns;  -- Chu k? ??ng h? 50 MHz
begin
    -- T?o tín hi?u ??ng h?
    clk_process :process
    begin
        clk <= '1';
        wait for CLK_PERIOD / 2;
        clk <= '0';
        wait for CLK_PERIOD / 2;
    end process;

    -- C?u hình module RAM_16
    uut: RAM_16
        port map (
            clk => clk,
            rst => rst,
            data_in => data_in,
            data_out_led => data_out_led,
            data_out_tx => data_out_tx,
            tx_start => tx_start,
            rx_en => rx_en,
            tx_en => tx_en,
            delay_done => delay_done
        );

    -- Test các tình hu?ng
    stim_proc: process
    begin
        -- Reset module
        rst <= '0';
        wait for 50 ns;
        rst <= '1';
        wait for 50 ns;

        -- B?t ??u test v?i d? li?u
        -- G?i d? li?u ??u vào cho module
        -- G?i byte 1
        rx_en <= '1';  -- Kích ho?t nh?n d? li?u
        wait for CLK_PERIOD * 5;  -- Ch? 2 chu k? ?? hoàn thành nh?n
        rx_en <= '0';  -- T?t nh?n d? li?u
        data_in <= "10101010";  -- D? li?u 1st byte

        
        -- G?i byte 2
        wait for CLK_PERIOD * 5;
        rx_en <= '1';  -- Kích ho?t nh?n d? li?u
        wait for CLK_PERIOD * 5;  -- Ch? 2 chu k? ?? hoàn thành nh?n
        rx_en <= '0';  -- T?t nh?n d? li?u
        data_in <= "11001100";  -- D? li?u 2nd byte
          
        -- Ki?m tra sau khi nh?n ?? 2 byte        
        -- B?t ??u truy?n d? li?u
        tx_en <= '1';  -- Kích ho?t truy?n d? li?u
        wait for CLK_PERIOD * 2;  -- Ch? 2 chu k? ?? hoàn thành truy?n
        tx_en <= '0';  -- T?t truy?n d? li?u
        
        rx_en <= '1';  -- Kích ho?t nh?n d? li?u
        wait for CLK_PERIOD * 5;  -- Ch? 2 chu k? ?? hoàn thành nh?n
        rx_en <= '0';  -- T?t nh?n d? li?u
        data_in <= "11111111";  -- D? li?u 1st byte

        
        -- G?i byte 2
        wait for CLK_PERIOD * 5;
        rx_en <= '1';  -- Kích ho?t nh?n d? li?u
        wait for CLK_PERIOD * 5;  -- Ch? 2 chu k? ?? hoàn thành nh?n
        rx_en <= '0';  -- T?t nh?n d? li?u
        data_in <= "10000000";  -- D? li?u 2nd byte
          
        -- Ki?m tra sau khi nh?n ?? 2 byte
        wait for 0.5 sec;  -- ??i 0.5 giây, mô ph?ng ?? tr?
        
        -- B?t ??u truy?n d? li?u
        tx_en <= '1';  -- Kích ho?t truy?n d? li?u
        wait for CLK_PERIOD * 2;  -- Ch? 2 chu k? ?? hoàn thành truy?n
        tx_en <= '0';  -- T?t truy?n d? li?u
        
        wait for 100 ns;
    end process;
end behavior;
