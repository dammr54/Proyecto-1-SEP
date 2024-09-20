library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CodigoMorse_tb is
end CodigoMorse_tb;

architecture Behavioral of CodigoMorse_tb is
    -- Señales para conectar con la entidad bajo prueba (DUT: Device Under Test)
    signal switches : STD_LOGIC_VECTOR(3 downto 0);
    signal button1 : STD_LOGIC;
    signal button2 : STD_LOGIC;
    signal enable : STD_LOGIC;
    signal rst : STD_LOGIC;
    signal morse : STD_LOGIC_VECTOR(4 downto 0);
    signal mascara : STD_LOGIC_VECTOR(4 downto 0);
    signal flag : STD_LOGIC;

begin
    -- Instanciación de la entidad bajo prueba (DUT)
    uut: entity work.CodigoMorse
        port map (
            switches => switches,
            button1 => button1,
            button2 => button2,
            enable => enable,
            rst => rst,
            morse => morse,
            mascara => mascara,
            flag => flag
        );

    -- Proceso para generar las señales de prueba
    stimulus_process : process
    begin
        -- Inicialización
        switches <= "0000";
        button1 <= '0';
        button2 <= '0';
        enable <= '0';
        rst <= '1';
        wait for 20 ns; -- Tiempo para que se resetee

        -- Desactiva el reset
        rst <= '0';
        wait for 20 ns;

        -- Primera prueba: Generar código morse para "A" (.-)
        switches <= "0000"; -- Corresponde a "A"
        button1 <= '0'; 
        button2 <= '0';
        enable <= '1'; -- Activa enable para procesar
        wait for 40 ns;

        -- Segunda prueba: Generar código morse para "B" (-...)
        switches <= "0000"; -- Corresponde a "B"
        button1 <= '1'; 
        button2 <= '0';
        wait for 40 ns;

        -- Tercera prueba: Generar código morse para "C" (-.-.)
        switches <= "0000"; -- Corresponde a "C"
        button1 <= '1';
        button2 <= '0';
        wait for 40 ns;

        -- Probar deshabilitación de enable
        enable <= '0';
        wait for 40 ns;

        -- Finaliza la simulación
        wait;
    end process;
end Behavioral;

