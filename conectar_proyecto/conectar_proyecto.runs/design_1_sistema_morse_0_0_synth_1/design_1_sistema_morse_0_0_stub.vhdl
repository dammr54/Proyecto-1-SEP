-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Sat Sep 21 22:40:16 2024
-- Host        : DESKTOP-3GDKKRS running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_sistema_morse_0_0_stub.vhdl
-- Design      : design_1_sistema_morse_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
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

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,selec_enable,seleccion[5:0],write_in,ram_enable,ram_data_morse[4:0],ram_data_mask[4:0],ram_addr[3:0],led,morse_out[4:0],mask_out[4:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "sistema_morse,Vivado 2020.1";
begin
end;
