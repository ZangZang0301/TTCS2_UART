library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library STD; 
use STD.TEXTIO.all;

entity read_txtfile is
    Port (
        clk          : in std_logic;                    -- Clock ??u v�o
        full         : in std_logic;                    -- T�n hi?u FIFO ??y
        wr_en        : out std_logic;                   -- T�n hi?u ghi v�o FIFO
        char_8bit_out: out std_logic_vector(7 downto 0) -- ??u ra 8 bit
    );
end read_txtfile;

architecture Behavioral of read_txtfile is
    -- Khai b�o file ??u v�o v� ??u ra
    file input_file : TEXT open READ_MODE is "D:/Vivado/TTCS2/TTCS2_1/input.txt";
    file output_file : TEXT open WRITE_MODE is "D:/Vivado/TTCS2/TTCS2_1/output.txt";

    -- C�c t�n hi?u t?m th?i
    signal temp_char_8bit_out : std_logic_vector(7 downto 0) := (others => '0'); -- D? li?u t?m th?i
    signal temp_wr_en : std_logic := '0';          -- T�n hi?u ghi t?m th?i

    -- H�m chuy?n ??i std_logic_vector sang bit_vector
    function to_bit_vector(slv: std_logic_vector) return bit_vector is
        variable bv: bit_vector(slv'range);
    begin
        for i in slv'range loop
            if slv(i) = '1' then
                bv(i) := '1';
            else
                bv(i) := '0';
            end if;
        end loop;
        return bv;
    end function;

begin
    process(clk)
        variable line_var : LINE;                -- Bi?n l?u d�ng
        variable char_val : character;          -- Bi?n l?u k� t?
        variable bit_val  : std_logic_vector(7 downto 0); -- Bi?u di?n 8 bit
        variable bit_vec  : bit_vector(7 downto 0);       -- Bi?u di?n ki?u bit_vector
        variable line_out : LINE;               -- D�ng ghi ra file
        variable i : integer := 1;              -- Bi?n ??m, b?t ??u t? 1
    begin
        if rising_edge(clk) then
            -- M?c ??nh kh�ng ghi v�o FIFO
            temp_wr_en <= '0';

            -- Ki?m tra FIFO c� ??y kh�ng
            if full = '0' then
                -- N?u FIFO kh�ng ??y, ti?p t?c x? l� file
                if not endfile(input_file) then
                    if line_var'length = 0 then
                        -- ??c d�ng m?i t? file n?u h?t k� t? trong d�ng
                        READLINE(input_file, line_var);
                        i := 1; -- Kh?i t?o l?i bi?n ??m
                    end if;

                    if i <= line_var'length then
                        -- L?y k� t? t?i v? tr� i trong d�ng
                        char_val := line_var(i);

                        -- Chuy?n k� t? th�nh gi� tr? 8 bit
                        bit_val := std_logic_vector(to_unsigned(character'pos(char_val), 8));

                        -- Chuy?n ??i std_logic_vector sang bit_vector
                        bit_vec := to_bit_vector(bit_val);

                        -- Ghi gi� tr? 8 bit v�o t?p ??u ra
                        WRITE(line_out, bit_vec); -- Ghi bit_vector v�o d�ng
                        WRITELINE(output_file, line_out); -- Ghi d�ng v�o file v� xu?ng d�ng
                 
                        -- ??a d? li?u v�o FIFO
                        temp_char_8bit_out <= bit_val; -- G�n d? li?u t?m th?i
                        temp_wr_en <= '1';            -- K�ch ho?t ghi FIFO

                        -- T?ng bi?n ??m
                        i := i + 1;
                    end if;
                else
                    -- N?u h?t file, d?ng ghi
                    temp_char_8bit_out <= (others => '0');
                    temp_wr_en <= '0';
                end if;
            else
                -- FIFO ??y, d?ng ghi
                temp_wr_en <= '0';
            end if;
        end if;
    end process;

    -- G�n t�n hi?u ??u ra
    char_8bit_out <= temp_char_8bit_out;
    wr_en <= temp_wr_en; -- T�n hi?u ghi v�o FIFO
end Behavioral;
