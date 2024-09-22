// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Sat Sep 21 19:31:57 2024
// Host        : DESKTOP-3GDKKRS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_ControlUnit_0_0_stub.v
// Design      : design_1_ControlUnit_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "ControlUnit,Vivado 2020.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, rst, btn_enable, boton1, boton2, switches, 
  write_in, ram_enable, ram_data_morse, ram_data_mask, ram_addr, selec_enable, selec_morse)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,btn_enable,boton1,boton2,switches[3:0],write_in,ram_enable,ram_data_morse[4:0],ram_data_mask[4:0],ram_addr[3:0],selec_enable,selec_morse[5:0]" */;
  input clk;
  input rst;
  input btn_enable;
  input boton1;
  input boton2;
  input [3:0]switches;
  output write_in;
  output ram_enable;
  output [4:0]ram_data_morse;
  output [4:0]ram_data_mask;
  output [3:0]ram_addr;
  output selec_enable;
  output [5:0]selec_morse;
endmodule
