library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CodigoMorse is
    Port (
        switches : in STD_LOGIC_VECTOR(3 downto 0); -- 4 switches
        button1 : in STD_LOGIC;                     -- 1 botón
        button2 : in STD_LOGIC;                     -- 2 botón
        enable: in STD_LOGIC;
        rst : in STD_LOGIC;
        morse : out STD_LOGIC_VECTOR(4 downto 0) := "00000";   -- salida del código Morse
        mascara : out STD_LOGIC_VECTOR(4 downto 0) := "00000"; -- máscara de código morse
        flag : out STD_LOGIC := '0'
    );
end CodigoMorse;

architecture Behavioral of CodigoMorse is
    signal input : STD_LOGIC_VECTOR(5 downto 0); -- caracter de 5 bits
begin
    -- Combina switches y botón en una única señal
    input <= switches & button2 & button1;

    process(input, enable, rst)
    variable ult_morse : STD_LOGIC_VECTOR(4 downto 0) := "00000"; -- almacenar el código Morse
    variable ult_mascara : STD_LOGIC_VECTOR(4 downto 0) := "00000"; -- máscara de código morse
    begin
        if rst = '1' then
            flag <= '0';
            morse <= (others => '0');
            mascara <= "00000";
        elsif enable = '1' then -- si se habilita
            case input is
                when "000000" => 
                ult_morse := "00001"; -- A: .-
                ult_mascara := "00011";
                when "000001" => 
                ult_morse := "01000"; -- B: -...
                ult_mascara := "01111";
                when "000010" => 
                ult_morse := "01010"; -- C: -.-.
                ult_mascara := "01111";
                when "000011" => 
                ult_morse := "00100";  -- D: -..
                ult_mascara := "00111";
                when "000100" => 
                ult_morse := "00000"; -- E: .
                ult_mascara := "00001";
                when "000101" => 
                ult_morse := "00010"; -- F: ..-.
                ult_mascara := "01111";
                when "000110" => 
                ult_morse := "00110"; -- G: --.
                ult_mascara := "00111";
                when "000111" => 
                ult_morse := "00000"; -- H: ....
                ult_mascara := "01111";
                when "001000" => 
                ult_morse := "00000";  -- I: ..
                ult_mascara := "00011";
                when "001001" => 
                ult_morse := "00111"; -- J: .---
                ult_mascara := "01111";
                when "001010" => 
                ult_morse := "00101"; -- K: -.-
                ult_mascara := "00111";
                when "001011" => 
                ult_morse := "00100"; -- L: .-..
                ult_mascara := "01111";
                when "001100" => 
                ult_morse := "00011"; -- M: --
                ult_mascara := "00011";
                when "001101" => 
                ult_morse := "00010";  -- N: -.
                ult_mascara := "00011";
                when "001110" => 
                ult_morse := "00111"; -- O: ---
                ult_mascara := "00111";
                when "001111" => 
                ult_morse := "00110"; -- P: .--.
                ult_mascara := "01111";
                when "010000" => 
                ult_morse := "01101"; -- Q: --.-
                ult_mascara := "01111";
                when "010001" => 
                ult_morse := "00010"; -- R: .-.
                ult_mascara := "00111";
                when "010010" => 
                ult_morse := "00000"; -- S: ....
                ult_mascara := "01111";
                when "010011" => 
                ult_morse := "00001"; -- T: -
                ult_mascara := "00001";
                when "010100" => 
                ult_morse := "00001"; -- U: ..-
                ult_mascara := "00111";
                when "010101" => 
                ult_morse := "00001"; -- V: ...-
                ult_mascara := "01111";
                when "010110" => 
                ult_morse := "00011"; -- W: .--
                ult_mascara := "00111";
                when "010111" => 
                ult_morse := "01001"; -- X: -..-
                ult_mascara := "01111";
                when "011000" => 
                ult_morse := "10111"; -- Y: -.---
                ult_mascara := "11111";
                when "011001" => 
                ult_morse := "01100"; -- Z: --..
                ult_mascara := "01111";
                when "011010" => 
                ult_morse := "11111"; -- 0: -----
                ult_mascara := "11111";
                when "011011" => 
                ult_morse := "01111"; -- 1: .----
                ult_mascara := "11111";
                when "011100" => 
                ult_morse := "00111"; -- 2: ..---
                ult_mascara := "11111";
                when "011101" => 
                ult_morse := "00011"; -- 3: ...--
                ult_mascara := "11111";
                when "011110" => 
                ult_morse := "00001"; -- 4: ....-
                ult_mascara := "11111";
                when "011111" => 
                ult_morse := "00000"; -- 5: .....
                ult_mascara := "11111";
                when "100000" => 
                ult_morse := "10000"; -- 6: -....
                ult_mascara := "11111";
                when "100001" => 
                ult_morse := "11000"; -- 7: --...
                ult_mascara := "11111";
                when "100010" => 
                ult_morse := "11100"; -- 8: ---..
                ult_mascara := "11111";
                when "100011" => 
                ult_morse := "11110"; -- 9: ----.
                ult_mascara := "11111";
                when others => 
                ult_morse := "00000";  -- Si no es un carácter válido
                ult_mascara := "00000";
            end case;
            morse <= ult_morse;
            mascara <= ult_mascara;
            flag <= '1';
        else
            morse <= ult_morse;
            mascara <= ult_mascara;
            flag <= '0';
        end if;
    end process;

end Behavioral;
