--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
--Date        : Sat Sep 21 23:42:08 2024
--Host        : DESKTOP-3GDKKRS running 64-bit major release  (build 9200)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
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
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    btn3 : in STD_LOGIC;
    btn1 : in STD_LOGIC;
    btn2 : in STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 3 downto 0 );
    led : out STD_LOGIC;
    red : out STD_LOGIC;
    green : out STD_LOGIC;
    blue : out STD_LOGIC
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      blue => blue,
      btn1 => btn1,
      btn2 => btn2,
      btn3 => btn3,
      clk => clk,
      green => green,
      led => led,
      red => red,
      rst => rst,
      sw(3 downto 0) => sw(3 downto 0)
    );
end STRUCTURE;
