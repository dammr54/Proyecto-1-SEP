library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ParpadeoMorse is
    Port (
        clk      : in  STD_LOGIC;
        rst      : in  STD_LOGIC;
        morse    : in  STD_LOGIC_VECTOR(4 downto 0);
        mascara  : in  STD_LOGIC_VECTOR(4 downto 0);
        flag     : in  STD_LOGIC;
        led      : out STD_LOGIC;
        morse_out : out STD_LOGIC_VECTOR(4 downto 0);
        mask_out : out STD_LOGIC_VECTOR(4 downto 0);
        bit_idxx : out STD_LOGIC;
        bit_idxxx : out STD_LOGIC_VECTOR(2 downto 0);
        int_count : out INTEGER
    );
end ParpadeoMorse;

architecture Behavioral of ParpadeoMorse is
    function contar_unos(mascara: STD_LOGIC_VECTOR) return integer is
        variable count : integer := 0;
    begin
        for i in mascara'range loop
            if mascara(i) = '1' then
                count := count + 1;
            end if;
        end loop;
        return count;
    end function;

    signal contador      : integer := 0;
    signal bit_idx       : integer range 0 to 4 := 4;
    constant MAX_COUNT_LONG  : integer := 125000000;
    constant MAX_COUNT_SHORT : integer := 62500000;
    signal led_state     : STD_LOGIC := '0';
    signal count_limit   : integer := 0;
    signal sequence_done : BOOLEAN := FALSE;
    signal prev_flag     : STD_LOGIC := '0';
    signal save_morse    : STD_LOGIC_VECTOR(4 downto 0) := "00000";
    signal save_mascara  : STD_LOGIC_VECTOR(4 downto 0) := "00000";
    signal led_on        : BOOLEAN := TRUE;

begin
    process(clk, rst)
    begin
        if rst = '1' then
            contador <= 0;
            count_limit <= 0;
            bit_idx <= 4;
            led_state <= '0';
            sequence_done <= FALSE;
            prev_flag <= '0';
            save_morse <= "00000";
            save_mascara <= "00000";
            led_on <= TRUE;
        elsif rising_edge(clk) then
            if flag = '1' and prev_flag = '0' then
                sequence_done <= FALSE;
                bit_idx <= contar_unos(mascara) - 1;
                save_morse <= morse;
                save_mascara <= mascara;
                led_on <= TRUE;
            end if;

            prev_flag <= flag;

            if sequence_done = FALSE then
                if contador = count_limit then
                    contador <= 0;

                    if led_on then
                        -- Actualiza morse_bit antes de usarlo
                        if save_mascara(bit_idx) = '1' then
                            if save_morse(bit_idx) = '1' then
                                led_state <= '1';  -- Encender LED por más tiempo
                                count_limit <= MAX_COUNT_LONG;
                            else
                                led_state <= '1';  -- Encender LED por menos tiempo
                                count_limit <= MAX_COUNT_SHORT;
                            end if;
                        else
                            led_state <= '0';  -- Si la máscara es '0', apaga el LED
                        end if;

                        led_on <= FALSE;  -- Desactiva el encendido
                    else
                        led_state <= '0';  -- Apagar LED después del tiempo configurado
                        count_limit <= MAX_COUNT_SHORT;  -- Tiempo corto entre bits
                        led_on <= TRUE;  -- Reactivar encendido para el siguiente bit

                        -- Avanzar al siguiente bit
                        if bit_idx = 0 then
                            bit_idx <= 4;  -- Reiniciar índice
                            sequence_done <= TRUE;  -- Terminar la secuencia
                        else
                            bit_idx <= bit_idx - 1;  -- Avanzar al siguiente bit
                        end if;
                    end if;
                else
                    contador <= contador + 1;  -- Incrementar el contador
                end if;
            end if;
        end if;
    end process;

    led <= led_state;
    morse_out <= save_morse;
    mask_out <= save_mascara;
    bit_idxx <= save_morse(bit_idx);  -- Actualiza aquí en lugar de morse_bit
    bit_idxxx <= std_logic_vector(to_unsigned(bit_idx, bit_idxxx'length));
    int_count <= count_limit;

end Behavioral;


