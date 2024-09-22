-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Sat Sep 21 23:42:37 2024
-- Host        : DESKTOP-3GDKKRS running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/Diego/Desktop/Proyecto-1-SEP/conectar_proyecto/conectar_proyecto.srcs/sources_1/bd/design_1/ip/design_1_ControlUnit_0_0/design_1_ControlUnit_0_0_stub.vhdl
-- Design      : design_1_ControlUnit_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_ControlUnit_0_0 is
  Port ( 
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

end design_1_ControlUnit_0_0;

architecture stub of design_1_ControlUnit_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,btn_enable,boton1,boton2,switches[3:0],write_in,ram_enable,ram_data_morse[4:0],ram_data_mask[4:0],ram_addr[3:0],selec_enable,selec_morse[5:0],estado[3:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "ControlUnit,Vivado 2020.1";
begin
end;
