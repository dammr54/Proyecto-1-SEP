library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity RAM is
    Port (
        data_morse: in std_logic_vector(4 downto 0); -- Entrada de 10 bits (5 bits para morse, 5 bits para máscara)
        data_mask: in std_logic_vector(4 downto 0); -- Entrada de 10 bits (5 bits para morse, 5 bits para máscara)
        addr_in: in std_logic_vector(3 downto 0); -- Dirección de 2 bits
        clk: in std_logic;
        enable: in std_logic;
        write_in: in std_logic;
        morse_out: out std_logic_vector(4 downto 0); -- Salida de 5 bits para el código Morse
        mask_out: out std_logic_vector(4 downto 0)   -- Salida de 5 bits para la máscara
    );
end RAM;

architecture Behavioral of RAM is
    type ram_array is array (0 to 15) of std_logic_vector (9 downto 0);
    signal ram_data: ram_array := (
        b"00001_00011", b"01000_01111", b"01010_01111", b"00100_00111", b"00001_00011", b"00001_00011", b"00001_00011", b"00001_00011",
        b"00001_00011", b"00001_00011", b"00001_00011", b"00001_00011", b"00001_00011", b"00001_00011", b"00001_00011", b"00001_00011"
    );

    signal address_reg: std_logic_vector(3 downto 0) := (others => '0');
    signal data_reg: std_logic_vector(9 downto 0) := (others => '0');
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if enable = '1' then
                if write_in = '1' then
                    -- Escritura en la RAM
                    ram_data(to_integer(unsigned(addr_in))) <= data_morse & data_mask;
                else
                    -- Lectura de la RAM
                    data_reg <= ram_data(to_integer(unsigned(addr_in)));
                end if;
            end if;
        end if;
    end process;

    -- Separar el código Morse y la máscara desde la palabra de 10 bits
    morse_out <= data_reg(9 downto 5); -- 5 bits superiores para el código Morse
    mask_out <= data_reg(4 downto 0);  -- 5 bits inferiores para la máscara

end Behavioral;

