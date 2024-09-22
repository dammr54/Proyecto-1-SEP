library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity sistema_morse is
    Port (
        clk : in std_logic;
        rst : in std_logic;
        
        -- Señales para el componente de Morse
        selec_enable : in std_logic;
        seleccion : in std_logic_vector(5 downto 0);
        
        -- Señales de salida de la RAM
        write_in : in std_logic;
        ram_enable : in std_logic;
        ram_data_morse : in std_logic_vector(4 downto 0);
        ram_data_mask : in std_logic_vector(4 downto 0);
        ram_addr : in std_logic_vector(3 downto 0);
       
        
        -- Señal para el LED
        led : out std_logic;
        morse_out : out STD_LOGIC_VECTOR(4 downto 0); 
        mask_out : out STD_LOGIC_VECTOR(4 downto 0) 
    );
end sistema_morse;

architecture Behavioral of sistema_morse is

    -- Señales internas para la RAM
    signal ram_data_morse_out : std_logic_vector(4 downto 0);
    signal ram_data_mask_out : std_logic_vector(4 downto 0);
    
    -- señales del selector
    signal selec_morse_out : std_logic_vector(4 downto 0);
    signal selec_mask_out : std_logic_vector(4 downto 0);
    signal led_enable : std_logic;

    -- Definición del componente de RAM
    component RAM is
        Port (
            data_morse: in std_logic_vector(4 downto 0); -- Entrada de 10 bits (5 bits para morse, 5 bits para máscara)
            data_mask: in std_logic_vector(4 downto 0); -- Entrada de 10 bits (5 bits para morse, 5 bits para máscara)
            addr_in: in std_logic_vector(3 downto 0); -- Dirección de 2 bits
            clk: in std_logic;
            enable: in std_logic;
            write_in: in std_logic;
            morse_out: out std_logic_vector(4 downto 0); -- Salida de 5 bits para el código Morse
            mask_out: out std_logic_vector(4 downto 0)   -- Salida de 5 bits para la máscara
        );
    end component;

    -- Instanciar el componente de ParpadeoMorse
    component ParpadeoMorse
        Port (
            clk      : in  STD_LOGIC;             -- Señal de reloj
            rst      : in  STD_LOGIC;             -- Señal de reset
            morse    : in  STD_LOGIC_VECTOR(4 downto 0); -- Código Morse de 5 bits
            mascara  : in  STD_LOGIC_VECTOR(4 downto 0); -- Máscara para indicar qué bits considerar
            flag     : in  STD_LOGIC;              -- Señal de pulso para habilitar la secuencia
            led      : out STD_LOGIC;               -- Salida al LED
            morse_out : out STD_LOGIC_VECTOR(4 downto 0); 
            mask_out : out STD_LOGIC_VECTOR(4 downto 0) 
        );
    end component;
    
    -- Instanciar el componente de ParpadeoMorse
    component CodigoMorse
        Port (
            seleccion : in STD_LOGIC_VECTOR(5 downto 0);
            enable: in STD_LOGIC;
            rst : in STD_LOGIC;
            morse : out STD_LOGIC_VECTOR(4 downto 0) := "00000";   -- salida del código Morse
            mascara : out STD_LOGIC_VECTOR(4 downto 0) := "00000"; -- máscara de código morse
            flag : out STD_LOGIC := '0'
        );
    end component;

begin
    -- Instanciar el componente de RAM
    ram_inst : RAM
        Port Map (
            data_morse => ram_data_morse,
            data_mask => ram_data_mask,
            addr_in => ram_addr,
            clk => clk,
            enable => ram_enable,
            write_in => write_in,
            morse_out => ram_data_morse_out, -- Aquí puedes cambiarlo según tus señales
            mask_out => ram_data_mask_out      -- Salida de la RAM a ram_data_morse
        );

    -- Instanciar el componente de ParpadeoMorse
    parpadeo_morse_inst : ParpadeoMorse
        Port Map (
            clk => clk,
            rst => rst,
            morse => selec_morse_out,
            mascara => selec_mask_out,
            flag => led_enable,
            led => led,
            morse_out => morse_out,
            mask_out => mask_out
        );
        
    codigo_morse_inst : CodigoMorse
        Port Map (
            seleccion => seleccion,
            enable => selec_enable,
            rst => rst,
            morse => selec_morse_out,
            mascara => selec_mask_out,
            flag => led_enable
        );
end Behavioral;

