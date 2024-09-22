// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Sat Sep 21 23:42:37 2024
// Host        : DESKTOP-3GDKKRS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Diego/Desktop/Proyecto-1-SEP/conectar_proyecto/conectar_proyecto.srcs/sources_1/bd/design_1/ip/design_1_ControlUnit_0_0/design_1_ControlUnit_0_0_sim_netlist.v
// Design      : design_1_ControlUnit_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_ControlUnit_0_0,ControlUnit,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "ControlUnit,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module design_1_ControlUnit_0_0
   (clk,
    rst,
    btn_enable,
    boton1,
    boton2,
    switches,
    write_in,
    ram_enable,
    ram_data_morse,
    ram_data_mask,
    ram_addr,
    selec_enable,
    selec_morse,
    estado);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
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
  output [3:0]estado;

  wire boton1;
  wire boton2;
  wire btn_enable;
  wire clk;
  wire [3:0]estado;
  wire [3:0]ram_addr;
  wire [4:0]ram_data_mask;
  wire [4:0]ram_data_morse;
  wire ram_enable;
  wire rst;
  wire selec_enable;
  wire [5:0]selec_morse;
  wire [3:0]switches;
  wire write_in;

  design_1_ControlUnit_0_0_ControlUnit U0
       (.D({boton1,switches}),
        .Q(estado[3]),
        .boton2(boton2),
        .btn_enable(btn_enable),
        .clk(clk),
        .estado(estado[2:0]),
        .ram_addr(ram_addr),
        .ram_data_mask(ram_data_mask),
        .ram_data_morse(ram_data_morse),
        .ram_enable(ram_enable),
        .rst(rst),
        .selec_enable(selec_enable),
        .selec_morse(selec_morse),
        .write_in(write_in));
endmodule

(* ORIG_REF_NAME = "ControlUnit" *) 
module design_1_ControlUnit_0_0_ControlUnit
   (Q,
    ram_data_morse,
    ram_data_mask,
    write_in,
    ram_addr,
    selec_morse,
    selec_enable,
    estado,
    ram_enable,
    clk,
    rst,
    D,
    boton2,
    btn_enable);
  output [0:0]Q;
  output [4:0]ram_data_morse;
  output [4:0]ram_data_mask;
  output write_in;
  output [3:0]ram_addr;
  output [5:0]selec_morse;
  output selec_enable;
  output [2:0]estado;
  output ram_enable;
  input clk;
  input rst;
  input [4:0]D;
  input boton2;
  input btn_enable;

  wire [4:0]D;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[0]_i_2_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[5]_i_1_n_0 ;
  wire \FSM_onehot_state[6]_i_1_n_0 ;
  wire \FSM_onehot_state[7]_i_1_n_0 ;
  wire \FSM_onehot_state[7]_i_2_n_0 ;
  wire \FSM_onehot_state[7]_i_3_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \FSM_onehot_state_reg_n_0_[4] ;
  wire \FSM_onehot_state_reg_n_0_[5] ;
  wire \FSM_onehot_state_reg_n_0_[6] ;
  wire [0:0]Q;
  wire boton2;
  wire btn_enable;
  wire btn_enable_prev;
  wire clk;
  wire [2:0]estado;
  wire [3:0]ram_addr;
  wire \ram_addr_reg[3]_i_1_n_0 ;
  wire [4:0]ram_data_mask;
  wire [4:0]ram_data_morse;
  wire \ram_data_morse_reg[4]_i_1_n_0 ;
  wire ram_enable;
  wire rising_edge_enable;
  wire rising_edge_enable_i_1_n_0;
  wire rst;
  wire selec_enable;
  wire [5:0]selec_morse;
  wire write_in;

  LUT5 #(
    .INIT(32'hFFFF8000)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(D[1]),
        .I1(D[0]),
        .I2(rising_edge_enable),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(\FSM_onehot_state[0]_i_2_n_0 ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCCFFFFFFFE)) 
    \FSM_onehot_state[0]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(Q),
        .I2(\FSM_onehot_state_reg_n_0_[6] ),
        .I3(\FSM_onehot_state_reg_n_0_[4] ),
        .I4(\FSM_onehot_state_reg_n_0_[5] ),
        .I5(rising_edge_enable),
        .O(\FSM_onehot_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(rising_edge_enable),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(D[1]),
        .I2(D[0]),
        .I3(rising_edge_enable),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \FSM_onehot_state[5]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(rising_edge_enable),
        .I2(D[0]),
        .I3(D[1]),
        .O(\FSM_onehot_state[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \FSM_onehot_state[6]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(D[1]),
        .I2(rising_edge_enable),
        .I3(D[0]),
        .O(\FSM_onehot_state[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFEFEEE)) 
    \FSM_onehot_state[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_state[7]_i_3_n_0 ),
        .I3(Q),
        .I4(rising_edge_enable),
        .O(\FSM_onehot_state[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    \FSM_onehot_state[7]_i_2 
       (.I0(rising_edge_enable),
        .I1(\FSM_onehot_state_reg_n_0_[6] ),
        .I2(\FSM_onehot_state_reg_n_0_[4] ),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .O(\FSM_onehot_state[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_state[7]_i_3 
       (.I0(Q),
        .I1(\FSM_onehot_state_reg_n_0_[6] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_state_reg_n_0_[5] ),
        .I5(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\FSM_onehot_state[7]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "write_morse:00001000,write_mask:00010000,select_mode:00000010,send_to_morse:01000000,read_ram:00100000,write_addr:00000100,idle:00000001,execute:10000000" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(\FSM_onehot_state[7]_i_1_n_0 ),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .PRE(rst),
        .Q(\FSM_onehot_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "write_morse:00001000,write_mask:00010000,select_mode:00000010,send_to_morse:01000000,read_ram:00100000,write_addr:00000100,idle:00000001,execute:10000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(\FSM_onehot_state[7]_i_1_n_0 ),
        .CLR(rst),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "write_morse:00001000,write_mask:00010000,select_mode:00000010,send_to_morse:01000000,read_ram:00100000,write_addr:00000100,idle:00000001,execute:10000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(\FSM_onehot_state[7]_i_1_n_0 ),
        .CLR(rst),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ));
  (* FSM_ENCODED_STATES = "write_morse:00001000,write_mask:00010000,select_mode:00000010,send_to_morse:01000000,read_ram:00100000,write_addr:00000100,idle:00000001,execute:10000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(\FSM_onehot_state[7]_i_1_n_0 ),
        .CLR(rst),
        .D(\FSM_onehot_state_reg_n_0_[2] ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ));
  (* FSM_ENCODED_STATES = "write_morse:00001000,write_mask:00010000,select_mode:00000010,send_to_morse:01000000,read_ram:00100000,write_addr:00000100,idle:00000001,execute:10000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(\FSM_onehot_state[7]_i_1_n_0 ),
        .CLR(rst),
        .D(\FSM_onehot_state_reg_n_0_[3] ),
        .Q(\FSM_onehot_state_reg_n_0_[4] ));
  (* FSM_ENCODED_STATES = "write_morse:00001000,write_mask:00010000,select_mode:00000010,send_to_morse:01000000,read_ram:00100000,write_addr:00000100,idle:00000001,execute:10000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(clk),
        .CE(\FSM_onehot_state[7]_i_1_n_0 ),
        .CLR(rst),
        .D(\FSM_onehot_state[5]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[5] ));
  (* FSM_ENCODED_STATES = "write_morse:00001000,write_mask:00010000,select_mode:00000010,send_to_morse:01000000,read_ram:00100000,write_addr:00000100,idle:00000001,execute:10000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[6] 
       (.C(clk),
        .CE(\FSM_onehot_state[7]_i_1_n_0 ),
        .CLR(rst),
        .D(\FSM_onehot_state[6]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[6] ));
  (* FSM_ENCODED_STATES = "write_morse:00001000,write_mask:00010000,select_mode:00000010,send_to_morse:01000000,read_ram:00100000,write_addr:00000100,idle:00000001,execute:10000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[7] 
       (.C(clk),
        .CE(\FSM_onehot_state[7]_i_1_n_0 ),
        .CLR(rst),
        .D(\FSM_onehot_state[7]_i_2_n_0 ),
        .Q(Q));
  FDRE #(
    .INIT(1'b0)) 
    btn_enable_prev_reg
       (.C(clk),
        .CE(1'b1),
        .D(btn_enable),
        .Q(btn_enable_prev),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \estado[0]_INST_0 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(estado[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \estado[1]_INST_0 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(estado[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \estado[2]_INST_0 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\FSM_onehot_state_reg_n_0_[4] ),
        .O(estado[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ram_addr_reg[0] 
       (.CLR(1'b0),
        .D(D[0]),
        .G(\ram_addr_reg[3]_i_1_n_0 ),
        .GE(1'b1),
        .Q(ram_addr[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ram_addr_reg[1] 
       (.CLR(1'b0),
        .D(D[1]),
        .G(\ram_addr_reg[3]_i_1_n_0 ),
        .GE(1'b1),
        .Q(ram_addr[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ram_addr_reg[2] 
       (.CLR(1'b0),
        .D(D[2]),
        .G(\ram_addr_reg[3]_i_1_n_0 ),
        .GE(1'b1),
        .Q(ram_addr[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ram_addr_reg[3] 
       (.CLR(1'b0),
        .D(D[3]),
        .G(\ram_addr_reg[3]_i_1_n_0 ),
        .GE(1'b1),
        .Q(ram_addr[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \ram_addr_reg[3]_i_1 
       (.I0(rising_edge_enable),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\ram_addr_reg[3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ram_data_mask_reg[0] 
       (.CLR(1'b0),
        .D(D[0]),
        .G(write_in),
        .GE(1'b1),
        .Q(ram_data_mask[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ram_data_mask_reg[1] 
       (.CLR(1'b0),
        .D(D[1]),
        .G(write_in),
        .GE(1'b1),
        .Q(ram_data_mask[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ram_data_mask_reg[2] 
       (.CLR(1'b0),
        .D(D[2]),
        .G(write_in),
        .GE(1'b1),
        .Q(ram_data_mask[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ram_data_mask_reg[3] 
       (.CLR(1'b0),
        .D(D[3]),
        .G(write_in),
        .GE(1'b1),
        .Q(ram_data_mask[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ram_data_mask_reg[4] 
       (.CLR(1'b0),
        .D(D[4]),
        .G(write_in),
        .GE(1'b1),
        .Q(ram_data_mask[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ram_data_morse_reg[0] 
       (.CLR(1'b0),
        .D(D[0]),
        .G(\ram_data_morse_reg[4]_i_1_n_0 ),
        .GE(1'b1),
        .Q(ram_data_morse[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ram_data_morse_reg[1] 
       (.CLR(1'b0),
        .D(D[1]),
        .G(\ram_data_morse_reg[4]_i_1_n_0 ),
        .GE(1'b1),
        .Q(ram_data_morse[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ram_data_morse_reg[2] 
       (.CLR(1'b0),
        .D(D[2]),
        .G(\ram_data_morse_reg[4]_i_1_n_0 ),
        .GE(1'b1),
        .Q(ram_data_morse[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ram_data_morse_reg[3] 
       (.CLR(1'b0),
        .D(D[3]),
        .G(\ram_data_morse_reg[4]_i_1_n_0 ),
        .GE(1'b1),
        .Q(ram_data_morse[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ram_data_morse_reg[4] 
       (.CLR(1'b0),
        .D(D[4]),
        .G(\ram_data_morse_reg[4]_i_1_n_0 ),
        .GE(1'b1),
        .Q(ram_data_morse[4]));
  LUT2 #(
    .INIT(4'h8)) 
    \ram_data_morse_reg[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(rising_edge_enable),
        .O(\ram_data_morse_reg[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    ram_enable_INST_0
       (.I0(rising_edge_enable),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(\FSM_onehot_state_reg_n_0_[4] ),
        .O(ram_enable));
  LUT2 #(
    .INIT(4'h2)) 
    rising_edge_enable_i_1
       (.I0(btn_enable),
        .I1(btn_enable_prev),
        .O(rising_edge_enable_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rising_edge_enable_reg
       (.C(clk),
        .CE(1'b1),
        .D(rising_edge_enable_i_1_n_0),
        .Q(rising_edge_enable),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    selec_enable_INST_0
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(rising_edge_enable),
        .O(selec_enable));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \selec_morse_reg[0] 
       (.CLR(1'b0),
        .D(D[0]),
        .G(selec_enable),
        .GE(1'b1),
        .Q(selec_morse[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \selec_morse_reg[1] 
       (.CLR(1'b0),
        .D(D[1]),
        .G(selec_enable),
        .GE(1'b1),
        .Q(selec_morse[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \selec_morse_reg[2] 
       (.CLR(1'b0),
        .D(D[2]),
        .G(selec_enable),
        .GE(1'b1),
        .Q(selec_morse[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \selec_morse_reg[3] 
       (.CLR(1'b0),
        .D(D[3]),
        .G(selec_enable),
        .GE(1'b1),
        .Q(selec_morse[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \selec_morse_reg[4] 
       (.CLR(1'b0),
        .D(D[4]),
        .G(selec_enable),
        .GE(1'b1),
        .Q(selec_morse[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \selec_morse_reg[5] 
       (.CLR(1'b0),
        .D(boton2),
        .G(selec_enable),
        .GE(1'b1),
        .Q(selec_morse[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    write_in_INST_0
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(rising_edge_enable),
        .O(write_in));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
