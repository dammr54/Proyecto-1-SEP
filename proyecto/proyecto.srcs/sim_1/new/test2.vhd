library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_SistemaMorse is
    -- No hay puertos en un testbench
end tb_SistemaMorse;

architecture behavior of tb_SistemaMorse is
    -- Component declaration for the unit under test (UUT)
    component SistemaMorse
        Port (
            clk      : in  STD_LOGIC;              
            rst      : in  STD_LOGIC;              
            switches : in  STD_LOGIC_VECTOR(3 downto 0); 
            button1  : in  STD_LOGIC;              
            button2  : in  STD_LOGIC;              
            enable   : in  STD_LOGIC;              
            led      : out STD_LOGIC               
        );
    end component;

    -- Signals to connect to the UUT
    signal clk      : STD_LOGIC := '0';
    signal rst      : STD_LOGIC := '0';
    signal switches : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal button1  : STD_LOGIC := '0';
    signal button2  : STD_LOGIC := '0';
    signal enable   : STD_LOGIC := '0';
    signal led      : STD_LOGIC;

    -- Clock period definition
    constant clk_period : time := 10 ns;

begin
    -- Instantiate the Unit Under Test (UUT)
    uut: SistemaMorse
        Port Map (
            clk => clk,
            rst => rst,
            switches => switches,
            button1 => button1,
            button2 => button2,
            enable => enable,
            led => led
        );

    -- Clock process
    clk_process :process
    begin
        while true loop
            clk <= '0';
            wait for clk_period/2;
            clk <= '1';
            wait for clk_period/2;
        end loop;
    end process;

    -- Stimulus process
    stim_proc: process
    begin
        -- Reset the system
        rst <= '1';
        wait for clk_period;
        rst <= '0';
        wait for clk_period;

        -- Test with various switches and buttons
        switches <= "0000"; -- All switches off
        button1 <= '0';
        button2 <= '0';
        enable <= '1';      -- Enable Morse code
        wait for 2 * clk_period;

        switches <= "0000"; -- Switch 1 on
        button1 <= '1';     -- Press button 1
        button2 <= '0';
        wait for clk_period;

        switches <= "0000"; -- Switch 2 on
        button2 <= '1';     -- Press button 2
        button1 <= '0'; 
        wait for clk_period;

        enable <= '0';
        wait for clk_period;

        -- End of simulation
        wait;
    end process;

end behavior;

