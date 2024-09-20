library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SistemaMorse is
    Port (
        clk      : in  STD_LOGIC;              -- Señal de reloj
        rst      : in  STD_LOGIC;              -- Señal de reset
        switches : in  STD_LOGIC_VECTOR(3 downto 0); -- 4 switches
        button1  : in  STD_LOGIC;              -- 1 botón
        button2  : in  STD_LOGIC;              -- 2 botón
        enable   : in  STD_LOGIC;              -- Señal para habilitar el código Morse
        led      : out STD_LOGIC               -- Salida al LED
    );
end SistemaMorse;

architecture Behavioral of SistemaMorse is
    -- Señales internas para conectar los módulos
    signal morse    : STD_LOGIC_VECTOR(4 downto 0); -- Código Morse
    signal mascara  : STD_LOGIC_VECTOR(4 downto 0); -- Máscara de código morse
    signal flag : STD_LOGIC;
begin

    -- Instancia del módulo CodigoMorse
    CodigoMorse_inst : entity work.CodigoMorse
        port map (
            switches => switches,
            button1  => button1,
            button2  => button2,
            enable   => enable,
            rst      => rst,
            morse    => morse,
            mascara  => mascara,
            flag => flag
        );

   -- Instancia del módulo ParpadeoMorse
    ParpadeoMorse_inst : entity work.ParpadeoMorse
        port map (
            clk      => clk,
            rst      => rst,
            morse    => morse,
            mascara  => mascara,
            flag     => flag,
            led      => led
        );

end Behavioral;
