-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Sat Sep 21 23:42:37 2024
-- Host        : DESKTOP-3GDKKRS running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_RGB_Controller_1_0_sim_netlist.vhdl
-- Design      : design_1_RGB_Controller_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RGB_Controller is
  port (
    red : out STD_LOGIC;
    green : out STD_LOGIC;
    blue : out STD_LOGIC;
    clk : in STD_LOGIC;
    estado : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RGB_Controller;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RGB_Controller is
  signal \blue__0_n_0\ : STD_LOGIC;
  signal \green__0_n_0\ : STD_LOGIC;
  signal \red__0_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \green__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \red__0\ : label is "soft_lutpair0";
begin
\blue__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5440"
    )
        port map (
      I0 => estado(3),
      I1 => estado(0),
      I2 => estado(2),
      I3 => estado(1),
      O => \blue__0_n_0\
    );
blue_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \blue__0_n_0\,
      Q => blue,
      R => '0'
    );
\green__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5110"
    )
        port map (
      I0 => estado(3),
      I1 => estado(0),
      I2 => estado(2),
      I3 => estado(1),
      O => \green__0_n_0\
    );
green_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \green__0_n_0\,
      Q => green,
      R => '0'
    );
\red__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4504"
    )
        port map (
      I0 => estado(3),
      I1 => estado(0),
      I2 => estado(1),
      I3 => estado(2),
      O => \red__0_n_0\
    );
red_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \red__0_n_0\,
      Q => red,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    estado : in STD_LOGIC_VECTOR ( 3 downto 0 );
    red : out STD_LOGIC;
    green : out STD_LOGIC;
    blue : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_RGB_Controller_1_0,RGB_Controller,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "RGB_Controller,Vivado 2020.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_clk_0, INSERT_VIP 0";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RGB_Controller
     port map (
      blue => blue,
      clk => clk,
      estado(3 downto 0) => estado(3 downto 0),
      green => green,
      red => red
    );
end STRUCTURE;
