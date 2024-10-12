library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- este componente es nuestra maquina de estado que controla el flujo de todo el hardware
entity ControlUnit is
    Port (
        -- 
        clk : in std_logic; -- clock
        rst : in std_logic; -- reset
        btn_enable : in std_logic; -- enable
        boton1 : in std_logic; -- boton1
        boton2 : in std_logic; -- boton2
        switches : in std_logic_vector(3 downto 0); -- switches
        -- senales RAM
        write_in : out std_logic; -- señal de escritura para la RAM
        ram_enable : out std_logic; -- señal de habilitación de la RAM
        ram_data_morse   : out std_logic_vector(4 downto 0); -- dato morse
        ram_data_mask   : out std_logic_vector(4 downto 0); -- dato mascara
        ram_addr : out std_logic_vector(3 downto 0); -- direccion
        -- senales selec morse
        selec_enable : out std_logic; -- enable habilitar vista de led del morse
        selec_morse : out std_logic_vector(5 downto 0); -- seleccion del simbolo morse
        estado : out std_logic_vector(3 downto 0) -- estado para reflejar en RGB
    );
end ControlUnit;

architecture Behavioral of ControlUnit is
    -- definición de los estados
    type state_type is (IDLE, SELECT_MODE, WRITE_ADDR, WRITE_MORSE, WRITE_MASK, READ_RAM, SEND_TO_MORSE, EXECUTE);
    signal state, next_state : state_type := IDLE;

    -- detección de flanco de subida
    signal btn_enable_prev : std_logic := '0';  -- estado anterior del botón
    signal rising_edge_enable : std_logic := '0'; -- señal de flanco de subida
    
begin
    -- detectar el flanco de subida del botón habilitador
    process(clk)
    begin
        if rising_edge(clk) then
            if (btn_enable = '1' and btn_enable_prev = '0') then
                rising_edge_enable <= '1';
            else
                rising_edge_enable <= '0';
            end if;
            -- guardar el valor anterior
            btn_enable_prev <= btn_enable;
        end if;
    end process;

    -- máquina de estados
    process(clk, rst)
    begin
        if rst = '1' then
            state <= IDLE;
        elsif rising_edge(clk) then
            state <= next_state;
        end if;
    end process;

    -- lógica de la máquina de estados
    process(state, rising_edge_enable, switches)
    begin
        -- valores por defecto
        write_in <= '0';
        ram_enable <= '0';
        selec_enable <= '0';
        next_state <= state;

        case state is
            -- espera cambiar el estado
            when IDLE =>
                estado <= "0001";
                if rising_edge_enable = '1' then
                    next_state <= SELECT_MODE;  -- cambiar modo
                else
                    next_state <= IDLE;
                end if;

            -- selección del modo
            when SELECT_MODE =>
                estado <= "0010";
                if rising_edge_enable = '1' then
                    case switches(1 downto 0) is
                        when "00" =>  -- escritura en RAM
                            next_state <= WRITE_ADDR;
                        when "01" =>  -- lectura de RAM
                            next_state <= READ_RAM;
                        when "10" =>  -- enviar datos a Morse/LED
                            next_state <= SEND_TO_MORSE;
                        when others =>
                            next_state <= IDLE;  -- estado por defecto
                    end case;
                else
                    next_state <= SELECT_MODE;  -- espera otro flanco de subida para cambiar de estado
                end if;

            -- dirección en la RAM
            when WRITE_ADDR =>
                estado <= "0011";
                if rising_edge_enable = '1' then
                    ram_addr <= switches(3 downto 0);  -- dirección de los switches
                    next_state <= WRITE_MORSE;
                end if;

            -- ingresar el dato de código Morse (5 bits)
            when WRITE_MORSE =>
                estado <= "0100";
                if rising_edge_enable = '1' then
                    ram_data_morse <= boton1 & switches;  -- captura el código Morse
                    next_state <= WRITE_MASK;
                end if;

            -- ingresar el dato de la máscara (5 bits)
            when WRITE_MASK =>
                estado <= "0101";
                if rising_edge_enable = '1' then
                    ram_data_mask <= boton1 & switches;  -- captura la máscara (5 bits)
                    next_state <= EXECUTE;
                    ram_enable <= '1';
                    write_in <= '1';
                end if;

            -- lectura desde RAM
            when READ_RAM =>
                estado <= "0110";
                if rising_edge_enable = '1' then
                    ram_enable <= '1'; -- habilitar RAM
                    write_in <= '0';
                    ram_addr <= switches(3 downto 0);  -- dirección de los switches
                    next_state <= EXECUTE;
                end if;

            -- envío de datos al LED/código Morse
            when SEND_TO_MORSE =>
                estado <= "0111";
                if rising_edge_enable = '1' then
                    selec_morse <= boton2 & boton1 & switches; -- enviar datos de código Morse
                    selec_enable <= '1';
                    next_state <= EXECUTE;
                end if;

            -- estado de termino, vuelve al estado inicial una vez finaliza la operación
            when EXECUTE =>
                estado <= "1000";
                next_state <= IDLE;
            when others =>
                next_state <= IDLE;
                estado <= (others => '0');
        end case;
    end process;

end Behavioral;



