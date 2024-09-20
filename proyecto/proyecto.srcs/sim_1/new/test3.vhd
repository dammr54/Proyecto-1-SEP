library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity tb_ParpadeoMorse is
end tb_ParpadeoMorse;

architecture Behavioral of tb_ParpadeoMorse is
    -- Declarar se�ales para conectar con el DUT (Device Under Test)
    signal clk      : STD_LOGIC := '0';
    signal rst      : STD_LOGIC := '0';
    signal morse    : STD_LOGIC_VECTOR(4 downto 0) := (others => '0');
    signal mascara  : STD_LOGIC_VECTOR(4 downto 0) := (others => '0');
    signal flag     : STD_LOGIC := '0';
    signal led      : STD_LOGIC;

    -- Par�metros de reloj
    constant CLOCK_PERIOD : time := 8 ns; -- Per�odo de 125 MHz
begin
    -- Instanciar el DUT (ParpadeoMorse)
    uut: entity work.ParpadeoMorse
        port map (
            clk     => clk,
            rst     => rst,
            morse   => morse,
            mascara => mascara,
            flag    => flag,
            led     => led
        );

    -- Generador de reloj
    clk_process : process
    begin
        while true loop
            clk <= '0';
            wait for CLOCK_PERIOD / 2;
            clk <= '1';
            wait for CLOCK_PERIOD / 2;
        end loop;
    end process clk_process;

    -- Estimulaci�n de se�ales
    stim_proc: process
    begin
        -- Inicializaci�n
        rst <= '1';
        wait for 20 ns;
        rst <= '0';
        wait for 20 ns;

        -- Caso 1: Morse para la letra A (.-) y su m�scara
        morse <= "00001"; -- .-
        mascara <= "00011"; -- Se consideran los dos primeros bits
        flag <= '1'; -- Flanco de subida para iniciar la secuencia
        wait for 40 ns;
        flag <= '0';
        
        -- Esperar a que la secuencia termine
        wait for 500 ns;

        -- Caso 2: Morse para la letra B (-...) y su m�scara
        morse <= "01000"; -- -...
        mascara <= "01111"; -- Se consideran los cuatro primeros bits
        flag <= '1'; -- Flanco de subida para iniciar la secuencia
        wait for 40 ns;
        flag <= '0';
        
        -- Esperar a que la secuencia termine
        wait for 500 ns;

        -- Fin de simulaci�n
        wait;
    end process stim_proc;
end Behavioral;

