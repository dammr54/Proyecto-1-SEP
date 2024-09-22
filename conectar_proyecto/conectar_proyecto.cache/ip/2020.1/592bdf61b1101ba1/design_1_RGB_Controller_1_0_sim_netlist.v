// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Sat Sep 21 23:42:37 2024
// Host        : DESKTOP-3GDKKRS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_RGB_Controller_1_0_sim_netlist.v
// Design      : design_1_RGB_Controller_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RGB_Controller
   (red,
    green,
    blue,
    clk,
    estado);
  output red;
  output green;
  output blue;
  input clk;
  input [3:0]estado;

  wire blue;
  wire blue__0_n_0;
  wire clk;
  wire [3:0]estado;
  wire green;
  wire green__0_n_0;
  wire red;
  wire red__0_n_0;

  LUT4 #(
    .INIT(16'h5440)) 
    blue__0
       (.I0(estado[3]),
        .I1(estado[0]),
        .I2(estado[2]),
        .I3(estado[1]),
        .O(blue__0_n_0));
  FDRE blue_reg
       (.C(clk),
        .CE(1'b1),
        .D(blue__0_n_0),
        .Q(blue),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h5110)) 
    green__0
       (.I0(estado[3]),
        .I1(estado[0]),
        .I2(estado[2]),
        .I3(estado[1]),
        .O(green__0_n_0));
  FDRE green_reg
       (.C(clk),
        .CE(1'b1),
        .D(green__0_n_0),
        .Q(green),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h4504)) 
    red__0
       (.I0(estado[3]),
        .I1(estado[0]),
        .I2(estado[1]),
        .I3(estado[2]),
        .O(red__0_n_0));
  FDRE red_reg
       (.C(clk),
        .CE(1'b1),
        .D(red__0_n_0),
        .Q(red),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_RGB_Controller_1_0,RGB_Controller,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "RGB_Controller,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    estado,
    red,
    green,
    blue);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_clk_0, INSERT_VIP 0" *) input clk;
  input [3:0]estado;
  output red;
  output green;
  output blue;

  wire blue;
  wire clk;
  wire [3:0]estado;
  wire green;
  wire red;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RGB_Controller U0
       (.blue(blue),
        .clk(clk),
        .estado(estado),
        .green(green),
        .red(red));
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
