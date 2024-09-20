library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SistemaMorse is
    Port (
        clk      : in  STD_LOGIC;              -- Se�al de reloj
        rst      : in  STD_LOGIC;              -- Se�al de reset
        switches : in  STD_LOGIC_VECTOR(3 downto 0); -- 4 switches
        button1  : in  STD_LOGIC;              -- 1 bot�n
        button2  : in  STD_LOGIC;              -- 2 bot�n
        enable   : in  STD_LOGIC;              -- Se�al para habilitar el c�digo Morse
        led      : out STD_LOGIC               -- Salida al LED
    );
end SistemaMorse;

architecture Behavioral of SistemaMorse is
    -- Se�ales internas para conectar los m�dulos
    signal morse    : STD_LOGIC_VECTOR(4 downto 0); -- C�digo Morse
    signal mascara  : STD_LOGIC_VECTOR(4 downto 0); -- M�scara de c�digo morse
    signal flag : STD_LOGIC;
begin

    -- Instancia del m�dulo CodigoMorse
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

   -- Instancia del m�dulo ParpadeoMorse
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
