-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Sat Sep 21 22:40:16 2024
-- Host        : DESKTOP-3GDKKRS running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Diego/Desktop/Proyecto-1-SEP/conectar_proyecto/conectar_proyecto.srcs/sources_1/bd/design_1/ip/design_1_sistema_morse_0_0/design_1_sistema_morse_0_0_sim_netlist.vhdl
-- Design      : design_1_sistema_morse_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_sistema_morse_0_0_CodigoMorse is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    selec_enable_0 : out STD_LOGIC;
    selec_enable_1 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    selec_enable_2 : out STD_LOGIC;
    selec_enable : in STD_LOGIC;
    rst : in STD_LOGIC;
    \bit_idx_reg[2]\ : in STD_LOGIC;
    \bit_idx_reg[0]\ : in STD_LOGIC;
    \bit_idx_reg[0]_0\ : in STD_LOGIC;
    seleccion : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_sistema_morse_0_0_CodigoMorse : entity is "CodigoMorse";
end design_1_sistema_morse_0_0_CodigoMorse;

architecture STRUCTURE of design_1_sistema_morse_0_0_CodigoMorse is
  signal \^d\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \bit_idx[0]_i_5_n_0\ : STD_LOGIC;
  signal \bit_idx[2]_i_6_n_0\ : STD_LOGIC;
  signal ult_mascara : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \ult_mascara_reg[0]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bit_idx[0]_i_5\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \bit_idx[2]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \bit_idx[2]_i_6\ : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \ult_mascara_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \ult_mascara_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \ult_mascara_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \ult_mascara_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \ult_mascara_reg[4]\ : label is "LD";
  attribute SOFT_HLUTNM of \ult_mascara_reg[4]_i_1\ : label is "soft_lutpair1";
begin
  D(3 downto 0) <= \^d\(3 downto 0);
  E(0) <= \^e\(0);
\bit_idx[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0EFEFE0EFE0E0EF"
    )
        port map (
      I0 => \bit_idx_reg[0]\,
      I1 => \bit_idx_reg[0]_0\,
      I2 => selec_enable,
      I3 => \bit_idx[0]_i_5_n_0\,
      I4 => ult_mascara(0),
      I5 => ult_mascara(1),
      O => selec_enable_1
    );
\bit_idx[0]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => ult_mascara(3),
      I1 => ult_mascara(2),
      I2 => ult_mascara(4),
      O => \bit_idx[0]_i_5_n_0\
    );
\bit_idx[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4001011501151554"
    )
        port map (
      I0 => selec_enable,
      I1 => ult_mascara(1),
      I2 => ult_mascara(0),
      I3 => ult_mascara(3),
      I4 => ult_mascara(4),
      I5 => ult_mascara(2),
      O => selec_enable_2
    );
\bit_idx[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \bit_idx_reg[2]\,
      I1 => selec_enable,
      I2 => \bit_idx[2]_i_6_n_0\,
      O => selec_enable_0
    );
\bit_idx[2]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFE"
    )
        port map (
      I0 => ult_mascara(4),
      I1 => ult_mascara(2),
      I2 => ult_mascara(3),
      I3 => ult_mascara(0),
      I4 => ult_mascara(1),
      O => \bit_idx[2]_i_6_n_0\
    );
\save_mascara[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5455555557575747"
    )
        port map (
      I0 => seleccion(5),
      I1 => seleccion(3),
      I2 => seleccion(2),
      I3 => seleccion(0),
      I4 => seleccion(1),
      I5 => seleccion(4),
      O => \^d\(0)
    );
\save_mascara[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5553455755574446"
    )
        port map (
      I0 => seleccion(5),
      I1 => seleccion(4),
      I2 => seleccion(2),
      I3 => seleccion(3),
      I4 => seleccion(1),
      I5 => seleccion(0),
      O => \^d\(1)
    );
\save_mascara[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5541444B5541044E"
    )
        port map (
      I0 => seleccion(5),
      I1 => seleccion(0),
      I2 => seleccion(2),
      I3 => seleccion(3),
      I4 => seleccion(4),
      I5 => seleccion(1),
      O => \^d\(2)
    );
\save_mascara[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000055FB000000"
    )
        port map (
      I0 => seleccion(2),
      I1 => seleccion(0),
      I2 => seleccion(1),
      I3 => seleccion(4),
      I4 => seleccion(3),
      I5 => seleccion(5),
      O => \^d\(3)
    );
\ult_mascara_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \ult_mascara_reg[0]_i_1_n_0\,
      G => \^e\(0),
      GE => '1',
      Q => ult_mascara(0)
    );
\ult_mascara_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FF"
    )
        port map (
      I0 => seleccion(4),
      I1 => seleccion(3),
      I2 => seleccion(2),
      I3 => seleccion(5),
      O => \ult_mascara_reg[0]_i_1_n_0\
    );
\ult_mascara_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^d\(0),
      G => \^e\(0),
      GE => '1',
      Q => ult_mascara(1)
    );
\ult_mascara_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^d\(1),
      G => \^e\(0),
      GE => '1',
      Q => ult_mascara(2)
    );
\ult_mascara_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^d\(2),
      G => \^e\(0),
      GE => '1',
      Q => ult_mascara(3)
    );
\ult_mascara_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^d\(3),
      G => \^e\(0),
      GE => '1',
      Q => ult_mascara(4)
    );
\ult_mascara_reg[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => selec_enable,
      I1 => rst,
      O => \^e\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_sistema_morse_0_0_ParpadeoMorse is
  port (
    led : out STD_LOGIC;
    mask_out : out STD_LOGIC_VECTOR ( 4 downto 0 );
    seleccion_1_sp_1 : out STD_LOGIC;
    seleccion_5_sp_1 : out STD_LOGIC;
    morse_out : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \seleccion[5]_0\ : out STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    selec_enable : in STD_LOGIC;
    \bit_idx_reg[1]_0\ : in STD_LOGIC;
    seleccion : in STD_LOGIC_VECTOR ( 5 downto 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \bit_idx_reg[2]_0\ : in STD_LOGIC;
    \bit_idx_reg[0]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_sistema_morse_0_0_ParpadeoMorse : entity is "ParpadeoMorse";
end design_1_sistema_morse_0_0_ParpadeoMorse;

architecture STRUCTURE of design_1_sistema_morse_0_0_ParpadeoMorse is
  signal \bit_idx[0]_i_1_n_0\ : STD_LOGIC;
  signal \bit_idx[0]_i_3_n_0\ : STD_LOGIC;
  signal \bit_idx[1]_i_1_n_0\ : STD_LOGIC;
  signal \bit_idx[1]_i_2_n_0\ : STD_LOGIC;
  signal \bit_idx[1]_i_4_n_0\ : STD_LOGIC;
  signal \bit_idx[1]_i_5_n_0\ : STD_LOGIC;
  signal \bit_idx[2]_i_1_n_0\ : STD_LOGIC;
  signal \bit_idx[2]_i_3_n_0\ : STD_LOGIC;
  signal \bit_idx[2]_i_4_n_0\ : STD_LOGIC;
  signal \bit_idx_reg_n_0_[0]\ : STD_LOGIC;
  signal \bit_idx_reg_n_0_[1]\ : STD_LOGIC;
  signal \bit_idx_reg_n_0_[2]\ : STD_LOGIC;
  signal \contador[0]_i_2_n_0\ : STD_LOGIC;
  signal \contador[0]_i_3_n_0\ : STD_LOGIC;
  signal \contador[0]_i_4_n_0\ : STD_LOGIC;
  signal \contador[0]_i_5_n_0\ : STD_LOGIC;
  signal \contador[0]_i_6_n_0\ : STD_LOGIC;
  signal \contador[12]_i_2_n_0\ : STD_LOGIC;
  signal \contador[12]_i_3_n_0\ : STD_LOGIC;
  signal \contador[12]_i_4_n_0\ : STD_LOGIC;
  signal \contador[12]_i_5_n_0\ : STD_LOGIC;
  signal \contador[16]_i_2_n_0\ : STD_LOGIC;
  signal \contador[16]_i_3_n_0\ : STD_LOGIC;
  signal \contador[16]_i_4_n_0\ : STD_LOGIC;
  signal \contador[16]_i_5_n_0\ : STD_LOGIC;
  signal \contador[20]_i_2_n_0\ : STD_LOGIC;
  signal \contador[20]_i_3_n_0\ : STD_LOGIC;
  signal \contador[20]_i_4_n_0\ : STD_LOGIC;
  signal \contador[20]_i_5_n_0\ : STD_LOGIC;
  signal \contador[24]_i_2_n_0\ : STD_LOGIC;
  signal \contador[24]_i_3_n_0\ : STD_LOGIC;
  signal \contador[24]_i_4_n_0\ : STD_LOGIC;
  signal \contador[24]_i_5_n_0\ : STD_LOGIC;
  signal \contador[28]_i_2_n_0\ : STD_LOGIC;
  signal \contador[28]_i_3_n_0\ : STD_LOGIC;
  signal \contador[28]_i_4_n_0\ : STD_LOGIC;
  signal \contador[28]_i_5_n_0\ : STD_LOGIC;
  signal \contador[4]_i_2_n_0\ : STD_LOGIC;
  signal \contador[4]_i_3_n_0\ : STD_LOGIC;
  signal \contador[4]_i_4_n_0\ : STD_LOGIC;
  signal \contador[4]_i_5_n_0\ : STD_LOGIC;
  signal \contador[8]_i_2_n_0\ : STD_LOGIC;
  signal \contador[8]_i_3_n_0\ : STD_LOGIC;
  signal \contador[8]_i_4_n_0\ : STD_LOGIC;
  signal \contador[8]_i_5_n_0\ : STD_LOGIC;
  signal contador_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \contador_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \contador_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \contador_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \contador_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \contador_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \contador_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \contador_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \contador_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \contador_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \contador_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \contador_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \contador_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \contador_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \contador_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \contador_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \contador_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \contador_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \contador_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \contador_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \contador_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \contador_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \contador_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \contador_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \contador_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \contador_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \contador_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \contador_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \contador_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \contador_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \contador_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \contador_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \contador_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \contador_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \contador_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \contador_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \contador_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \contador_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \contador_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \contador_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \contador_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \contador_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \contador_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \contador_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \contador_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \contador_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \contador_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \contador_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \contador_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \contador_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \contador_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \contador_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \contador_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \contador_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \contador_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \contador_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \contador_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \contador_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \contador_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \contador_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \contador_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \contador_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \contador_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \contador_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal count_limit : STD_LOGIC_VECTOR ( 26 to 26 );
  signal \count_limit[23]_i_1_n_0\ : STD_LOGIC;
  signal \count_limit[25]_i_1_n_0\ : STD_LOGIC;
  signal \count_limit[26]_i_1_n_0\ : STD_LOGIC;
  signal \count_limit[26]_i_3_n_0\ : STD_LOGIC;
  signal \count_limit_reg_n_0_[23]\ : STD_LOGIC;
  signal \count_limit_reg_n_0_[25]\ : STD_LOGIC;
  signal \count_limit_reg_n_0_[26]\ : STD_LOGIC;
  signal \^led\ : STD_LOGIC;
  signal led_on : STD_LOGIC;
  signal led_on_i_1_n_0 : STD_LOGIC;
  signal led_state_i_1_n_0 : STD_LOGIC;
  signal led_state_i_2_n_0 : STD_LOGIC;
  signal led_state_i_3_n_0 : STD_LOGIC;
  signal \^mask_out\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^morse_out\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_0_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal prev_flag : STD_LOGIC;
  signal selec_morse_out : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal seleccion_1_sn_1 : STD_LOGIC;
  signal seleccion_5_sn_1 : STD_LOGIC;
  signal sequence_done0 : STD_LOGIC;
  signal sequence_done1 : STD_LOGIC;
  signal \sequence_done1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \sequence_done1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \sequence_done1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \sequence_done1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \sequence_done1_carry__0_n_0\ : STD_LOGIC;
  signal \sequence_done1_carry__0_n_1\ : STD_LOGIC;
  signal \sequence_done1_carry__0_n_2\ : STD_LOGIC;
  signal \sequence_done1_carry__0_n_3\ : STD_LOGIC;
  signal \sequence_done1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \sequence_done1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \sequence_done1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \sequence_done1_carry__1_n_2\ : STD_LOGIC;
  signal \sequence_done1_carry__1_n_3\ : STD_LOGIC;
  signal sequence_done1_carry_i_1_n_0 : STD_LOGIC;
  signal sequence_done1_carry_i_2_n_0 : STD_LOGIC;
  signal sequence_done1_carry_i_3_n_0 : STD_LOGIC;
  signal sequence_done1_carry_i_4_n_0 : STD_LOGIC;
  signal sequence_done1_carry_n_0 : STD_LOGIC;
  signal sequence_done1_carry_n_1 : STD_LOGIC;
  signal sequence_done1_carry_n_2 : STD_LOGIC;
  signal sequence_done1_carry_n_3 : STD_LOGIC;
  signal sequence_done_inv_i_1_n_0 : STD_LOGIC;
  signal \NLW_contador_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_sequence_done1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sequence_done1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sequence_done1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_sequence_done1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bit_idx[2]_i_4\ : label is "soft_lutpair2";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \contador_reg[0]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \contador_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \contador_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \contador_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \contador_reg[24]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \contador_reg[28]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \contador_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \contador_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of g0_b4 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of led_state_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \save_mascara[0]_i_2\ : label is "soft_lutpair3";
begin
  led <= \^led\;
  mask_out(4 downto 0) <= \^mask_out\(4 downto 0);
  morse_out(4 downto 0) <= \^morse_out\(4 downto 0);
  seleccion_1_sp_1 <= seleccion_1_sn_1;
  seleccion_5_sp_1 <= seleccion_5_sn_1;
\bit_idx[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0F0EFF0F0F0E00"
    )
        port map (
      I0 => \bit_idx_reg[0]_0\,
      I1 => rst,
      I2 => \bit_idx[0]_i_3_n_0\,
      I3 => sequence_done0,
      I4 => \bit_idx[2]_i_4_n_0\,
      I5 => \bit_idx_reg_n_0_[0]\,
      O => \bit_idx[0]_i_1_n_0\
    );
\bit_idx[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4040000040400040"
    )
        port map (
      I0 => led_on,
      I1 => sequence_done1,
      I2 => p_0_in,
      I3 => \bit_idx_reg_n_0_[2]\,
      I4 => \bit_idx_reg_n_0_[0]\,
      I5 => \bit_idx_reg_n_0_[1]\,
      O => \bit_idx[0]_i_3_n_0\
    );
\bit_idx[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000031F0711F"
    )
        port map (
      I0 => seleccion(1),
      I1 => seleccion(4),
      I2 => seleccion(0),
      I3 => seleccion(3),
      I4 => seleccion(2),
      I5 => seleccion(5),
      O => seleccion_1_sn_1
    );
\bit_idx[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0AAFF0808AA00"
    )
        port map (
      I0 => \bit_idx[1]_i_2_n_0\,
      I1 => \bit_idx_reg_n_0_[2]\,
      I2 => \bit_idx_reg_n_0_[0]\,
      I3 => sequence_done0,
      I4 => \bit_idx[2]_i_4_n_0\,
      I5 => \bit_idx_reg_n_0_[1]\,
      O => \bit_idx[1]_i_1_n_0\
    );
\bit_idx[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF08FFFFFF08FF08"
    )
        port map (
      I0 => p_0_in,
      I1 => sequence_done1,
      I2 => led_on,
      I3 => rst,
      I4 => \bit_idx_reg[1]_0\,
      I5 => \bit_idx[1]_i_4_n_0\,
      O => \bit_idx[1]_i_2_n_0\
    );
\bit_idx[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFDDDDDDD5"
    )
        port map (
      I0 => selec_enable,
      I1 => seleccion(5),
      I2 => seleccion(2),
      I3 => seleccion(3),
      I4 => seleccion(4),
      I5 => \bit_idx[1]_i_5_n_0\,
      O => \bit_idx[1]_i_4_n_0\
    );
\bit_idx[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0501054555550444"
    )
        port map (
      I0 => seleccion(5),
      I1 => seleccion(0),
      I2 => seleccion(3),
      I3 => seleccion(2),
      I4 => seleccion(1),
      I5 => seleccion(4),
      O => \bit_idx[1]_i_5_n_0\
    );
\bit_idx[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0FDDFFF0F0DD00"
    )
        port map (
      I0 => \bit_idx_reg[2]_0\,
      I1 => rst,
      I2 => \bit_idx[2]_i_3_n_0\,
      I3 => sequence_done0,
      I4 => \bit_idx[2]_i_4_n_0\,
      I5 => \bit_idx_reg_n_0_[2]\,
      O => \bit_idx[2]_i_1_n_0\
    );
\bit_idx[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bit_idx_reg_n_0_[0]\,
      I1 => \bit_idx_reg_n_0_[1]\,
      O => \bit_idx[2]_i_3_n_0\
    );
\bit_idx[2]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => p_0_in,
      I1 => sequence_done1,
      I2 => led_on,
      O => \bit_idx[2]_i_4_n_0\
    );
\bit_idx[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1515151515551515"
    )
        port map (
      I0 => seleccion(5),
      I1 => seleccion(3),
      I2 => seleccion(4),
      I3 => seleccion(1),
      I4 => seleccion(0),
      I5 => seleccion(2),
      O => \seleccion[5]_0\
    );
\bit_idx_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \bit_idx[0]_i_1_n_0\,
      Q => \bit_idx_reg_n_0_[0]\
    );
\bit_idx_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \bit_idx[1]_i_1_n_0\,
      Q => \bit_idx_reg_n_0_[1]\
    );
\bit_idx_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \bit_idx[2]_i_1_n_0\,
      PRE => rst,
      Q => \bit_idx_reg_n_0_[2]\
    );
\contador[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => contador_reg(0),
      I1 => sequence_done1,
      O => \contador[0]_i_2_n_0\
    );
\contador[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => contador_reg(3),
      I1 => sequence_done1,
      O => \contador[0]_i_3_n_0\
    );
\contador[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => contador_reg(2),
      I1 => sequence_done1,
      O => \contador[0]_i_4_n_0\
    );
\contador[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => contador_reg(1),
      I1 => sequence_done1,
      O => \contador[0]_i_5_n_0\
    );
\contador[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => contador_reg(0),
      I1 => sequence_done1,
      O => \contador[0]_i_6_n_0\
    );
\contador[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => contador_reg(15),
      I1 => sequence_done1,
      O => \contador[12]_i_2_n_0\
    );
\contador[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => contador_reg(14),
      I1 => sequence_done1,
      O => \contador[12]_i_3_n_0\
    );
\contador[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => contador_reg(13),
      I1 => sequence_done1,
      O => \contador[12]_i_4_n_0\
    );
\contador[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => contador_reg(12),
      I1 => sequence_done1,
      O => \contador[12]_i_5_n_0\
    );
\contador[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => contador_reg(19),
      I1 => sequence_done1,
      O => \contador[16]_i_2_n_0\
    );
\contador[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => contador_reg(18),
      I1 => sequence_done1,
      O => \contador[16]_i_3_n_0\
    );
\contador[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => contador_reg(17),
      I1 => sequence_done1,
      O => \contador[16]_i_4_n_0\
    );
\contador[16]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => contador_reg(16),
      I1 => sequence_done1,
      O => \contador[16]_i_5_n_0\
    );
\contador[20]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => contador_reg(23),
      I1 => sequence_done1,
      O => \contador[20]_i_2_n_0\
    );
\contador[20]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => contador_reg(22),
      I1 => sequence_done1,
      O => \contador[20]_i_3_n_0\
    );
\contador[20]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => contador_reg(21),
      I1 => sequence_done1,
      O => \contador[20]_i_4_n_0\
    );
\contador[20]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => contador_reg(20),
      I1 => sequence_done1,
      O => \contador[20]_i_5_n_0\
    );
\contador[24]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => contador_reg(27),
      I1 => sequence_done1,
      O => \contador[24]_i_2_n_0\
    );
\contador[24]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => contador_reg(26),
      I1 => sequence_done1,
      O => \contador[24]_i_3_n_0\
    );
\contador[24]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => contador_reg(25),
      I1 => sequence_done1,
      O => \contador[24]_i_4_n_0\
    );
\contador[24]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => contador_reg(24),
      I1 => sequence_done1,
      O => \contador[24]_i_5_n_0\
    );
\contador[28]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => contador_reg(31),
      I1 => sequence_done1,
      O => \contador[28]_i_2_n_0\
    );
\contador[28]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => contador_reg(30),
      I1 => sequence_done1,
      O => \contador[28]_i_3_n_0\
    );
\contador[28]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => contador_reg(29),
      I1 => sequence_done1,
      O => \contador[28]_i_4_n_0\
    );
\contador[28]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => contador_reg(28),
      I1 => sequence_done1,
      O => \contador[28]_i_5_n_0\
    );
\contador[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => contador_reg(7),
      I1 => sequence_done1,
      O => \contador[4]_i_2_n_0\
    );
\contador[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => contador_reg(6),
      I1 => sequence_done1,
      O => \contador[4]_i_3_n_0\
    );
\contador[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => contador_reg(5),
      I1 => sequence_done1,
      O => \contador[4]_i_4_n_0\
    );
\contador[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => contador_reg(4),
      I1 => sequence_done1,
      O => \contador[4]_i_5_n_0\
    );
\contador[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => contador_reg(11),
      I1 => sequence_done1,
      O => \contador[8]_i_2_n_0\
    );
\contador[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => contador_reg(10),
      I1 => sequence_done1,
      O => \contador[8]_i_3_n_0\
    );
\contador[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => contador_reg(9),
      I1 => sequence_done1,
      O => \contador[8]_i_4_n_0\
    );
\contador[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => contador_reg(8),
      I1 => sequence_done1,
      O => \contador[8]_i_5_n_0\
    );
\contador_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in,
      CLR => rst,
      D => \contador_reg[0]_i_1_n_7\,
      Q => contador_reg(0)
    );
\contador_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \contador_reg[0]_i_1_n_0\,
      CO(2) => \contador_reg[0]_i_1_n_1\,
      CO(1) => \contador_reg[0]_i_1_n_2\,
      CO(0) => \contador_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \contador[0]_i_2_n_0\,
      O(3) => \contador_reg[0]_i_1_n_4\,
      O(2) => \contador_reg[0]_i_1_n_5\,
      O(1) => \contador_reg[0]_i_1_n_6\,
      O(0) => \contador_reg[0]_i_1_n_7\,
      S(3) => \contador[0]_i_3_n_0\,
      S(2) => \contador[0]_i_4_n_0\,
      S(1) => \contador[0]_i_5_n_0\,
      S(0) => \contador[0]_i_6_n_0\
    );
\contador_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in,
      CLR => rst,
      D => \contador_reg[8]_i_1_n_5\,
      Q => contador_reg(10)
    );
\contador_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in,
      CLR => rst,
      D => \contador_reg[8]_i_1_n_4\,
      Q => contador_reg(11)
    );
\contador_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in,
      CLR => rst,
      D => \contador_reg[12]_i_1_n_7\,
      Q => contador_reg(12)
    );
\contador_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \contador_reg[8]_i_1_n_0\,
      CO(3) => \contador_reg[12]_i_1_n_0\,
      CO(2) => \contador_reg[12]_i_1_n_1\,
      CO(1) => \contador_reg[12]_i_1_n_2\,
      CO(0) => \contador_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \contador_reg[12]_i_1_n_4\,
      O(2) => \contador_reg[12]_i_1_n_5\,
      O(1) => \contador_reg[12]_i_1_n_6\,
      O(0) => \contador_reg[12]_i_1_n_7\,
      S(3) => \contador[12]_i_2_n_0\,
      S(2) => \contador[12]_i_3_n_0\,
      S(1) => \contador[12]_i_4_n_0\,
      S(0) => \contador[12]_i_5_n_0\
    );
\contador_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in,
      CLR => rst,
      D => \contador_reg[12]_i_1_n_6\,
      Q => contador_reg(13)
    );
\contador_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in,
      CLR => rst,
      D => \contador_reg[12]_i_1_n_5\,
      Q => contador_reg(14)
    );
\contador_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in,
      CLR => rst,
      D => \contador_reg[12]_i_1_n_4\,
      Q => contador_reg(15)
    );
\contador_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in,
      CLR => rst,
      D => \contador_reg[16]_i_1_n_7\,
      Q => contador_reg(16)
    );
\contador_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \contador_reg[12]_i_1_n_0\,
      CO(3) => \contador_reg[16]_i_1_n_0\,
      CO(2) => \contador_reg[16]_i_1_n_1\,
      CO(1) => \contador_reg[16]_i_1_n_2\,
      CO(0) => \contador_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \contador_reg[16]_i_1_n_4\,
      O(2) => \contador_reg[16]_i_1_n_5\,
      O(1) => \contador_reg[16]_i_1_n_6\,
      O(0) => \contador_reg[16]_i_1_n_7\,
      S(3) => \contador[16]_i_2_n_0\,
      S(2) => \contador[16]_i_3_n_0\,
      S(1) => \contador[16]_i_4_n_0\,
      S(0) => \contador[16]_i_5_n_0\
    );
\contador_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in,
      CLR => rst,
      D => \contador_reg[16]_i_1_n_6\,
      Q => contador_reg(17)
    );
\contador_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in,
      CLR => rst,
      D => \contador_reg[16]_i_1_n_5\,
      Q => contador_reg(18)
    );
\contador_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in,
      CLR => rst,
      D => \contador_reg[16]_i_1_n_4\,
      Q => contador_reg(19)
    );
\contador_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in,
      CLR => rst,
      D => \contador_reg[0]_i_1_n_6\,
      Q => contador_reg(1)
    );
\contador_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in,
      CLR => rst,
      D => \contador_reg[20]_i_1_n_7\,
      Q => contador_reg(20)
    );
\contador_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \contador_reg[16]_i_1_n_0\,
      CO(3) => \contador_reg[20]_i_1_n_0\,
      CO(2) => \contador_reg[20]_i_1_n_1\,
      CO(1) => \contador_reg[20]_i_1_n_2\,
      CO(0) => \contador_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \contador_reg[20]_i_1_n_4\,
      O(2) => \contador_reg[20]_i_1_n_5\,
      O(1) => \contador_reg[20]_i_1_n_6\,
      O(0) => \contador_reg[20]_i_1_n_7\,
      S(3) => \contador[20]_i_2_n_0\,
      S(2) => \contador[20]_i_3_n_0\,
      S(1) => \contador[20]_i_4_n_0\,
      S(0) => \contador[20]_i_5_n_0\
    );
\contador_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in,
      CLR => rst,
      D => \contador_reg[20]_i_1_n_6\,
      Q => contador_reg(21)
    );
\contador_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in,
      CLR => rst,
      D => \contador_reg[20]_i_1_n_5\,
      Q => contador_reg(22)
    );
\contador_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in,
      CLR => rst,
      D => \contador_reg[20]_i_1_n_4\,
      Q => contador_reg(23)
    );
\contador_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in,
      CLR => rst,
      D => \contador_reg[24]_i_1_n_7\,
      Q => contador_reg(24)
    );
\contador_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \contador_reg[20]_i_1_n_0\,
      CO(3) => \contador_reg[24]_i_1_n_0\,
      CO(2) => \contador_reg[24]_i_1_n_1\,
      CO(1) => \contador_reg[24]_i_1_n_2\,
      CO(0) => \contador_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \contador_reg[24]_i_1_n_4\,
      O(2) => \contador_reg[24]_i_1_n_5\,
      O(1) => \contador_reg[24]_i_1_n_6\,
      O(0) => \contador_reg[24]_i_1_n_7\,
      S(3) => \contador[24]_i_2_n_0\,
      S(2) => \contador[24]_i_3_n_0\,
      S(1) => \contador[24]_i_4_n_0\,
      S(0) => \contador[24]_i_5_n_0\
    );
\contador_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in,
      CLR => rst,
      D => \contador_reg[24]_i_1_n_6\,
      Q => contador_reg(25)
    );
\contador_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in,
      CLR => rst,
      D => \contador_reg[24]_i_1_n_5\,
      Q => contador_reg(26)
    );
\contador_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in,
      CLR => rst,
      D => \contador_reg[24]_i_1_n_4\,
      Q => contador_reg(27)
    );
\contador_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in,
      CLR => rst,
      D => \contador_reg[28]_i_1_n_7\,
      Q => contador_reg(28)
    );
\contador_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \contador_reg[24]_i_1_n_0\,
      CO(3) => \NLW_contador_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \contador_reg[28]_i_1_n_1\,
      CO(1) => \contador_reg[28]_i_1_n_2\,
      CO(0) => \contador_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \contador_reg[28]_i_1_n_4\,
      O(2) => \contador_reg[28]_i_1_n_5\,
      O(1) => \contador_reg[28]_i_1_n_6\,
      O(0) => \contador_reg[28]_i_1_n_7\,
      S(3) => \contador[28]_i_2_n_0\,
      S(2) => \contador[28]_i_3_n_0\,
      S(1) => \contador[28]_i_4_n_0\,
      S(0) => \contador[28]_i_5_n_0\
    );
\contador_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in,
      CLR => rst,
      D => \contador_reg[28]_i_1_n_6\,
      Q => contador_reg(29)
    );
\contador_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in,
      CLR => rst,
      D => \contador_reg[0]_i_1_n_5\,
      Q => contador_reg(2)
    );
\contador_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in,
      CLR => rst,
      D => \contador_reg[28]_i_1_n_5\,
      Q => contador_reg(30)
    );
\contador_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in,
      CLR => rst,
      D => \contador_reg[28]_i_1_n_4\,
      Q => contador_reg(31)
    );
\contador_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in,
      CLR => rst,
      D => \contador_reg[0]_i_1_n_4\,
      Q => contador_reg(3)
    );
\contador_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in,
      CLR => rst,
      D => \contador_reg[4]_i_1_n_7\,
      Q => contador_reg(4)
    );
\contador_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \contador_reg[0]_i_1_n_0\,
      CO(3) => \contador_reg[4]_i_1_n_0\,
      CO(2) => \contador_reg[4]_i_1_n_1\,
      CO(1) => \contador_reg[4]_i_1_n_2\,
      CO(0) => \contador_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \contador_reg[4]_i_1_n_4\,
      O(2) => \contador_reg[4]_i_1_n_5\,
      O(1) => \contador_reg[4]_i_1_n_6\,
      O(0) => \contador_reg[4]_i_1_n_7\,
      S(3) => \contador[4]_i_2_n_0\,
      S(2) => \contador[4]_i_3_n_0\,
      S(1) => \contador[4]_i_4_n_0\,
      S(0) => \contador[4]_i_5_n_0\
    );
\contador_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in,
      CLR => rst,
      D => \contador_reg[4]_i_1_n_6\,
      Q => contador_reg(5)
    );
\contador_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in,
      CLR => rst,
      D => \contador_reg[4]_i_1_n_5\,
      Q => contador_reg(6)
    );
\contador_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in,
      CLR => rst,
      D => \contador_reg[4]_i_1_n_4\,
      Q => contador_reg(7)
    );
\contador_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in,
      CLR => rst,
      D => \contador_reg[8]_i_1_n_7\,
      Q => contador_reg(8)
    );
\contador_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \contador_reg[4]_i_1_n_0\,
      CO(3) => \contador_reg[8]_i_1_n_0\,
      CO(2) => \contador_reg[8]_i_1_n_1\,
      CO(1) => \contador_reg[8]_i_1_n_2\,
      CO(0) => \contador_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \contador_reg[8]_i_1_n_4\,
      O(2) => \contador_reg[8]_i_1_n_5\,
      O(1) => \contador_reg[8]_i_1_n_6\,
      O(0) => \contador_reg[8]_i_1_n_7\,
      S(3) => \contador[8]_i_2_n_0\,
      S(2) => \contador[8]_i_3_n_0\,
      S(1) => \contador[8]_i_4_n_0\,
      S(0) => \contador[8]_i_5_n_0\
    );
\contador_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in,
      CLR => rst,
      D => \contador_reg[8]_i_1_n_6\,
      Q => contador_reg(9)
    );
\count_limit[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2FFFFFFF0000D000"
    )
        port map (
      I0 => led_on,
      I1 => led_state_i_2_n_0,
      I2 => sequence_done1,
      I3 => p_0_in,
      I4 => count_limit(26),
      I5 => \count_limit_reg_n_0_[23]\,
      O => \count_limit[23]_i_1_n_0\
    );
\count_limit[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFD000"
    )
        port map (
      I0 => led_on,
      I1 => led_state_i_2_n_0,
      I2 => sequence_done1,
      I3 => p_0_in,
      I4 => \count_limit_reg_n_0_[25]\,
      O => \count_limit[25]_i_1_n_0\
    );
\count_limit[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF2FFFD0000000"
    )
        port map (
      I0 => led_on,
      I1 => led_state_i_2_n_0,
      I2 => sequence_done1,
      I3 => p_0_in,
      I4 => count_limit(26),
      I5 => \count_limit_reg_n_0_[26]\,
      O => \count_limit[26]_i_1_n_0\
    );
\count_limit[26]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C808"
    )
        port map (
      I0 => \count_limit[26]_i_3_n_0\,
      I1 => led_on,
      I2 => \bit_idx_reg_n_0_[2]\,
      I3 => \^morse_out\(4),
      O => count_limit(26)
    );
\count_limit[26]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^morse_out\(3),
      I1 => \^morse_out\(2),
      I2 => \bit_idx_reg_n_0_[1]\,
      I3 => \^morse_out\(1),
      I4 => \bit_idx_reg_n_0_[0]\,
      I5 => \^morse_out\(0),
      O => \count_limit[26]_i_3_n_0\
    );
\count_limit_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \count_limit[23]_i_1_n_0\,
      Q => \count_limit_reg_n_0_[23]\
    );
\count_limit_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \count_limit[25]_i_1_n_0\,
      Q => \count_limit_reg_n_0_[25]\
    );
\count_limit_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => \count_limit[26]_i_1_n_0\,
      Q => \count_limit_reg_n_0_[26]\
    );
g0_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007DF95601"
    )
        port map (
      I0 => seleccion(0),
      I1 => seleccion(1),
      I2 => seleccion(2),
      I3 => seleccion(3),
      I4 => seleccion(4),
      I5 => seleccion(5),
      O => selec_morse_out(0)
    );
g0_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000083D42F264"
    )
        port map (
      I0 => seleccion(0),
      I1 => seleccion(1),
      I2 => seleccion(2),
      I3 => seleccion(3),
      I4 => seleccion(4),
      I5 => seleccion(5),
      O => selec_morse_out(1)
    );
g0_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000C1F01CE48"
    )
        port map (
      I0 => seleccion(0),
      I1 => seleccion(1),
      I2 => seleccion(2),
      I3 => seleccion(3),
      I4 => seleccion(4),
      I5 => seleccion(5),
      O => selec_morse_out(2)
    );
g0_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000E0E810006"
    )
        port map (
      I0 => seleccion(0),
      I1 => seleccion(1),
      I2 => seleccion(2),
      I3 => seleccion(3),
      I4 => seleccion(4),
      I5 => seleccion(5),
      O => selec_morse_out(3)
    );
g0_b4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00031000"
    )
        port map (
      I0 => seleccion(0),
      I1 => seleccion(2),
      I2 => seleccion(3),
      I3 => seleccion(4),
      I4 => seleccion(5),
      O => selec_morse_out(4)
    );
led_on_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFFFFFFF040404"
    )
        port map (
      I0 => prev_flag,
      I1 => selec_enable,
      I2 => rst,
      I3 => p_0_in,
      I4 => sequence_done1,
      I5 => led_on,
      O => led_on_i_1_n_0
    );
led_on_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => led_on_i_1_n_0,
      PRE => rst,
      Q => led_on
    );
led_state_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFF8000"
    )
        port map (
      I0 => led_state_i_2_n_0,
      I1 => led_on,
      I2 => sequence_done1,
      I3 => p_0_in,
      I4 => \^led\,
      O => led_state_i_1_n_0
    );
led_state_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^mask_out\(4),
      I1 => \bit_idx_reg_n_0_[2]\,
      I2 => led_state_i_3_n_0,
      O => led_state_i_2_n_0
    );
led_state_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^mask_out\(3),
      I1 => \^mask_out\(2),
      I2 => \bit_idx_reg_n_0_[1]\,
      I3 => \^mask_out\(1),
      I4 => \bit_idx_reg_n_0_[0]\,
      I5 => \^mask_out\(0),
      O => led_state_i_3_n_0
    );
led_state_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => led_state_i_1_n_0,
      Q => \^led\
    );
prev_flag_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => E(0),
      Q => prev_flag
    );
\save_mascara[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => seleccion_5_sn_1,
      O => p_2_in
    );
\save_mascara[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
        port map (
      I0 => seleccion(5),
      I1 => seleccion(2),
      I2 => seleccion(3),
      I3 => seleccion(4),
      O => seleccion_5_sn_1
    );
\save_mascara_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sequence_done0,
      CLR => rst,
      D => p_2_in,
      Q => \^mask_out\(0)
    );
\save_mascara_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sequence_done0,
      CLR => rst,
      D => D(0),
      Q => \^mask_out\(1)
    );
\save_mascara_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sequence_done0,
      CLR => rst,
      D => D(1),
      Q => \^mask_out\(2)
    );
\save_mascara_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sequence_done0,
      CLR => rst,
      D => D(2),
      Q => \^mask_out\(3)
    );
\save_mascara_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sequence_done0,
      CLR => rst,
      D => D(3),
      Q => \^mask_out\(4)
    );
\save_morse[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => rst,
      I1 => selec_enable,
      I2 => prev_flag,
      O => sequence_done0
    );
\save_morse_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sequence_done0,
      CLR => rst,
      D => selec_morse_out(0),
      Q => \^morse_out\(0)
    );
\save_morse_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sequence_done0,
      CLR => rst,
      D => selec_morse_out(1),
      Q => \^morse_out\(1)
    );
\save_morse_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sequence_done0,
      CLR => rst,
      D => selec_morse_out(2),
      Q => \^morse_out\(2)
    );
\save_morse_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sequence_done0,
      CLR => rst,
      D => selec_morse_out(3),
      Q => \^morse_out\(3)
    );
\save_morse_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => sequence_done0,
      CLR => rst,
      D => selec_morse_out(4),
      Q => \^morse_out\(4)
    );
sequence_done1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => sequence_done1_carry_n_0,
      CO(2) => sequence_done1_carry_n_1,
      CO(1) => sequence_done1_carry_n_2,
      CO(0) => sequence_done1_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_sequence_done1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => sequence_done1_carry_i_1_n_0,
      S(2) => sequence_done1_carry_i_2_n_0,
      S(1) => sequence_done1_carry_i_3_n_0,
      S(0) => sequence_done1_carry_i_4_n_0
    );
\sequence_done1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => sequence_done1_carry_n_0,
      CO(3) => \sequence_done1_carry__0_n_0\,
      CO(2) => \sequence_done1_carry__0_n_1\,
      CO(1) => \sequence_done1_carry__0_n_2\,
      CO(0) => \sequence_done1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_sequence_done1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \sequence_done1_carry__0_i_1_n_0\,
      S(2) => \sequence_done1_carry__0_i_2_n_0\,
      S(1) => \sequence_done1_carry__0_i_3_n_0\,
      S(0) => \sequence_done1_carry__0_i_4_n_0\
    );
\sequence_done1_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => contador_reg(21),
      I1 => \count_limit_reg_n_0_[25]\,
      I2 => contador_reg(23),
      I3 => \count_limit_reg_n_0_[23]\,
      I4 => \count_limit_reg_n_0_[26]\,
      I5 => contador_reg(22),
      O => \sequence_done1_carry__0_i_1_n_0\
    );
\sequence_done1_carry__0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"41000041"
    )
        port map (
      I0 => contador_reg(18),
      I1 => contador_reg(19),
      I2 => \count_limit_reg_n_0_[23]\,
      I3 => \count_limit_reg_n_0_[25]\,
      I4 => contador_reg(20),
      O => \sequence_done1_carry__0_i_2_n_0\
    );
\sequence_done1_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => contador_reg(17),
      I1 => \count_limit_reg_n_0_[26]\,
      I2 => contador_reg(15),
      I3 => \count_limit_reg_n_0_[23]\,
      I4 => \count_limit_reg_n_0_[25]\,
      I5 => contador_reg(16),
      O => \sequence_done1_carry__0_i_3_n_0\
    );
\sequence_done1_carry__0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"81000081"
    )
        port map (
      I0 => \count_limit_reg_n_0_[26]\,
      I1 => contador_reg(12),
      I2 => contador_reg(14),
      I3 => contador_reg(13),
      I4 => \count_limit_reg_n_0_[23]\,
      O => \sequence_done1_carry__0_i_4_n_0\
    );
\sequence_done1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sequence_done1_carry__0_n_0\,
      CO(3) => \NLW_sequence_done1_carry__1_CO_UNCONNECTED\(3),
      CO(2) => sequence_done1,
      CO(1) => \sequence_done1_carry__1_n_2\,
      CO(0) => \sequence_done1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_sequence_done1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \sequence_done1_carry__1_i_1_n_0\,
      S(1) => \sequence_done1_carry__1_i_2_n_0\,
      S(0) => \sequence_done1_carry__1_i_3_n_0\
    );
\sequence_done1_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => contador_reg(31),
      I1 => contador_reg(30),
      O => \sequence_done1_carry__1_i_1_n_0\
    );
\sequence_done1_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => contador_reg(28),
      I1 => contador_reg(29),
      I2 => contador_reg(27),
      O => \sequence_done1_carry__1_i_2_n_0\
    );
\sequence_done1_carry__1_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"81000081"
    )
        port map (
      I0 => contador_reg(25),
      I1 => \count_limit_reg_n_0_[25]\,
      I2 => contador_reg(24),
      I3 => contador_reg(26),
      I4 => \count_limit_reg_n_0_[26]\,
      O => \sequence_done1_carry__1_i_3_n_0\
    );
sequence_done1_carry_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"41000041"
    )
        port map (
      I0 => contador_reg(9),
      I1 => contador_reg(10),
      I2 => \count_limit_reg_n_0_[23]\,
      I3 => \count_limit_reg_n_0_[25]\,
      I4 => contador_reg(11),
      O => sequence_done1_carry_i_1_n_0
    );
sequence_done1_carry_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"81000081"
    )
        port map (
      I0 => \count_limit_reg_n_0_[26]\,
      I1 => contador_reg(6),
      I2 => contador_reg(8),
      I3 => contador_reg(7),
      I4 => \count_limit_reg_n_0_[23]\,
      O => sequence_done1_carry_i_2_n_0
    );
sequence_done1_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0009"
    )
        port map (
      I0 => contador_reg(5),
      I1 => \count_limit_reg_n_0_[23]\,
      I2 => contador_reg(4),
      I3 => contador_reg(3),
      O => sequence_done1_carry_i_3_n_0
    );
sequence_done1_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => contador_reg(1),
      I1 => contador_reg(2),
      I2 => contador_reg(0),
      O => sequence_done1_carry_i_4_n_0
    );
sequence_done_inv_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCFFFFAAA8AAAA"
    )
        port map (
      I0 => sequence_done0,
      I1 => \bit_idx_reg_n_0_[2]\,
      I2 => \bit_idx_reg_n_0_[1]\,
      I3 => \bit_idx_reg_n_0_[0]\,
      I4 => \bit_idx[2]_i_4_n_0\,
      I5 => p_0_in,
      O => sequence_done_inv_i_1_n_0
    );
sequence_done_reg_inv: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => sequence_done_inv_i_1_n_0,
      PRE => rst,
      Q => p_0_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_sistema_morse_0_0_sistema_morse is
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
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_sistema_morse_0_0_sistema_morse : entity is "sistema_morse";
end design_1_sistema_morse_0_0_sistema_morse;

architecture STRUCTURE of design_1_sistema_morse_0_0_sistema_morse is
  signal codigo_morse_inst_n_1 : STD_LOGIC;
  signal codigo_morse_inst_n_2 : STD_LOGIC;
  signal codigo_morse_inst_n_4 : STD_LOGIC;
  signal codigo_morse_inst_n_7 : STD_LOGIC;
  signal count1 : STD_LOGIC;
  signal led_enable : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in1_in : STD_LOGIC;
  signal parpadeo_morse_inst_n_13 : STD_LOGIC;
  signal parpadeo_morse_inst_n_6 : STD_LOGIC;
  signal parpadeo_morse_inst_n_7 : STD_LOGIC;
begin
codigo_morse_inst: entity work.design_1_sistema_morse_0_0_CodigoMorse
     port map (
      D(3) => count1,
      D(2) => codigo_morse_inst_n_4,
      D(1) => p_0_in,
      D(0) => p_0_in1_in,
      E(0) => led_enable,
      \bit_idx_reg[0]\ => parpadeo_morse_inst_n_6,
      \bit_idx_reg[0]_0\ => parpadeo_morse_inst_n_7,
      \bit_idx_reg[2]\ => parpadeo_morse_inst_n_13,
      rst => rst,
      selec_enable => selec_enable,
      selec_enable_0 => codigo_morse_inst_n_1,
      selec_enable_1 => codigo_morse_inst_n_2,
      selec_enable_2 => codigo_morse_inst_n_7,
      seleccion(5 downto 0) => seleccion(5 downto 0)
    );
parpadeo_morse_inst: entity work.design_1_sistema_morse_0_0_ParpadeoMorse
     port map (
      D(3) => count1,
      D(2) => codigo_morse_inst_n_4,
      D(1) => p_0_in,
      D(0) => p_0_in1_in,
      E(0) => led_enable,
      \bit_idx_reg[0]_0\ => codigo_morse_inst_n_2,
      \bit_idx_reg[1]_0\ => codigo_morse_inst_n_7,
      \bit_idx_reg[2]_0\ => codigo_morse_inst_n_1,
      clk => clk,
      led => led,
      mask_out(4 downto 0) => mask_out(4 downto 0),
      morse_out(4 downto 0) => morse_out(4 downto 0),
      rst => rst,
      selec_enable => selec_enable,
      seleccion(5 downto 0) => seleccion(5 downto 0),
      \seleccion[5]_0\ => parpadeo_morse_inst_n_13,
      seleccion_1_sp_1 => parpadeo_morse_inst_n_6,
      seleccion_5_sp_1 => parpadeo_morse_inst_n_7
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_sistema_morse_0_0 is
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_sistema_morse_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_sistema_morse_0_0 : entity is "design_1_sistema_morse_0_0,sistema_morse,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_sistema_morse_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_sistema_morse_0_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of design_1_sistema_morse_0_0 : entity is "sistema_morse,Vivado 2020.1";
end design_1_sistema_morse_0_0;

architecture STRUCTURE of design_1_sistema_morse_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.design_1_sistema_morse_0_0_sistema_morse
     port map (
      clk => clk,
      led => led,
      mask_out(4 downto 0) => mask_out(4 downto 0),
      morse_out(4 downto 0) => morse_out(4 downto 0),
      ram_addr(3 downto 0) => ram_addr(3 downto 0),
      ram_data_mask(4 downto 0) => ram_data_mask(4 downto 0),
      ram_data_morse(4 downto 0) => ram_data_morse(4 downto 0),
      ram_enable => ram_enable,
      rst => rst,
      selec_enable => selec_enable,
      seleccion(5 downto 0) => seleccion(5 downto 0),
      write_in => write_in
    );
end STRUCTURE;
