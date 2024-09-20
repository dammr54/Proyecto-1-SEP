library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ParpadeoMorse is
    Port (
        clk      : in  STD_LOGIC;             -- Se�al de reloj
        rst      : in  STD_LOGIC;             -- Se�al de reset
        morse    : in  STD_LOGIC_VECTOR(4 downto 0); -- C�digo Morse de 5 bits
        mascara  : in  STD_LOGIC_VECTOR(4 downto 0); -- M�scara para indicar qu� bits considerar
        flag     : in  STD_LOGIC;              -- Se�al de pulso para habilitar la secuencia
        led      : out STD_LOGIC               -- Salida al LED
    );
end ParpadeoMorse;

architecture Behavioral of ParpadeoMorse is
    signal contador      : integer := 0;      -- Contador para dividir la frecuencia del reloj
    signal bit_idx       : integer range 0 to 4 := 0; -- �ndice para recorrer los bits
    constant MAX_COUNT_LONG  : integer := 125000000; -- Tiempo largo (1 segundo si el reloj es de 125 MHz)
    constant MAX_COUNT_SHORT : integer := 62500000; -- Tiempo corto (0.5 segundos si el reloj es de 50 MHz)
    signal led_state     : STD_LOGIC := '0';  -- Estado del LED
    signal morse_bit     : STD_LOGIC := '0';  -- Bit actual de Morse procesado
    signal count_limit   : integer := 0;      -- Variable para ajustar el tiempo de encendido/apagado
    signal sequence_done : BOOLEAN := FALSE;  -- Estado para saber si la secuencia ya fue mostrada
    signal prev_flag     : STD_LOGIC := '0';  -- Almacena el estado anterior de flag
    signal save_morse    : STD_LOGIC_VECTOR(4 downto 0) := "00000";
    signal save_mascara  : STD_LOGIC_VECTOR(4 downto 0) := "00000";
    signal led_on        : BOOLEAN := TRUE;   -- Se�al para alternar entre encendido y apagado
begin
    process(clk, rst)
    begin
        if rst = '1' then
            contador <= 0;
            count_limit <= 0;
            bit_idx <= 0;
            led_state <= '0';  -- Apagar el LED al hacer reset
            sequence_done <= FALSE; -- Reiniciar el estado de la secuencia
            prev_flag <= '0';  -- Inicializar el estado anterior de flag
            save_morse <= "00000";
            save_mascara <= "00000";
            led_on <= TRUE;    -- Inicialmente se enciende el LED
        elsif rising_edge(clk) then
            -- Detectar el flanco de subida de flag
            if flag = '1' and prev_flag = '0' then
                sequence_done <= FALSE; -- Reiniciar la secuencia al detectar el pulso
                bit_idx <= 0;           -- Comenzar desde el primer bit
                save_morse <= morse;
                save_mascara <= mascara;
                led_on <= TRUE;         -- Iniciar con LED encendido
            end if;

            prev_flag <= flag; -- Actualizar el estado anterior de flag

            -- Controlar la secuencia solo si no se ha completado
            if sequence_done = FALSE then
                if contador = count_limit then
                    contador <= 0;  -- Reiniciar el contador
                    
                    -- Alternar entre LED encendido y apagado
                    if led_on then
                        -- Procesar el bit correspondiente del c�digo Morse y la m�scara
                        morse_bit <= save_morse(bit_idx);
                        
                        -- Si la m�scara es 1, ajustar el encendido seg�n el bit de Morse
                        if save_mascara(bit_idx) = '1' then
                            if morse_bit = '1' then
                                led_state <= '1';  -- Encender LED por m�s tiempo
                                count_limit <= MAX_COUNT_LONG;
                            else
                                led_state <= '1';  -- Encender LED por menos tiempo
                                count_limit <= MAX_COUNT_SHORT;
                            end if;
                        else
                            -- Si la m�scara es 0, apagar el LED
                            led_state <= '0';
                            count_limit <= 0;
                        end if;
                        
                        -- Despu�s de encender el LED, se apagar�
                        led_on <= FALSE;
                    else
                        -- Apagar el LED por el mismo tiempo que estuvo encendido
                        led_state <= '0';
                        count_limit <= MAX_COUNT_SHORT;
                        led_on <= TRUE;

                        -- Avanzar al siguiente bit solo despu�s de apagar el LED
                        if bit_idx = 4 then
                            bit_idx <= 0;  -- Reiniciar el �ndice si se han recorrido los 5 bits
                            sequence_done <= TRUE; -- Marcar la secuencia como completada
                        else
                            bit_idx <= bit_idx + 1;
                        end if;
                    end if;
                else
                    contador <= contador + 1;
                end if;
            end if;
        end if;
    end process;

    -- Asignar el estado del LED
    led <= led_state;

end Behavioral;



