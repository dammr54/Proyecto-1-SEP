library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- instanciar los 3 componentes y relacionarlos
-- además permite configuración con parametros genericos
entity sistema_morse is
    generic (
            MAX_COUNT_LONG  : integer := 125000000;  -- parpadeo largo
            MAX_COUNT_SHORT : integer := 62500000    -- parpadeo corto
    );
    Port (
        clk : in std_logic;
        rst : in std_logic;
        
        -- componente de Morse
        selec_enable : in std_logic;
        seleccion : in std_logic_vector(5 downto 0);
        
        -- señales de la RAM
        write_in : in std_logic;
        ram_enable : in std_logic;
        ram_data_morse : in std_logic_vector(4 downto 0);
        ram_data_mask : in std_logic_vector(4 downto 0);
        ram_addr : in std_logic_vector(3 downto 0);
       
        
        -- señal para el LED
        led : out std_logic;
        morse_out : out STD_LOGIC_VECTOR(4 downto 0); 
        mask_out : out STD_LOGIC_VECTOR(4 downto 0) 
    );
end sistema_morse;

architecture Behavioral of sistema_morse is

    -- señales internas para la RAM
    signal ram_data_morse_out : std_logic_vector(4 downto 0);
    signal ram_data_mask_out : std_logic_vector(4 downto 0);
    
    -- señales del selector
    signal selec_morse_out : std_logic_vector(4 downto 0);
    signal selec_mask_out : std_logic_vector(4 downto 0);
    signal led_enable : std_logic;

    -- componente de RAM
    component RAM is
        Port (
            data_morse: in std_logic_vector(4 downto 0); -- 5 bits para morse
            data_mask: in std_logic_vector(4 downto 0); -- 5 bits para máscara
            addr_in: in std_logic_vector(3 downto 0); -- dirección de 4 bits
            clk: in std_logic;
            enable: in std_logic;
            write_in: in std_logic;
            morse_out: out std_logic_vector(4 downto 0); -- salida de 5 bits para el código Morse
            mask_out: out std_logic_vector(4 downto 0)   -- salida de 5 bits para la máscara
        );
    end component;

    -- componente de ParpadeoMorse
    component ParpadeoMorse
        generic (
            MAX_COUNT_LONG  : integer := 125000000;  -- parpadeo largo
            MAX_COUNT_SHORT : integer := 62500000    -- parpadeo corto
        );
        Port (
            clk      : in  STD_LOGIC;
            rst      : in  STD_LOGIC;
            morse    : in  STD_LOGIC_VECTOR(4 downto 0); -- Morse de 5 bits
            mascara  : in  STD_LOGIC_VECTOR(4 downto 0); -- Máscara para indicar qué bits considerar
            flag     : in  STD_LOGIC;              -- habilitar la secuencia
            led      : out STD_LOGIC;               -- salida al LED
            morse_out : out STD_LOGIC_VECTOR(4 downto 0); -- salida del morse y mascara
            mask_out : out STD_LOGIC_VECTOR(4 downto 0) 
        );
    end component;
    
    -- componente de CodigoMorse
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
    -- componente de RAM
    ram_inst : RAM
        Port Map (
            data_morse => ram_data_morse,
            data_mask => ram_data_mask,
            addr_in => ram_addr,
            clk => clk,
            enable => ram_enable,
            write_in => write_in,
            morse_out => ram_data_morse_out,
            mask_out => ram_data_mask_out
        );

    -- componente de ParpadeoMorse
    parpadeo_morse_inst : ParpadeoMorse
        generic map (
            MAX_COUNT_LONG  => MAX_COUNT_LONG,   -- configuración del parámetro genérico
            MAX_COUNT_SHORT => MAX_COUNT_SHORT     -- configuración del parámetro genérico
        )
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

