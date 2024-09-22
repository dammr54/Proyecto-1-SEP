-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Sat Sep 21 19:31:57 2024
-- Host        : DESKTOP-3GDKKRS running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_ControlUnit_0_0_sim_netlist.vhdl
-- Design      : design_1_ControlUnit_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ControlUnit is
  port (
    ram_data_morse : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ram_data_mask : out STD_LOGIC_VECTOR ( 4 downto 0 );
    write_in : out STD_LOGIC;
    ram_addr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    selec_morse : out STD_LOGIC_VECTOR ( 5 downto 0 );
    selec_enable : out STD_LOGIC;
    ram_enable : out STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 4 downto 0 );
    boton2 : in STD_LOGIC;
    btn_enable : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ControlUnit;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ControlUnit is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[6]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[7]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[7]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[7]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[6]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[7]\ : STD_LOGIC;
  signal btn_enable_prev : STD_LOGIC;
  signal \ram_addr_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \ram_data_morse_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal rising_edge_enable : STD_LOGIC;
  signal rising_edge_enable_i_1_n_0 : STD_LOGIC;
  signal \^selec_enable\ : STD_LOGIC;
  signal \^write_in\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_onehot_state[5]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_onehot_state[6]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_onehot_state[7]_i_2\ : label is "soft_lutpair2";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "write_morse:00001000,write_mask:00010000,select_mode:00000010,send_to_morse:01000000,read_ram:00100000,write_addr:00000100,idle:00000001,execute:10000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "write_morse:00001000,write_mask:00010000,select_mode:00000010,send_to_morse:01000000,read_ram:00100000,write_addr:00000100,idle:00000001,execute:10000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "write_morse:00001000,write_mask:00010000,select_mode:00000010,send_to_morse:01000000,read_ram:00100000,write_addr:00000100,idle:00000001,execute:10000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "write_morse:00001000,write_mask:00010000,select_mode:00000010,send_to_morse:01000000,read_ram:00100000,write_addr:00000100,idle:00000001,execute:10000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "write_morse:00001000,write_mask:00010000,select_mode:00000010,send_to_morse:01000000,read_ram:00100000,write_addr:00000100,idle:00000001,execute:10000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[5]\ : label is "write_morse:00001000,write_mask:00010000,select_mode:00000010,send_to_morse:01000000,read_ram:00100000,write_addr:00000100,idle:00000001,execute:10000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[6]\ : label is "write_morse:00001000,write_mask:00010000,select_mode:00000010,send_to_morse:01000000,read_ram:00100000,write_addr:00000100,idle:00000001,execute:10000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[7]\ : label is "write_morse:00001000,write_mask:00010000,select_mode:00000010,send_to_morse:01000000,read_ram:00100000,write_addr:00000100,idle:00000001,execute:10000000";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \ram_addr_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \ram_addr_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \ram_addr_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \ram_addr_reg[3]\ : label is "LD";
  attribute SOFT_HLUTNM of \ram_addr_reg[3]_i_1\ : label is "soft_lutpair3";
  attribute XILINX_LEGACY_PRIM of \ram_data_mask_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \ram_data_mask_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \ram_data_mask_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \ram_data_mask_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \ram_data_mask_reg[4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \ram_data_morse_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \ram_data_morse_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \ram_data_morse_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \ram_data_morse_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \ram_data_morse_reg[4]\ : label is "LD";
  attribute SOFT_HLUTNM of \ram_data_morse_reg[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of ram_enable_INST_0 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of selec_enable_INST_0 : label is "soft_lutpair4";
  attribute XILINX_LEGACY_PRIM of \selec_morse_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \selec_morse_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \selec_morse_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \selec_morse_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \selec_morse_reg[4]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \selec_morse_reg[5]\ : label is "LD";
  attribute SOFT_HLUTNM of write_in_INST_0 : label is "soft_lutpair4";
begin
  selec_enable <= \^selec_enable\;
  write_in <= \^write_in\;
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8000"
    )
        port map (
      I0 => D(1),
      I1 => D(0),
      I2 => rising_edge_enable,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      I4 => \FSM_onehot_state[0]_i_2_n_0\,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCCFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[7]\,
      I2 => \FSM_onehot_state_reg_n_0_[6]\,
      I3 => \FSM_onehot_state_reg_n_0_[4]\,
      I4 => \FSM_onehot_state_reg_n_0_[5]\,
      I5 => rising_edge_enable,
      O => \FSM_onehot_state[0]_i_2_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => rising_edge_enable,
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => D(1),
      I2 => D(0),
      I3 => rising_edge_enable,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => rising_edge_enable,
      I2 => D(0),
      I3 => D(1),
      O => \FSM_onehot_state[5]_i_1_n_0\
    );
\FSM_onehot_state[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => D(1),
      I2 => rising_edge_enable,
      I3 => D(0),
      O => \FSM_onehot_state[6]_i_1_n_0\
    );
\FSM_onehot_state[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFEFEEE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => \FSM_onehot_state[7]_i_3_n_0\,
      I3 => \FSM_onehot_state_reg_n_0_[7]\,
      I4 => rising_edge_enable,
      O => \FSM_onehot_state[7]_i_1_n_0\
    );
\FSM_onehot_state[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
        port map (
      I0 => rising_edge_enable,
      I1 => \FSM_onehot_state_reg_n_0_[6]\,
      I2 => \FSM_onehot_state_reg_n_0_[4]\,
      I3 => \FSM_onehot_state_reg_n_0_[5]\,
      O => \FSM_onehot_state[7]_i_2_n_0\
    );
\FSM_onehot_state[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[7]\,
      I1 => \FSM_onehot_state_reg_n_0_[6]\,
      I2 => \FSM_onehot_state_reg_n_0_[3]\,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      I4 => \FSM_onehot_state_reg_n_0_[5]\,
      I5 => \FSM_onehot_state_reg_n_0_[4]\,
      O => \FSM_onehot_state[7]_i_3_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state[7]_i_1_n_0\,
      D => \FSM_onehot_state[0]_i_1_n_0\,
      PRE => rst,
      Q => \FSM_onehot_state_reg_n_0_[0]\
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state[7]_i_1_n_0\,
      CLR => rst,
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[1]\
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state[7]_i_1_n_0\,
      CLR => rst,
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[2]\
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state[7]_i_1_n_0\,
      CLR => rst,
      D => \FSM_onehot_state_reg_n_0_[2]\,
      Q => \FSM_onehot_state_reg_n_0_[3]\
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state[7]_i_1_n_0\,
      CLR => rst,
      D => \FSM_onehot_state_reg_n_0_[3]\,
      Q => \FSM_onehot_state_reg_n_0_[4]\
    );
\FSM_onehot_state_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state[7]_i_1_n_0\,
      CLR => rst,
      D => \FSM_onehot_state[5]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[5]\
    );
\FSM_onehot_state_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state[7]_i_1_n_0\,
      CLR => rst,
      D => \FSM_onehot_state[6]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[6]\
    );
\FSM_onehot_state_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_state[7]_i_1_n_0\,
      CLR => rst,
      D => \FSM_onehot_state[7]_i_2_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[7]\
    );
btn_enable_prev_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => btn_enable,
      Q => btn_enable_prev,
      R => '0'
    );
\ram_addr_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(0),
      G => \ram_addr_reg[3]_i_1_n_0\,
      GE => '1',
      Q => ram_addr(0)
    );
\ram_addr_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(1),
      G => \ram_addr_reg[3]_i_1_n_0\,
      GE => '1',
      Q => ram_addr(1)
    );
\ram_addr_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(2),
      G => \ram_addr_reg[3]_i_1_n_0\,
      GE => '1',
      Q => ram_addr(2)
    );
\ram_addr_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(3),
      G => \ram_addr_reg[3]_i_1_n_0\,
      GE => '1',
      Q => ram_addr(3)
    );
\ram_addr_reg[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => rising_edge_enable,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \ram_addr_reg[3]_i_1_n_0\
    );
\ram_data_mask_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(0),
      G => \^write_in\,
      GE => '1',
      Q => ram_data_mask(0)
    );
\ram_data_mask_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(1),
      G => \^write_in\,
      GE => '1',
      Q => ram_data_mask(1)
    );
\ram_data_mask_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(2),
      G => \^write_in\,
      GE => '1',
      Q => ram_data_mask(2)
    );
\ram_data_mask_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(3),
      G => \^write_in\,
      GE => '1',
      Q => ram_data_mask(3)
    );
\ram_data_mask_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(4),
      G => \^write_in\,
      GE => '1',
      Q => ram_data_mask(4)
    );
\ram_data_morse_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(0),
      G => \ram_data_morse_reg[4]_i_1_n_0\,
      GE => '1',
      Q => ram_data_morse(0)
    );
\ram_data_morse_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(1),
      G => \ram_data_morse_reg[4]_i_1_n_0\,
      GE => '1',
      Q => ram_data_morse(1)
    );
\ram_data_morse_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(2),
      G => \ram_data_morse_reg[4]_i_1_n_0\,
      GE => '1',
      Q => ram_data_morse(2)
    );
\ram_data_morse_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(3),
      G => \ram_data_morse_reg[4]_i_1_n_0\,
      GE => '1',
      Q => ram_data_morse(3)
    );
\ram_data_morse_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(4),
      G => \ram_data_morse_reg[4]_i_1_n_0\,
      GE => '1',
      Q => ram_data_morse(4)
    );
\ram_data_morse_reg[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => rising_edge_enable,
      O => \ram_data_morse_reg[4]_i_1_n_0\
    );
ram_enable_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => rising_edge_enable,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => \FSM_onehot_state_reg_n_0_[4]\,
      O => ram_enable
    );
rising_edge_enable_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => btn_enable,
      I1 => btn_enable_prev,
      O => rising_edge_enable_i_1_n_0
    );
rising_edge_enable_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rising_edge_enable_i_1_n_0,
      Q => rising_edge_enable,
      R => '0'
    );
selec_enable_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[6]\,
      I1 => rising_edge_enable,
      O => \^selec_enable\
    );
\selec_morse_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(0),
      G => \^selec_enable\,
      GE => '1',
      Q => selec_morse(0)
    );
\selec_morse_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(1),
      G => \^selec_enable\,
      GE => '1',
      Q => selec_morse(1)
    );
\selec_morse_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(2),
      G => \^selec_enable\,
      GE => '1',
      Q => selec_morse(2)
    );
\selec_morse_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(3),
      G => \^selec_enable\,
      GE => '1',
      Q => selec_morse(3)
    );
\selec_morse_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => D(4),
      G => \^selec_enable\,
      GE => '1',
      Q => selec_morse(4)
    );
\selec_morse_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => boton2,
      G => \^selec_enable\,
      GE => '1',
      Q => selec_morse(5)
    );
write_in_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[4]\,
      I1 => rising_edge_enable,
      O => \^write_in\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
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
    selec_morse : out STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_ControlUnit_0_0,ControlUnit,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "ControlUnit,Vivado 2020.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ControlUnit
     port map (
      D(4) => boton1,
      D(3 downto 0) => switches(3 downto 0),
      boton2 => boton2,
      btn_enable => btn_enable,
      clk => clk,
      ram_addr(3 downto 0) => ram_addr(3 downto 0),
      ram_data_mask(4 downto 0) => ram_data_mask(4 downto 0),
      ram_data_morse(4 downto 0) => ram_data_morse(4 downto 0),
      ram_enable => ram_enable,
      rst => rst,
      selec_enable => selec_enable,
      selec_morse(5 downto 0) => selec_morse(5 downto 0),
      write_in => write_in
    );
end STRUCTURE;
