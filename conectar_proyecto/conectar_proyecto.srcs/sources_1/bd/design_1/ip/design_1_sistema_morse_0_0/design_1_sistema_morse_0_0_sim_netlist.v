// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Sat Sep 21 22:40:16 2024
// Host        : DESKTOP-3GDKKRS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Diego/Desktop/Proyecto-1-SEP/conectar_proyecto/conectar_proyecto.srcs/sources_1/bd/design_1/ip/design_1_sistema_morse_0_0/design_1_sistema_morse_0_0_sim_netlist.v
// Design      : design_1_sistema_morse_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_sistema_morse_0_0,sistema_morse,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "sistema_morse,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module design_1_sistema_morse_0_0
   (clk,
    rst,
    selec_enable,
    seleccion,
    write_in,
    ram_enable,
    ram_data_morse,
    ram_data_mask,
    ram_addr,
    led,
    morse_out,
    mask_out);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input selec_enable;
  input [5:0]seleccion;
  input write_in;
  input ram_enable;
  input [4:0]ram_data_morse;
  input [4:0]ram_data_mask;
  input [3:0]ram_addr;
  output led;
  output [4:0]morse_out;
  output [4:0]mask_out;

  wire clk;
  wire led;
  wire [4:0]mask_out;
  wire [4:0]morse_out;
  wire [3:0]ram_addr;
  wire [4:0]ram_data_mask;
  wire [4:0]ram_data_morse;
  wire ram_enable;
  wire rst;
  wire selec_enable;
  wire [5:0]seleccion;
  wire write_in;

  design_1_sistema_morse_0_0_sistema_morse U0
       (.clk(clk),
        .led(led),
        .mask_out(mask_out),
        .morse_out(morse_out),
        .ram_addr(ram_addr),
        .ram_data_mask(ram_data_mask),
        .ram_data_morse(ram_data_morse),
        .ram_enable(ram_enable),
        .rst(rst),
        .selec_enable(selec_enable),
        .seleccion(seleccion),
        .write_in(write_in));
endmodule

(* ORIG_REF_NAME = "CodigoMorse" *) 
module design_1_sistema_morse_0_0_CodigoMorse
   (E,
    selec_enable_0,
    selec_enable_1,
    D,
    selec_enable_2,
    selec_enable,
    rst,
    \bit_idx_reg[2] ,
    \bit_idx_reg[0] ,
    \bit_idx_reg[0]_0 ,
    seleccion);
  output [0:0]E;
  output selec_enable_0;
  output selec_enable_1;
  output [3:0]D;
  output selec_enable_2;
  input selec_enable;
  input rst;
  input \bit_idx_reg[2] ;
  input \bit_idx_reg[0] ;
  input \bit_idx_reg[0]_0 ;
  input [5:0]seleccion;

  wire [3:0]D;
  wire [0:0]E;
  wire \bit_idx[0]_i_5_n_0 ;
  wire \bit_idx[2]_i_6_n_0 ;
  wire \bit_idx_reg[0] ;
  wire \bit_idx_reg[0]_0 ;
  wire \bit_idx_reg[2] ;
  wire rst;
  wire selec_enable;
  wire selec_enable_0;
  wire selec_enable_1;
  wire selec_enable_2;
  wire [5:0]seleccion;
  wire [4:0]ult_mascara;
  wire \ult_mascara_reg[0]_i_1_n_0 ;

  LUT6 #(
    .INIT(64'hE0EFEFE0EFE0E0EF)) 
    \bit_idx[0]_i_2 
       (.I0(\bit_idx_reg[0] ),
        .I1(\bit_idx_reg[0]_0 ),
        .I2(selec_enable),
        .I3(\bit_idx[0]_i_5_n_0 ),
        .I4(ult_mascara[0]),
        .I5(ult_mascara[1]),
        .O(selec_enable_1));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \bit_idx[0]_i_5 
       (.I0(ult_mascara[3]),
        .I1(ult_mascara[2]),
        .I2(ult_mascara[4]),
        .O(\bit_idx[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4001011501151554)) 
    \bit_idx[1]_i_3 
       (.I0(selec_enable),
        .I1(ult_mascara[1]),
        .I2(ult_mascara[0]),
        .I3(ult_mascara[3]),
        .I4(ult_mascara[4]),
        .I5(ult_mascara[2]),
        .O(selec_enable_2));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bit_idx[2]_i_2 
       (.I0(\bit_idx_reg[2] ),
        .I1(selec_enable),
        .I2(\bit_idx[2]_i_6_n_0 ),
        .O(selec_enable_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFE)) 
    \bit_idx[2]_i_6 
       (.I0(ult_mascara[4]),
        .I1(ult_mascara[2]),
        .I2(ult_mascara[3]),
        .I3(ult_mascara[0]),
        .I4(ult_mascara[1]),
        .O(\bit_idx[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h5455555557575747)) 
    \save_mascara[1]_i_1 
       (.I0(seleccion[5]),
        .I1(seleccion[3]),
        .I2(seleccion[2]),
        .I3(seleccion[0]),
        .I4(seleccion[1]),
        .I5(seleccion[4]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h5553455755574446)) 
    \save_mascara[2]_i_1 
       (.I0(seleccion[5]),
        .I1(seleccion[4]),
        .I2(seleccion[2]),
        .I3(seleccion[3]),
        .I4(seleccion[1]),
        .I5(seleccion[0]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h5541444B5541044E)) 
    \save_mascara[3]_i_1 
       (.I0(seleccion[5]),
        .I1(seleccion[0]),
        .I2(seleccion[2]),
        .I3(seleccion[3]),
        .I4(seleccion[4]),
        .I5(seleccion[1]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h00000055FB000000)) 
    \save_mascara[4]_i_1 
       (.I0(seleccion[2]),
        .I1(seleccion[0]),
        .I2(seleccion[1]),
        .I3(seleccion[4]),
        .I4(seleccion[3]),
        .I5(seleccion[5]),
        .O(D[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ult_mascara_reg[0] 
       (.CLR(1'b0),
        .D(\ult_mascara_reg[0]_i_1_n_0 ),
        .G(E),
        .GE(1'b1),
        .Q(ult_mascara[0]));
  LUT4 #(
    .INIT(16'h01FF)) 
    \ult_mascara_reg[0]_i_1 
       (.I0(seleccion[4]),
        .I1(seleccion[3]),
        .I2(seleccion[2]),
        .I3(seleccion[5]),
        .O(\ult_mascara_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ult_mascara_reg[1] 
       (.CLR(1'b0),
        .D(D[0]),
        .G(E),
        .GE(1'b1),
        .Q(ult_mascara[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ult_mascara_reg[2] 
       (.CLR(1'b0),
        .D(D[1]),
        .G(E),
        .GE(1'b1),
        .Q(ult_mascara[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ult_mascara_reg[3] 
       (.CLR(1'b0),
        .D(D[2]),
        .G(E),
        .GE(1'b1),
        .Q(ult_mascara[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ult_mascara_reg[4] 
       (.CLR(1'b0),
        .D(D[3]),
        .G(E),
        .GE(1'b1),
        .Q(ult_mascara[4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ult_mascara_reg[4]_i_1 
       (.I0(selec_enable),
        .I1(rst),
        .O(E));
endmodule

(* ORIG_REF_NAME = "ParpadeoMorse" *) 
module design_1_sistema_morse_0_0_ParpadeoMorse
   (led,
    mask_out,
    seleccion_1_sp_1,
    seleccion_5_sp_1,
    morse_out,
    \seleccion[5]_0 ,
    E,
    clk,
    rst,
    selec_enable,
    \bit_idx_reg[1]_0 ,
    seleccion,
    D,
    \bit_idx_reg[2]_0 ,
    \bit_idx_reg[0]_0 );
  output led;
  output [4:0]mask_out;
  output seleccion_1_sp_1;
  output seleccion_5_sp_1;
  output [4:0]morse_out;
  output \seleccion[5]_0 ;
  input [0:0]E;
  input clk;
  input rst;
  input selec_enable;
  input \bit_idx_reg[1]_0 ;
  input [5:0]seleccion;
  input [3:0]D;
  input \bit_idx_reg[2]_0 ;
  input \bit_idx_reg[0]_0 ;

  wire [3:0]D;
  wire [0:0]E;
  wire \bit_idx[0]_i_1_n_0 ;
  wire \bit_idx[0]_i_3_n_0 ;
  wire \bit_idx[1]_i_1_n_0 ;
  wire \bit_idx[1]_i_2_n_0 ;
  wire \bit_idx[1]_i_4_n_0 ;
  wire \bit_idx[1]_i_5_n_0 ;
  wire \bit_idx[2]_i_1_n_0 ;
  wire \bit_idx[2]_i_3_n_0 ;
  wire \bit_idx[2]_i_4_n_0 ;
  wire \bit_idx_reg[0]_0 ;
  wire \bit_idx_reg[1]_0 ;
  wire \bit_idx_reg[2]_0 ;
  wire \bit_idx_reg_n_0_[0] ;
  wire \bit_idx_reg_n_0_[1] ;
  wire \bit_idx_reg_n_0_[2] ;
  wire clk;
  wire \contador[0]_i_2_n_0 ;
  wire \contador[0]_i_3_n_0 ;
  wire \contador[0]_i_4_n_0 ;
  wire \contador[0]_i_5_n_0 ;
  wire \contador[0]_i_6_n_0 ;
  wire \contador[12]_i_2_n_0 ;
  wire \contador[12]_i_3_n_0 ;
  wire \contador[12]_i_4_n_0 ;
  wire \contador[12]_i_5_n_0 ;
  wire \contador[16]_i_2_n_0 ;
  wire \contador[16]_i_3_n_0 ;
  wire \contador[16]_i_4_n_0 ;
  wire \contador[16]_i_5_n_0 ;
  wire \contador[20]_i_2_n_0 ;
  wire \contador[20]_i_3_n_0 ;
  wire \contador[20]_i_4_n_0 ;
  wire \contador[20]_i_5_n_0 ;
  wire \contador[24]_i_2_n_0 ;
  wire \contador[24]_i_3_n_0 ;
  wire \contador[24]_i_4_n_0 ;
  wire \contador[24]_i_5_n_0 ;
  wire \contador[28]_i_2_n_0 ;
  wire \contador[28]_i_3_n_0 ;
  wire \contador[28]_i_4_n_0 ;
  wire \contador[28]_i_5_n_0 ;
  wire \contador[4]_i_2_n_0 ;
  wire \contador[4]_i_3_n_0 ;
  wire \contador[4]_i_4_n_0 ;
  wire \contador[4]_i_5_n_0 ;
  wire \contador[8]_i_2_n_0 ;
  wire \contador[8]_i_3_n_0 ;
  wire \contador[8]_i_4_n_0 ;
  wire \contador[8]_i_5_n_0 ;
  wire [31:0]contador_reg;
  wire \contador_reg[0]_i_1_n_0 ;
  wire \contador_reg[0]_i_1_n_1 ;
  wire \contador_reg[0]_i_1_n_2 ;
  wire \contador_reg[0]_i_1_n_3 ;
  wire \contador_reg[0]_i_1_n_4 ;
  wire \contador_reg[0]_i_1_n_5 ;
  wire \contador_reg[0]_i_1_n_6 ;
  wire \contador_reg[0]_i_1_n_7 ;
  wire \contador_reg[12]_i_1_n_0 ;
  wire \contador_reg[12]_i_1_n_1 ;
  wire \contador_reg[12]_i_1_n_2 ;
  wire \contador_reg[12]_i_1_n_3 ;
  wire \contador_reg[12]_i_1_n_4 ;
  wire \contador_reg[12]_i_1_n_5 ;
  wire \contador_reg[12]_i_1_n_6 ;
  wire \contador_reg[12]_i_1_n_7 ;
  wire \contador_reg[16]_i_1_n_0 ;
  wire \contador_reg[16]_i_1_n_1 ;
  wire \contador_reg[16]_i_1_n_2 ;
  wire \contador_reg[16]_i_1_n_3 ;
  wire \contador_reg[16]_i_1_n_4 ;
  wire \contador_reg[16]_i_1_n_5 ;
  wire \contador_reg[16]_i_1_n_6 ;
  wire \contador_reg[16]_i_1_n_7 ;
  wire \contador_reg[20]_i_1_n_0 ;
  wire \contador_reg[20]_i_1_n_1 ;
  wire \contador_reg[20]_i_1_n_2 ;
  wire \contador_reg[20]_i_1_n_3 ;
  wire \contador_reg[20]_i_1_n_4 ;
  wire \contador_reg[20]_i_1_n_5 ;
  wire \contador_reg[20]_i_1_n_6 ;
  wire \contador_reg[20]_i_1_n_7 ;
  wire \contador_reg[24]_i_1_n_0 ;
  wire \contador_reg[24]_i_1_n_1 ;
  wire \contador_reg[24]_i_1_n_2 ;
  wire \contador_reg[24]_i_1_n_3 ;
  wire \contador_reg[24]_i_1_n_4 ;
  wire \contador_reg[24]_i_1_n_5 ;
  wire \contador_reg[24]_i_1_n_6 ;
  wire \contador_reg[24]_i_1_n_7 ;
  wire \contador_reg[28]_i_1_n_1 ;
  wire \contador_reg[28]_i_1_n_2 ;
  wire \contador_reg[28]_i_1_n_3 ;
  wire \contador_reg[28]_i_1_n_4 ;
  wire \contador_reg[28]_i_1_n_5 ;
  wire \contador_reg[28]_i_1_n_6 ;
  wire \contador_reg[28]_i_1_n_7 ;
  wire \contador_reg[4]_i_1_n_0 ;
  wire \contador_reg[4]_i_1_n_1 ;
  wire \contador_reg[4]_i_1_n_2 ;
  wire \contador_reg[4]_i_1_n_3 ;
  wire \contador_reg[4]_i_1_n_4 ;
  wire \contador_reg[4]_i_1_n_5 ;
  wire \contador_reg[4]_i_1_n_6 ;
  wire \contador_reg[4]_i_1_n_7 ;
  wire \contador_reg[8]_i_1_n_0 ;
  wire \contador_reg[8]_i_1_n_1 ;
  wire \contador_reg[8]_i_1_n_2 ;
  wire \contador_reg[8]_i_1_n_3 ;
  wire \contador_reg[8]_i_1_n_4 ;
  wire \contador_reg[8]_i_1_n_5 ;
  wire \contador_reg[8]_i_1_n_6 ;
  wire \contador_reg[8]_i_1_n_7 ;
  wire [26:26]count_limit;
  wire \count_limit[23]_i_1_n_0 ;
  wire \count_limit[25]_i_1_n_0 ;
  wire \count_limit[26]_i_1_n_0 ;
  wire \count_limit[26]_i_3_n_0 ;
  wire \count_limit_reg_n_0_[23] ;
  wire \count_limit_reg_n_0_[25] ;
  wire \count_limit_reg_n_0_[26] ;
  wire led;
  wire led_on;
  wire led_on_i_1_n_0;
  wire led_state_i_1_n_0;
  wire led_state_i_2_n_0;
  wire led_state_i_3_n_0;
  wire [4:0]mask_out;
  wire [4:0]morse_out;
  wire p_0_in;
  wire p_2_in;
  wire prev_flag;
  wire rst;
  wire selec_enable;
  wire [4:0]selec_morse_out;
  wire [5:0]seleccion;
  wire \seleccion[5]_0 ;
  wire seleccion_1_sn_1;
  wire seleccion_5_sn_1;
  wire sequence_done0;
  wire sequence_done1;
  wire sequence_done1_carry__0_i_1_n_0;
  wire sequence_done1_carry__0_i_2_n_0;
  wire sequence_done1_carry__0_i_3_n_0;
  wire sequence_done1_carry__0_i_4_n_0;
  wire sequence_done1_carry__0_n_0;
  wire sequence_done1_carry__0_n_1;
  wire sequence_done1_carry__0_n_2;
  wire sequence_done1_carry__0_n_3;
  wire sequence_done1_carry__1_i_1_n_0;
  wire sequence_done1_carry__1_i_2_n_0;
  wire sequence_done1_carry__1_i_3_n_0;
  wire sequence_done1_carry__1_n_2;
  wire sequence_done1_carry__1_n_3;
  wire sequence_done1_carry_i_1_n_0;
  wire sequence_done1_carry_i_2_n_0;
  wire sequence_done1_carry_i_3_n_0;
  wire sequence_done1_carry_i_4_n_0;
  wire sequence_done1_carry_n_0;
  wire sequence_done1_carry_n_1;
  wire sequence_done1_carry_n_2;
  wire sequence_done1_carry_n_3;
  wire sequence_done_inv_i_1_n_0;
  wire [3:3]\NLW_contador_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:0]NLW_sequence_done1_carry_O_UNCONNECTED;
  wire [3:0]NLW_sequence_done1_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_sequence_done1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_sequence_done1_carry__1_O_UNCONNECTED;

  assign seleccion_1_sp_1 = seleccion_1_sn_1;
  assign seleccion_5_sp_1 = seleccion_5_sn_1;
  LUT6 #(
    .INIT(64'h0F0F0EFF0F0F0E00)) 
    \bit_idx[0]_i_1 
       (.I0(\bit_idx_reg[0]_0 ),
        .I1(rst),
        .I2(\bit_idx[0]_i_3_n_0 ),
        .I3(sequence_done0),
        .I4(\bit_idx[2]_i_4_n_0 ),
        .I5(\bit_idx_reg_n_0_[0] ),
        .O(\bit_idx[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4040000040400040)) 
    \bit_idx[0]_i_3 
       (.I0(led_on),
        .I1(sequence_done1),
        .I2(p_0_in),
        .I3(\bit_idx_reg_n_0_[2] ),
        .I4(\bit_idx_reg_n_0_[0] ),
        .I5(\bit_idx_reg_n_0_[1] ),
        .O(\bit_idx[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000031F0711F)) 
    \bit_idx[0]_i_4 
       (.I0(seleccion[1]),
        .I1(seleccion[4]),
        .I2(seleccion[0]),
        .I3(seleccion[3]),
        .I4(seleccion[2]),
        .I5(seleccion[5]),
        .O(seleccion_1_sn_1));
  LUT6 #(
    .INIT(64'hA0A0AAFF0808AA00)) 
    \bit_idx[1]_i_1 
       (.I0(\bit_idx[1]_i_2_n_0 ),
        .I1(\bit_idx_reg_n_0_[2] ),
        .I2(\bit_idx_reg_n_0_[0] ),
        .I3(sequence_done0),
        .I4(\bit_idx[2]_i_4_n_0 ),
        .I5(\bit_idx_reg_n_0_[1] ),
        .O(\bit_idx[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF08FFFFFF08FF08)) 
    \bit_idx[1]_i_2 
       (.I0(p_0_in),
        .I1(sequence_done1),
        .I2(led_on),
        .I3(rst),
        .I4(\bit_idx_reg[1]_0 ),
        .I5(\bit_idx[1]_i_4_n_0 ),
        .O(\bit_idx[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFDDDDDDD5)) 
    \bit_idx[1]_i_4 
       (.I0(selec_enable),
        .I1(seleccion[5]),
        .I2(seleccion[2]),
        .I3(seleccion[3]),
        .I4(seleccion[4]),
        .I5(\bit_idx[1]_i_5_n_0 ),
        .O(\bit_idx[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0501054555550444)) 
    \bit_idx[1]_i_5 
       (.I0(seleccion[5]),
        .I1(seleccion[0]),
        .I2(seleccion[3]),
        .I3(seleccion[2]),
        .I4(seleccion[1]),
        .I5(seleccion[4]),
        .O(\bit_idx[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0F0FDDFFF0F0DD00)) 
    \bit_idx[2]_i_1 
       (.I0(\bit_idx_reg[2]_0 ),
        .I1(rst),
        .I2(\bit_idx[2]_i_3_n_0 ),
        .I3(sequence_done0),
        .I4(\bit_idx[2]_i_4_n_0 ),
        .I5(\bit_idx_reg_n_0_[2] ),
        .O(\bit_idx[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bit_idx[2]_i_3 
       (.I0(\bit_idx_reg_n_0_[0] ),
        .I1(\bit_idx_reg_n_0_[1] ),
        .O(\bit_idx[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \bit_idx[2]_i_4 
       (.I0(p_0_in),
        .I1(sequence_done1),
        .I2(led_on),
        .O(\bit_idx[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h1515151515551515)) 
    \bit_idx[2]_i_5 
       (.I0(seleccion[5]),
        .I1(seleccion[3]),
        .I2(seleccion[4]),
        .I3(seleccion[1]),
        .I4(seleccion[0]),
        .I5(seleccion[2]),
        .O(\seleccion[5]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \bit_idx_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\bit_idx[0]_i_1_n_0 ),
        .Q(\bit_idx_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \bit_idx_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\bit_idx[1]_i_1_n_0 ),
        .Q(\bit_idx_reg_n_0_[1] ));
  FDPE #(
    .INIT(1'b1)) 
    \bit_idx_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\bit_idx[2]_i_1_n_0 ),
        .PRE(rst),
        .Q(\bit_idx_reg_n_0_[2] ));
  LUT2 #(
    .INIT(4'h2)) 
    \contador[0]_i_2 
       (.I0(contador_reg[0]),
        .I1(sequence_done1),
        .O(\contador[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \contador[0]_i_3 
       (.I0(contador_reg[3]),
        .I1(sequence_done1),
        .O(\contador[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \contador[0]_i_4 
       (.I0(contador_reg[2]),
        .I1(sequence_done1),
        .O(\contador[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \contador[0]_i_5 
       (.I0(contador_reg[1]),
        .I1(sequence_done1),
        .O(\contador[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \contador[0]_i_6 
       (.I0(contador_reg[0]),
        .I1(sequence_done1),
        .O(\contador[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \contador[12]_i_2 
       (.I0(contador_reg[15]),
        .I1(sequence_done1),
        .O(\contador[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \contador[12]_i_3 
       (.I0(contador_reg[14]),
        .I1(sequence_done1),
        .O(\contador[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \contador[12]_i_4 
       (.I0(contador_reg[13]),
        .I1(sequence_done1),
        .O(\contador[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \contador[12]_i_5 
       (.I0(contador_reg[12]),
        .I1(sequence_done1),
        .O(\contador[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \contador[16]_i_2 
       (.I0(contador_reg[19]),
        .I1(sequence_done1),
        .O(\contador[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \contador[16]_i_3 
       (.I0(contador_reg[18]),
        .I1(sequence_done1),
        .O(\contador[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \contador[16]_i_4 
       (.I0(contador_reg[17]),
        .I1(sequence_done1),
        .O(\contador[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \contador[16]_i_5 
       (.I0(contador_reg[16]),
        .I1(sequence_done1),
        .O(\contador[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \contador[20]_i_2 
       (.I0(contador_reg[23]),
        .I1(sequence_done1),
        .O(\contador[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \contador[20]_i_3 
       (.I0(contador_reg[22]),
        .I1(sequence_done1),
        .O(\contador[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \contador[20]_i_4 
       (.I0(contador_reg[21]),
        .I1(sequence_done1),
        .O(\contador[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \contador[20]_i_5 
       (.I0(contador_reg[20]),
        .I1(sequence_done1),
        .O(\contador[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \contador[24]_i_2 
       (.I0(contador_reg[27]),
        .I1(sequence_done1),
        .O(\contador[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \contador[24]_i_3 
       (.I0(contador_reg[26]),
        .I1(sequence_done1),
        .O(\contador[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \contador[24]_i_4 
       (.I0(contador_reg[25]),
        .I1(sequence_done1),
        .O(\contador[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \contador[24]_i_5 
       (.I0(contador_reg[24]),
        .I1(sequence_done1),
        .O(\contador[24]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \contador[28]_i_2 
       (.I0(contador_reg[31]),
        .I1(sequence_done1),
        .O(\contador[28]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \contador[28]_i_3 
       (.I0(contador_reg[30]),
        .I1(sequence_done1),
        .O(\contador[28]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \contador[28]_i_4 
       (.I0(contador_reg[29]),
        .I1(sequence_done1),
        .O(\contador[28]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \contador[28]_i_5 
       (.I0(contador_reg[28]),
        .I1(sequence_done1),
        .O(\contador[28]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \contador[4]_i_2 
       (.I0(contador_reg[7]),
        .I1(sequence_done1),
        .O(\contador[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \contador[4]_i_3 
       (.I0(contador_reg[6]),
        .I1(sequence_done1),
        .O(\contador[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \contador[4]_i_4 
       (.I0(contador_reg[5]),
        .I1(sequence_done1),
        .O(\contador[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \contador[4]_i_5 
       (.I0(contador_reg[4]),
        .I1(sequence_done1),
        .O(\contador[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \contador[8]_i_2 
       (.I0(contador_reg[11]),
        .I1(sequence_done1),
        .O(\contador[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \contador[8]_i_3 
       (.I0(contador_reg[10]),
        .I1(sequence_done1),
        .O(\contador[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \contador[8]_i_4 
       (.I0(contador_reg[9]),
        .I1(sequence_done1),
        .O(\contador[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \contador[8]_i_5 
       (.I0(contador_reg[8]),
        .I1(sequence_done1),
        .O(\contador[8]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \contador_reg[0] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(rst),
        .D(\contador_reg[0]_i_1_n_7 ),
        .Q(contador_reg[0]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \contador_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\contador_reg[0]_i_1_n_0 ,\contador_reg[0]_i_1_n_1 ,\contador_reg[0]_i_1_n_2 ,\contador_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\contador[0]_i_2_n_0 }),
        .O({\contador_reg[0]_i_1_n_4 ,\contador_reg[0]_i_1_n_5 ,\contador_reg[0]_i_1_n_6 ,\contador_reg[0]_i_1_n_7 }),
        .S({\contador[0]_i_3_n_0 ,\contador[0]_i_4_n_0 ,\contador[0]_i_5_n_0 ,\contador[0]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \contador_reg[10] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(rst),
        .D(\contador_reg[8]_i_1_n_5 ),
        .Q(contador_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \contador_reg[11] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(rst),
        .D(\contador_reg[8]_i_1_n_4 ),
        .Q(contador_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \contador_reg[12] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(rst),
        .D(\contador_reg[12]_i_1_n_7 ),
        .Q(contador_reg[12]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \contador_reg[12]_i_1 
       (.CI(\contador_reg[8]_i_1_n_0 ),
        .CO({\contador_reg[12]_i_1_n_0 ,\contador_reg[12]_i_1_n_1 ,\contador_reg[12]_i_1_n_2 ,\contador_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\contador_reg[12]_i_1_n_4 ,\contador_reg[12]_i_1_n_5 ,\contador_reg[12]_i_1_n_6 ,\contador_reg[12]_i_1_n_7 }),
        .S({\contador[12]_i_2_n_0 ,\contador[12]_i_3_n_0 ,\contador[12]_i_4_n_0 ,\contador[12]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \contador_reg[13] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(rst),
        .D(\contador_reg[12]_i_1_n_6 ),
        .Q(contador_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \contador_reg[14] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(rst),
        .D(\contador_reg[12]_i_1_n_5 ),
        .Q(contador_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \contador_reg[15] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(rst),
        .D(\contador_reg[12]_i_1_n_4 ),
        .Q(contador_reg[15]));
  FDCE #(
    .INIT(1'b0)) 
    \contador_reg[16] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(rst),
        .D(\contador_reg[16]_i_1_n_7 ),
        .Q(contador_reg[16]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \contador_reg[16]_i_1 
       (.CI(\contador_reg[12]_i_1_n_0 ),
        .CO({\contador_reg[16]_i_1_n_0 ,\contador_reg[16]_i_1_n_1 ,\contador_reg[16]_i_1_n_2 ,\contador_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\contador_reg[16]_i_1_n_4 ,\contador_reg[16]_i_1_n_5 ,\contador_reg[16]_i_1_n_6 ,\contador_reg[16]_i_1_n_7 }),
        .S({\contador[16]_i_2_n_0 ,\contador[16]_i_3_n_0 ,\contador[16]_i_4_n_0 ,\contador[16]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \contador_reg[17] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(rst),
        .D(\contador_reg[16]_i_1_n_6 ),
        .Q(contador_reg[17]));
  FDCE #(
    .INIT(1'b0)) 
    \contador_reg[18] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(rst),
        .D(\contador_reg[16]_i_1_n_5 ),
        .Q(contador_reg[18]));
  FDCE #(
    .INIT(1'b0)) 
    \contador_reg[19] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(rst),
        .D(\contador_reg[16]_i_1_n_4 ),
        .Q(contador_reg[19]));
  FDCE #(
    .INIT(1'b0)) 
    \contador_reg[1] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(rst),
        .D(\contador_reg[0]_i_1_n_6 ),
        .Q(contador_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \contador_reg[20] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(rst),
        .D(\contador_reg[20]_i_1_n_7 ),
        .Q(contador_reg[20]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \contador_reg[20]_i_1 
       (.CI(\contador_reg[16]_i_1_n_0 ),
        .CO({\contador_reg[20]_i_1_n_0 ,\contador_reg[20]_i_1_n_1 ,\contador_reg[20]_i_1_n_2 ,\contador_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\contador_reg[20]_i_1_n_4 ,\contador_reg[20]_i_1_n_5 ,\contador_reg[20]_i_1_n_6 ,\contador_reg[20]_i_1_n_7 }),
        .S({\contador[20]_i_2_n_0 ,\contador[20]_i_3_n_0 ,\contador[20]_i_4_n_0 ,\contador[20]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \contador_reg[21] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(rst),
        .D(\contador_reg[20]_i_1_n_6 ),
        .Q(contador_reg[21]));
  FDCE #(
    .INIT(1'b0)) 
    \contador_reg[22] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(rst),
        .D(\contador_reg[20]_i_1_n_5 ),
        .Q(contador_reg[22]));
  FDCE #(
    .INIT(1'b0)) 
    \contador_reg[23] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(rst),
        .D(\contador_reg[20]_i_1_n_4 ),
        .Q(contador_reg[23]));
  FDCE #(
    .INIT(1'b0)) 
    \contador_reg[24] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(rst),
        .D(\contador_reg[24]_i_1_n_7 ),
        .Q(contador_reg[24]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \contador_reg[24]_i_1 
       (.CI(\contador_reg[20]_i_1_n_0 ),
        .CO({\contador_reg[24]_i_1_n_0 ,\contador_reg[24]_i_1_n_1 ,\contador_reg[24]_i_1_n_2 ,\contador_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\contador_reg[24]_i_1_n_4 ,\contador_reg[24]_i_1_n_5 ,\contador_reg[24]_i_1_n_6 ,\contador_reg[24]_i_1_n_7 }),
        .S({\contador[24]_i_2_n_0 ,\contador[24]_i_3_n_0 ,\contador[24]_i_4_n_0 ,\contador[24]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \contador_reg[25] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(rst),
        .D(\contador_reg[24]_i_1_n_6 ),
        .Q(contador_reg[25]));
  FDCE #(
    .INIT(1'b0)) 
    \contador_reg[26] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(rst),
        .D(\contador_reg[24]_i_1_n_5 ),
        .Q(contador_reg[26]));
  FDCE #(
    .INIT(1'b0)) 
    \contador_reg[27] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(rst),
        .D(\contador_reg[24]_i_1_n_4 ),
        .Q(contador_reg[27]));
  FDCE #(
    .INIT(1'b0)) 
    \contador_reg[28] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(rst),
        .D(\contador_reg[28]_i_1_n_7 ),
        .Q(contador_reg[28]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \contador_reg[28]_i_1 
       (.CI(\contador_reg[24]_i_1_n_0 ),
        .CO({\NLW_contador_reg[28]_i_1_CO_UNCONNECTED [3],\contador_reg[28]_i_1_n_1 ,\contador_reg[28]_i_1_n_2 ,\contador_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\contador_reg[28]_i_1_n_4 ,\contador_reg[28]_i_1_n_5 ,\contador_reg[28]_i_1_n_6 ,\contador_reg[28]_i_1_n_7 }),
        .S({\contador[28]_i_2_n_0 ,\contador[28]_i_3_n_0 ,\contador[28]_i_4_n_0 ,\contador[28]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \contador_reg[29] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(rst),
        .D(\contador_reg[28]_i_1_n_6 ),
        .Q(contador_reg[29]));
  FDCE #(
    .INIT(1'b0)) 
    \contador_reg[2] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(rst),
        .D(\contador_reg[0]_i_1_n_5 ),
        .Q(contador_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \contador_reg[30] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(rst),
        .D(\contador_reg[28]_i_1_n_5 ),
        .Q(contador_reg[30]));
  FDCE #(
    .INIT(1'b0)) 
    \contador_reg[31] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(rst),
        .D(\contador_reg[28]_i_1_n_4 ),
        .Q(contador_reg[31]));
  FDCE #(
    .INIT(1'b0)) 
    \contador_reg[3] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(rst),
        .D(\contador_reg[0]_i_1_n_4 ),
        .Q(contador_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \contador_reg[4] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(rst),
        .D(\contador_reg[4]_i_1_n_7 ),
        .Q(contador_reg[4]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \contador_reg[4]_i_1 
       (.CI(\contador_reg[0]_i_1_n_0 ),
        .CO({\contador_reg[4]_i_1_n_0 ,\contador_reg[4]_i_1_n_1 ,\contador_reg[4]_i_1_n_2 ,\contador_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\contador_reg[4]_i_1_n_4 ,\contador_reg[4]_i_1_n_5 ,\contador_reg[4]_i_1_n_6 ,\contador_reg[4]_i_1_n_7 }),
        .S({\contador[4]_i_2_n_0 ,\contador[4]_i_3_n_0 ,\contador[4]_i_4_n_0 ,\contador[4]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \contador_reg[5] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(rst),
        .D(\contador_reg[4]_i_1_n_6 ),
        .Q(contador_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \contador_reg[6] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(rst),
        .D(\contador_reg[4]_i_1_n_5 ),
        .Q(contador_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \contador_reg[7] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(rst),
        .D(\contador_reg[4]_i_1_n_4 ),
        .Q(contador_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \contador_reg[8] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(rst),
        .D(\contador_reg[8]_i_1_n_7 ),
        .Q(contador_reg[8]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \contador_reg[8]_i_1 
       (.CI(\contador_reg[4]_i_1_n_0 ),
        .CO({\contador_reg[8]_i_1_n_0 ,\contador_reg[8]_i_1_n_1 ,\contador_reg[8]_i_1_n_2 ,\contador_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\contador_reg[8]_i_1_n_4 ,\contador_reg[8]_i_1_n_5 ,\contador_reg[8]_i_1_n_6 ,\contador_reg[8]_i_1_n_7 }),
        .S({\contador[8]_i_2_n_0 ,\contador[8]_i_3_n_0 ,\contador[8]_i_4_n_0 ,\contador[8]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \contador_reg[9] 
       (.C(clk),
        .CE(p_0_in),
        .CLR(rst),
        .D(\contador_reg[8]_i_1_n_6 ),
        .Q(contador_reg[9]));
  LUT6 #(
    .INIT(64'h2FFFFFFF0000D000)) 
    \count_limit[23]_i_1 
       (.I0(led_on),
        .I1(led_state_i_2_n_0),
        .I2(sequence_done1),
        .I3(p_0_in),
        .I4(count_limit),
        .I5(\count_limit_reg_n_0_[23] ),
        .O(\count_limit[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFD000)) 
    \count_limit[25]_i_1 
       (.I0(led_on),
        .I1(led_state_i_2_n_0),
        .I2(sequence_done1),
        .I3(p_0_in),
        .I4(\count_limit_reg_n_0_[25] ),
        .O(\count_limit[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF2FFFD0000000)) 
    \count_limit[26]_i_1 
       (.I0(led_on),
        .I1(led_state_i_2_n_0),
        .I2(sequence_done1),
        .I3(p_0_in),
        .I4(count_limit),
        .I5(\count_limit_reg_n_0_[26] ),
        .O(\count_limit[26]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hC808)) 
    \count_limit[26]_i_2 
       (.I0(\count_limit[26]_i_3_n_0 ),
        .I1(led_on),
        .I2(\bit_idx_reg_n_0_[2] ),
        .I3(morse_out[4]),
        .O(count_limit));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \count_limit[26]_i_3 
       (.I0(morse_out[3]),
        .I1(morse_out[2]),
        .I2(\bit_idx_reg_n_0_[1] ),
        .I3(morse_out[1]),
        .I4(\bit_idx_reg_n_0_[0] ),
        .I5(morse_out[0]),
        .O(\count_limit[26]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count_limit_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_limit[23]_i_1_n_0 ),
        .Q(\count_limit_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_limit_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_limit[25]_i_1_n_0 ),
        .Q(\count_limit_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \count_limit_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_limit[26]_i_1_n_0 ),
        .Q(\count_limit_reg_n_0_[26] ));
  LUT6 #(
    .INIT(64'h000000007DF95601)) 
    g0_b0
       (.I0(seleccion[0]),
        .I1(seleccion[1]),
        .I2(seleccion[2]),
        .I3(seleccion[3]),
        .I4(seleccion[4]),
        .I5(seleccion[5]),
        .O(selec_morse_out[0]));
  LUT6 #(
    .INIT(64'h000000083D42F264)) 
    g0_b1
       (.I0(seleccion[0]),
        .I1(seleccion[1]),
        .I2(seleccion[2]),
        .I3(seleccion[3]),
        .I4(seleccion[4]),
        .I5(seleccion[5]),
        .O(selec_morse_out[1]));
  LUT6 #(
    .INIT(64'h0000000C1F01CE48)) 
    g0_b2
       (.I0(seleccion[0]),
        .I1(seleccion[1]),
        .I2(seleccion[2]),
        .I3(seleccion[3]),
        .I4(seleccion[4]),
        .I5(seleccion[5]),
        .O(selec_morse_out[2]));
  LUT6 #(
    .INIT(64'h0000000E0E810006)) 
    g0_b3
       (.I0(seleccion[0]),
        .I1(seleccion[1]),
        .I2(seleccion[2]),
        .I3(seleccion[3]),
        .I4(seleccion[4]),
        .I5(seleccion[5]),
        .O(selec_morse_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00031000)) 
    g0_b4
       (.I0(seleccion[0]),
        .I1(seleccion[2]),
        .I2(seleccion[3]),
        .I3(seleccion[4]),
        .I4(seleccion[5]),
        .O(selec_morse_out[4]));
  LUT6 #(
    .INIT(64'h00FFFFFFFF040404)) 
    led_on_i_1
       (.I0(prev_flag),
        .I1(selec_enable),
        .I2(rst),
        .I3(p_0_in),
        .I4(sequence_done1),
        .I5(led_on),
        .O(led_on_i_1_n_0));
  FDPE #(
    .INIT(1'b1)) 
    led_on_reg
       (.C(clk),
        .CE(1'b1),
        .D(led_on_i_1_n_0),
        .PRE(rst),
        .Q(led_on));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    led_state_i_1
       (.I0(led_state_i_2_n_0),
        .I1(led_on),
        .I2(sequence_done1),
        .I3(p_0_in),
        .I4(led),
        .O(led_state_i_1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    led_state_i_2
       (.I0(mask_out[4]),
        .I1(\bit_idx_reg_n_0_[2] ),
        .I2(led_state_i_3_n_0),
        .O(led_state_i_2_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    led_state_i_3
       (.I0(mask_out[3]),
        .I1(mask_out[2]),
        .I2(\bit_idx_reg_n_0_[1] ),
        .I3(mask_out[1]),
        .I4(\bit_idx_reg_n_0_[0] ),
        .I5(mask_out[0]),
        .O(led_state_i_3_n_0));
  FDCE #(
    .INIT(1'b0)) 
    led_state_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(led_state_i_1_n_0),
        .Q(led));
  FDCE #(
    .INIT(1'b0)) 
    prev_flag_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(E),
        .Q(prev_flag));
  LUT1 #(
    .INIT(2'h1)) 
    \save_mascara[0]_i_1 
       (.I0(seleccion_5_sn_1),
        .O(p_2_in));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    \save_mascara[0]_i_2 
       (.I0(seleccion[5]),
        .I1(seleccion[2]),
        .I2(seleccion[3]),
        .I3(seleccion[4]),
        .O(seleccion_5_sn_1));
  FDCE #(
    .INIT(1'b0)) 
    \save_mascara_reg[0] 
       (.C(clk),
        .CE(sequence_done0),
        .CLR(rst),
        .D(p_2_in),
        .Q(mask_out[0]));
  FDCE #(
    .INIT(1'b0)) 
    \save_mascara_reg[1] 
       (.C(clk),
        .CE(sequence_done0),
        .CLR(rst),
        .D(D[0]),
        .Q(mask_out[1]));
  FDCE #(
    .INIT(1'b0)) 
    \save_mascara_reg[2] 
       (.C(clk),
        .CE(sequence_done0),
        .CLR(rst),
        .D(D[1]),
        .Q(mask_out[2]));
  FDCE #(
    .INIT(1'b0)) 
    \save_mascara_reg[3] 
       (.C(clk),
        .CE(sequence_done0),
        .CLR(rst),
        .D(D[2]),
        .Q(mask_out[3]));
  FDCE #(
    .INIT(1'b0)) 
    \save_mascara_reg[4] 
       (.C(clk),
        .CE(sequence_done0),
        .CLR(rst),
        .D(D[3]),
        .Q(mask_out[4]));
  LUT3 #(
    .INIT(8'h04)) 
    \save_morse[4]_i_1 
       (.I0(rst),
        .I1(selec_enable),
        .I2(prev_flag),
        .O(sequence_done0));
  FDCE #(
    .INIT(1'b0)) 
    \save_morse_reg[0] 
       (.C(clk),
        .CE(sequence_done0),
        .CLR(rst),
        .D(selec_morse_out[0]),
        .Q(morse_out[0]));
  FDCE #(
    .INIT(1'b0)) 
    \save_morse_reg[1] 
       (.C(clk),
        .CE(sequence_done0),
        .CLR(rst),
        .D(selec_morse_out[1]),
        .Q(morse_out[1]));
  FDCE #(
    .INIT(1'b0)) 
    \save_morse_reg[2] 
       (.C(clk),
        .CE(sequence_done0),
        .CLR(rst),
        .D(selec_morse_out[2]),
        .Q(morse_out[2]));
  FDCE #(
    .INIT(1'b0)) 
    \save_morse_reg[3] 
       (.C(clk),
        .CE(sequence_done0),
        .CLR(rst),
        .D(selec_morse_out[3]),
        .Q(morse_out[3]));
  FDCE #(
    .INIT(1'b0)) 
    \save_morse_reg[4] 
       (.C(clk),
        .CE(sequence_done0),
        .CLR(rst),
        .D(selec_morse_out[4]),
        .Q(morse_out[4]));
  CARRY4 sequence_done1_carry
       (.CI(1'b0),
        .CO({sequence_done1_carry_n_0,sequence_done1_carry_n_1,sequence_done1_carry_n_2,sequence_done1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_sequence_done1_carry_O_UNCONNECTED[3:0]),
        .S({sequence_done1_carry_i_1_n_0,sequence_done1_carry_i_2_n_0,sequence_done1_carry_i_3_n_0,sequence_done1_carry_i_4_n_0}));
  CARRY4 sequence_done1_carry__0
       (.CI(sequence_done1_carry_n_0),
        .CO({sequence_done1_carry__0_n_0,sequence_done1_carry__0_n_1,sequence_done1_carry__0_n_2,sequence_done1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_sequence_done1_carry__0_O_UNCONNECTED[3:0]),
        .S({sequence_done1_carry__0_i_1_n_0,sequence_done1_carry__0_i_2_n_0,sequence_done1_carry__0_i_3_n_0,sequence_done1_carry__0_i_4_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    sequence_done1_carry__0_i_1
       (.I0(contador_reg[21]),
        .I1(\count_limit_reg_n_0_[25] ),
        .I2(contador_reg[23]),
        .I3(\count_limit_reg_n_0_[23] ),
        .I4(\count_limit_reg_n_0_[26] ),
        .I5(contador_reg[22]),
        .O(sequence_done1_carry__0_i_1_n_0));
  LUT5 #(
    .INIT(32'h41000041)) 
    sequence_done1_carry__0_i_2
       (.I0(contador_reg[18]),
        .I1(contador_reg[19]),
        .I2(\count_limit_reg_n_0_[23] ),
        .I3(\count_limit_reg_n_0_[25] ),
        .I4(contador_reg[20]),
        .O(sequence_done1_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    sequence_done1_carry__0_i_3
       (.I0(contador_reg[17]),
        .I1(\count_limit_reg_n_0_[26] ),
        .I2(contador_reg[15]),
        .I3(\count_limit_reg_n_0_[23] ),
        .I4(\count_limit_reg_n_0_[25] ),
        .I5(contador_reg[16]),
        .O(sequence_done1_carry__0_i_3_n_0));
  LUT5 #(
    .INIT(32'h81000081)) 
    sequence_done1_carry__0_i_4
       (.I0(\count_limit_reg_n_0_[26] ),
        .I1(contador_reg[12]),
        .I2(contador_reg[14]),
        .I3(contador_reg[13]),
        .I4(\count_limit_reg_n_0_[23] ),
        .O(sequence_done1_carry__0_i_4_n_0));
  CARRY4 sequence_done1_carry__1
       (.CI(sequence_done1_carry__0_n_0),
        .CO({NLW_sequence_done1_carry__1_CO_UNCONNECTED[3],sequence_done1,sequence_done1_carry__1_n_2,sequence_done1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_sequence_done1_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,sequence_done1_carry__1_i_1_n_0,sequence_done1_carry__1_i_2_n_0,sequence_done1_carry__1_i_3_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    sequence_done1_carry__1_i_1
       (.I0(contador_reg[31]),
        .I1(contador_reg[30]),
        .O(sequence_done1_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    sequence_done1_carry__1_i_2
       (.I0(contador_reg[28]),
        .I1(contador_reg[29]),
        .I2(contador_reg[27]),
        .O(sequence_done1_carry__1_i_2_n_0));
  LUT5 #(
    .INIT(32'h81000081)) 
    sequence_done1_carry__1_i_3
       (.I0(contador_reg[25]),
        .I1(\count_limit_reg_n_0_[25] ),
        .I2(contador_reg[24]),
        .I3(contador_reg[26]),
        .I4(\count_limit_reg_n_0_[26] ),
        .O(sequence_done1_carry__1_i_3_n_0));
  LUT5 #(
    .INIT(32'h41000041)) 
    sequence_done1_carry_i_1
       (.I0(contador_reg[9]),
        .I1(contador_reg[10]),
        .I2(\count_limit_reg_n_0_[23] ),
        .I3(\count_limit_reg_n_0_[25] ),
        .I4(contador_reg[11]),
        .O(sequence_done1_carry_i_1_n_0));
  LUT5 #(
    .INIT(32'h81000081)) 
    sequence_done1_carry_i_2
       (.I0(\count_limit_reg_n_0_[26] ),
        .I1(contador_reg[6]),
        .I2(contador_reg[8]),
        .I3(contador_reg[7]),
        .I4(\count_limit_reg_n_0_[23] ),
        .O(sequence_done1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h0009)) 
    sequence_done1_carry_i_3
       (.I0(contador_reg[5]),
        .I1(\count_limit_reg_n_0_[23] ),
        .I2(contador_reg[4]),
        .I3(contador_reg[3]),
        .O(sequence_done1_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    sequence_done1_carry_i_4
       (.I0(contador_reg[1]),
        .I1(contador_reg[2]),
        .I2(contador_reg[0]),
        .O(sequence_done1_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFCFFFFAAA8AAAA)) 
    sequence_done_inv_i_1
       (.I0(sequence_done0),
        .I1(\bit_idx_reg_n_0_[2] ),
        .I2(\bit_idx_reg_n_0_[1] ),
        .I3(\bit_idx_reg_n_0_[0] ),
        .I4(\bit_idx[2]_i_4_n_0 ),
        .I5(p_0_in),
        .O(sequence_done_inv_i_1_n_0));
  FDPE #(
    .INIT(1'b1)) 
    sequence_done_reg_inv
       (.C(clk),
        .CE(1'b1),
        .D(sequence_done_inv_i_1_n_0),
        .PRE(rst),
        .Q(p_0_in));
endmodule

(* ORIG_REF_NAME = "sistema_morse" *) 
module design_1_sistema_morse_0_0_sistema_morse
   (clk,
    rst,
    selec_enable,
    seleccion,
    write_in,
    ram_enable,
    ram_data_morse,
    ram_data_mask,
    ram_addr,
    led,
    morse_out,
    mask_out);
  input clk;
  input rst;
  input selec_enable;
  input [5:0]seleccion;
  input write_in;
  input ram_enable;
  input [4:0]ram_data_morse;
  input [4:0]ram_data_mask;
  input [3:0]ram_addr;
  output led;
  output [4:0]morse_out;
  output [4:0]mask_out;

  wire clk;
  wire codigo_morse_inst_n_1;
  wire codigo_morse_inst_n_2;
  wire codigo_morse_inst_n_4;
  wire codigo_morse_inst_n_7;
  wire count1;
  wire led;
  wire led_enable;
  wire [4:0]mask_out;
  wire [4:0]morse_out;
  wire p_0_in;
  wire p_0_in1_in;
  wire parpadeo_morse_inst_n_13;
  wire parpadeo_morse_inst_n_6;
  wire parpadeo_morse_inst_n_7;
  wire rst;
  wire selec_enable;
  wire [5:0]seleccion;

  design_1_sistema_morse_0_0_CodigoMorse codigo_morse_inst
       (.D({count1,codigo_morse_inst_n_4,p_0_in,p_0_in1_in}),
        .E(led_enable),
        .\bit_idx_reg[0] (parpadeo_morse_inst_n_6),
        .\bit_idx_reg[0]_0 (parpadeo_morse_inst_n_7),
        .\bit_idx_reg[2] (parpadeo_morse_inst_n_13),
        .rst(rst),
        .selec_enable(selec_enable),
        .selec_enable_0(codigo_morse_inst_n_1),
        .selec_enable_1(codigo_morse_inst_n_2),
        .selec_enable_2(codigo_morse_inst_n_7),
        .seleccion(seleccion));
  design_1_sistema_morse_0_0_ParpadeoMorse parpadeo_morse_inst
       (.D({count1,codigo_morse_inst_n_4,p_0_in,p_0_in1_in}),
        .E(led_enable),
        .\bit_idx_reg[0]_0 (codigo_morse_inst_n_2),
        .\bit_idx_reg[1]_0 (codigo_morse_inst_n_7),
        .\bit_idx_reg[2]_0 (codigo_morse_inst_n_1),
        .clk(clk),
        .led(led),
        .mask_out(mask_out),
        .morse_out(morse_out),
        .rst(rst),
        .selec_enable(selec_enable),
        .seleccion(seleccion),
        .\seleccion[5]_0 (parpadeo_morse_inst_n_13),
        .seleccion_1_sp_1(parpadeo_morse_inst_n_6),
        .seleccion_5_sp_1(parpadeo_morse_inst_n_7));
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
