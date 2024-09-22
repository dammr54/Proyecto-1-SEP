library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity RGB_Controller is
    Port (
        clk : in STD_LOGIC;
        estado : in std_logic_vector(3 downto 0);
        red : out STD_LOGIC;
        green : out STD_LOGIC;
        blue : out STD_LOGIC
    );
end RGB_Controller;

architecture Behavioral of RGB_Controller is
begin
    process(clk)
    begin
        if rising_edge(clk) then
            case estado is
                when "0001" =>
                    red <= '1';
                    green <= '0';
                    blue <= '0';  -- Rojo
                when "0010" =>
                    red <= '0';
                    green <= '1';
                    blue <= '0';  -- Verde
                when "0011" =>
                    red <= '0';
                    green <= '0';
                    blue <= '1';  -- Azul
                when "0100" =>
                    red <= '1';
                    green <= '1';
                    blue <= '0';  -- Amarillo
                when "0101" =>
                    red <= '1';
                    green <= '0';
                    blue <= '1';  -- Magenta
                when "0110" =>
                    red <= '0';
                    green <= '1';
                    blue <= '1';  -- Cian
                when "0111" =>
                    red <= '1';
                    green <= '1';
                    blue <= '1';  -- Blanco
                when "1000" =>
                    red <= '0';
                    green <= '0';
                    blue <= '0';  -- Apagar LED
                when others =>
                    red <= '0';
                    green <= '0';
                    blue <= '0';  -- Default (Apagar)
            end case;
        end if;
    end process;
end Behavioral;


