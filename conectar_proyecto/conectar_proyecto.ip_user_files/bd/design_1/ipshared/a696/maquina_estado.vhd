library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ControlUnit is
    Port (
        -- 
        clk : in std_logic;
        rst : in std_logic;
        btn_enable : in std_logic;           -- Botón habilitador
        boton1 : in std_logic;
        boton2 : in std_logic;
        switches : in std_logic_vector(3 downto 0); -- Switches para ingresar dirección y datos
        -- senales RAM
        write_in : out std_logic;            -- Señal de escritura para la RAM
        ram_enable : out std_logic;          -- Señal de habilitación de la RAM
        ram_data_morse   : out std_logic_vector(4 downto 0);
        ram_data_mask   : out std_logic_vector(4 downto 0);
        ram_addr : out std_logic_vector(3 downto 0);
        -- senales selec morse
        selec_enable : out std_logic;
        selec_morse : out std_logic_vector(5 downto 0); -- Salida de código Morse para el LED
        estado : out std_logic_vector(3 downto 0)
    );
end ControlUnit;

architecture Behavioral of ControlUnit is
    -- Definición de los estados
    type state_type is (IDLE, SELECT_MODE, WRITE_ADDR, WRITE_MORSE, WRITE_MASK, READ_RAM, SEND_TO_MORSE, EXECUTE);
    signal state, next_state : state_type := IDLE;

    -- Señales internas
    -- signal ram_addr : std_logic_vector(3 downto 0);  -- Registro para almacenar la dirección
    -- signal ram_data : std_logic_vector(9 downto 0);  -- Registro para almacenar datos leídos de la RAM

    -- Señales para la detección de flanco de subida
    signal btn_enable_prev : std_logic := '0';  -- Estado anterior del botón
    signal rising_edge_enable : std_logic := '0'; -- Señal de flanco de subida
    
    -- signal input_morse : STD_LOGIC_VECTOR(5 downto 0); -- caracter de 5 bits
begin
    -- Proceso para detectar el flanco de subida del botón habilitador
    process(clk)
    begin
        if rising_edge(clk) then
            -- Detectar el flanco de subida del botón habilitador
            if (btn_enable = '1' and btn_enable_prev = '0') then
                rising_edge_enable <= '1';  -- Se detectó un flanco de subida
            else
                rising_edge_enable <= '0';  -- No hay flanco de subida
            end if;

            -- Guardar el valor anterior del botón habilitador
            btn_enable_prev <= btn_enable;
        end if;
    end process;

    -- Máquina de estados
    process(clk, rst)
    begin
        if rst = '1' then
            state <= IDLE;
        elsif rising_edge(clk) then
            state <= next_state;
        end if;
    end process;

    -- Lógica de la máquina de estados
    process(state, rising_edge_enable, switches)
    begin
        -- Valores por defecto
        write_in <= '0';
        ram_enable <= '0';
        selec_enable <= '0';
        next_state <= state;

        case state is
            -- Estado de reposo, espera la selección del estado
            when IDLE =>
                estado <= "0001";
                if rising_edge_enable = '1' then
                    next_state <= SELECT_MODE;  -- Cambia a la selección del modo
                else
                    next_state <= IDLE;
                end if;

            -- Selección del modo (con switches)
            when SELECT_MODE =>
                estado <= "0010";
                if rising_edge_enable = '1' then
                    case switches(1 downto 0) is
                        when "00" =>  -- Escritura en RAM
                            next_state <= WRITE_ADDR;
                        when "01" =>  -- Lectura de RAM
                            next_state <= READ_RAM;
                        when "10" =>  -- Enviar datos a Morse/LED
                            next_state <= SEND_TO_MORSE;
                        when others =>
                            next_state <= IDLE;  -- Estado por defecto
                    end case;
                else
                    next_state <= SELECT_MODE;  -- Espera otro flanco de subida para cambiar de estado
                end if;

            -- Estado para ingresar la dirección en la RAM
            when WRITE_ADDR =>
                estado <= "0011";
                if rising_edge_enable = '1' then
                    ram_addr <= switches(3 downto 0);  -- Captura la dirección de los switches
                    next_state <= WRITE_MORSE;          -- Cambia al estado de captura de datos
                end if;

            -- Estado para ingresar el dato de código Morse (5 bits)
            when WRITE_MORSE =>
                estado <= "0100";
                if rising_edge_enable = '1' then
                    ram_data_morse <= boton1 & switches;  -- Captura el código Morse (5 bits)
                    next_state <= WRITE_MASK;                      -- Cambia al estado de captura de máscara
                end if;

            -- Estado para ingresar el dato de la máscara (5 bits)
            when WRITE_MASK =>
                estado <= "0101";
                if rising_edge_enable = '1' then
                    ram_data_mask <= boton1 & switches;  -- Captura la máscara (5 bits)
                    next_state <= EXECUTE;                         -- Ejecuta la operación
                    ram_enable <= '1';
                    write_in <= '1';
                end if;

            -- Estado de lectura desde RAM
            when READ_RAM =>
                estado <= "0110";
                if rising_edge_enable = '1' then
                    ram_enable <= '1';            -- Habilitar la RAM
                    write_in <= '0';
                    ram_addr <= switches(3 downto 0);  -- Captura la dirección de los switches
                    next_state <= EXECUTE;        -- Ejecuta la operación
                end if;

            -- Estado de envío de datos al LED/código Morse
            when SEND_TO_MORSE =>
                estado <= "0111";
                if rising_edge_enable = '1' then
                    selec_morse <= boton2 & boton1 & switches; -- Enviar datos de código Morse
                    selec_enable <= '1';
                    next_state <= EXECUTE;        -- Ejecuta la operación
                end if;

            -- Estado para ejecutar la operación seleccionada
            when EXECUTE =>
                estado <= "1000";
                next_state <= IDLE;               -- Vuelve al estado inicial una vez finaliza la operación
            -- Estado por defecto
            when others =>
                next_state <= IDLE;
                estado <= (others => '0');
        end case;
    end process;

end Behavioral;



