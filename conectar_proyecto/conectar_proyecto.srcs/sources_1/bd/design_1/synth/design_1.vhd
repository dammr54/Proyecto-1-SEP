--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
--Date        : Sat Sep 21 23:42:08 2024
--Host        : DESKTOP-3GDKKRS running 64-bit major release  (build 9200)
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  port (
    blue : out STD_LOGIC;
    btn1 : in STD_LOGIC;
    btn2 : in STD_LOGIC;
    btn3 : in STD_LOGIC;
    clk : in STD_LOGIC;
    green : out STD_LOGIC;
    led : out STD_LOGIC;
    red : out STD_LOGIC;
    rst : in STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_vio_0_0 is
  port (
    clk : in STD_LOGIC;
    probe_out0 : out STD_LOGIC_VECTOR ( 5 downto 0 );
    probe_out1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    probe_out2 : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component design_1_vio_0_0;
  component design_1_ila_0_0 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    probe2 : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  end component design_1_ila_0_0;
  component design_1_sistema_morse_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    selec_enable : in STD_LOGIC;
    seleccion : in STD_LOGIC_VECTOR ( 5 downto 0 );
    write_in : in STD_LOGIC;
    ram_enable : in STD_LOGIC;
    ram_data_morse : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ram_data_mask : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ram_addr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    led : out STD_LOGIC;
    morse_out : out STD_LOGIC_VECTOR ( 4 downto 0 );
    mask_out : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  end component design_1_sistema_morse_0_0;
  component design_1_ControlUnit_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    btn_enable : in STD_LOGIC;
    boton1 : in STD_LOGIC;
    boton2 : in STD_LOGIC;
    switches : in STD_LOGIC_VECTOR ( 3 downto 0 );
    write_in : out STD_LOGIC;
    ram_enable : out STD_LOGIC;
    ram_data_morse : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ram_data_mask : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ram_addr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    selec_enable : out STD_LOGIC;
    selec_morse : out STD_LOGIC_VECTOR ( 5 downto 0 );
    estado : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component design_1_ControlUnit_0_0;
  component design_1_RGB_Controller_1_0 is
  port (
    clk : in STD_LOGIC;
    estado : in STD_LOGIC_VECTOR ( 3 downto 0 );
    red : out STD_LOGIC;
    green : out STD_LOGIC;
    blue : out STD_LOGIC
  );
  end component design_1_RGB_Controller_1_0;
  signal ControlUnit_0_ram_addr : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ControlUnit_0_ram_data_mask : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal ControlUnit_0_ram_data_morse : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal ControlUnit_0_ram_enable : STD_LOGIC;
  signal ControlUnit_0_write_in : STD_LOGIC;
  signal RGB_Controller_1_blue : STD_LOGIC;
  signal RGB_Controller_1_green : STD_LOGIC;
  signal RGB_Controller_1_red : STD_LOGIC;
  signal boton1_0_1 : STD_LOGIC;
  signal boton2_0_1 : STD_LOGIC;
  signal btn_enable_0_1 : STD_LOGIC;
  signal clk_0_1 : STD_LOGIC;
  signal rst_0_1 : STD_LOGIC;
  signal sistema_morse_0_led : STD_LOGIC;
  signal sistema_morse_0_mask_out : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal sistema_morse_0_morse_out : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal switches_0_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal vio_0_probe_out0 : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal vio_0_probe_out1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal vio_0_probe_out2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_ControlUnit_0_selec_enable_UNCONNECTED : STD_LOGIC;
  signal NLW_ControlUnit_0_estado_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_ControlUnit_0_selec_morse_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_RESET rst, CLK_DOMAIN design_1_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 RST.RST RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME RST.RST, INSERT_VIP 0, POLARITY ACTIVE_LOW";
begin
  blue <= RGB_Controller_1_blue;
  boton1_0_1 <= btn1;
  boton2_0_1 <= btn2;
  btn_enable_0_1 <= btn3;
  clk_0_1 <= clk;
  green <= RGB_Controller_1_green;
  led <= sistema_morse_0_led;
  red <= RGB_Controller_1_red;
  rst_0_1 <= rst;
  switches_0_1(3 downto 0) <= sw(3 downto 0);
ControlUnit_0: component design_1_ControlUnit_0_0
     port map (
      boton1 => boton1_0_1,
      boton2 => boton2_0_1,
      btn_enable => btn_enable_0_1,
      clk => clk_0_1,
      estado(3 downto 0) => NLW_ControlUnit_0_estado_UNCONNECTED(3 downto 0),
      ram_addr(3 downto 0) => ControlUnit_0_ram_addr(3 downto 0),
      ram_data_mask(4 downto 0) => ControlUnit_0_ram_data_mask(4 downto 0),
      ram_data_morse(4 downto 0) => ControlUnit_0_ram_data_morse(4 downto 0),
      ram_enable => ControlUnit_0_ram_enable,
      rst => rst_0_1,
      selec_enable => NLW_ControlUnit_0_selec_enable_UNCONNECTED,
      selec_morse(5 downto 0) => NLW_ControlUnit_0_selec_morse_UNCONNECTED(5 downto 0),
      switches(3 downto 0) => switches_0_1(3 downto 0),
      write_in => ControlUnit_0_write_in
    );
RGB_Controller_1: component design_1_RGB_Controller_1_0
     port map (
      blue => RGB_Controller_1_blue,
      clk => clk_0_1,
      estado(3 downto 0) => vio_0_probe_out2(3 downto 0),
      green => RGB_Controller_1_green,
      red => RGB_Controller_1_red
    );
ila_0: component design_1_ila_0_0
     port map (
      clk => clk_0_1,
      probe0(0) => sistema_morse_0_led,
      probe1(4 downto 0) => sistema_morse_0_morse_out(4 downto 0),
      probe2(4 downto 0) => sistema_morse_0_mask_out(4 downto 0)
    );
sistema_morse_0: component design_1_sistema_morse_0_0
     port map (
      clk => clk_0_1,
      led => sistema_morse_0_led,
      mask_out(4 downto 0) => sistema_morse_0_mask_out(4 downto 0),
      morse_out(4 downto 0) => sistema_morse_0_morse_out(4 downto 0),
      ram_addr(3 downto 0) => ControlUnit_0_ram_addr(3 downto 0),
      ram_data_mask(4 downto 0) => ControlUnit_0_ram_data_mask(4 downto 0),
      ram_data_morse(4 downto 0) => ControlUnit_0_ram_data_morse(4 downto 0),
      ram_enable => ControlUnit_0_ram_enable,
      rst => rst_0_1,
      selec_enable => vio_0_probe_out1(0),
      seleccion(5 downto 0) => vio_0_probe_out0(5 downto 0),
      write_in => ControlUnit_0_write_in
    );
vio_0: component design_1_vio_0_0
     port map (
      clk => clk_0_1,
      probe_out0(5 downto 0) => vio_0_probe_out0(5 downto 0),
      probe_out1(0) => vio_0_probe_out1(0),
      probe_out2(3 downto 0) => vio_0_probe_out2(3 downto 0)
    );
end STRUCTURE;
