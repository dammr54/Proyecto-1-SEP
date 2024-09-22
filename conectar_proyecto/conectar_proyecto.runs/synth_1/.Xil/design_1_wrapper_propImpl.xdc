set_property SRC_FILE_INFO {cfile:c:/Users/Diego/Desktop/Proyecto-1-SEP/conectar_proyecto/conectar_proyecto.srcs/sources_1/bd/design_1/ip/design_1_sistema_morse_0_0/design_1_sistema_morse_0_0/design_1_sistema_morse_0_0_in_context.xdc rfile:../../../conectar_proyecto.srcs/sources_1/bd/design_1/ip/design_1_sistema_morse_0_0/design_1_sistema_morse_0_0/design_1_sistema_morse_0_0_in_context.xdc id:1 order:EARLY scoped_inst:design_1_i/sistema_morse_0} [current_design]
set_property SRC_FILE_INFO {cfile:C:/Users/Diego/Desktop/Proyecto-1-SEP/conectar_proyecto/conectar_proyecto.srcs/constrs_1/imports/archivos_vivado/Zybo-Z7-Master.xdc rfile:../../../conectar_proyecto.srcs/constrs_1/imports/archivos_vivado/Zybo-Z7-Master.xdc id:2} [current_design]
current_instance design_1_i/sistema_morse_0
set_property src_info {type:SCOPED_XDC file:1 line:1 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 8.000 [get_ports -no_traverse {}]
current_instance
set_property src_info {type:XDC file:2 line:8 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN K17   IOSTANDARD LVCMOS33 } [get_ports { clk }]; #IO_L12P_T1_MRCC_35 Sch=sysclk
set_property src_info {type:XDC file:2 line:13 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN G15   IOSTANDARD LVCMOS33 } [get_ports { sw[0] }]; #IO_L19N_T3_VREF_35 Sch=sw[0]
set_property src_info {type:XDC file:2 line:14 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN P15   IOSTANDARD LVCMOS33 } [get_ports { sw[1] }]; #IO_L24P_T3_34 Sch=sw[1]
set_property src_info {type:XDC file:2 line:15 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN W13   IOSTANDARD LVCMOS33 } [get_ports { sw[2] }]; #IO_L4N_T0_34 Sch=sw[2]
set_property src_info {type:XDC file:2 line:16 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN T16   IOSTANDARD LVCMOS33 } [get_ports { sw[3] }]; #IO_L9P_T1_DQS_34 Sch=sw[3]
set_property src_info {type:XDC file:2 line:20 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN K18   IOSTANDARD LVCMOS33 } [get_ports { btn1 }]; #IO_L12N_T1_MRCC_35 Sch=btn[0]
set_property src_info {type:XDC file:2 line:21 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN P16   IOSTANDARD LVCMOS33 } [get_ports { btn2 }]; #IO_L24N_T3_34 Sch=btn[1]
set_property src_info {type:XDC file:2 line:22 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN K19   IOSTANDARD LVCMOS33 } [get_ports { btn3 }]; #IO_L10P_T1_AD11P_35 Sch=btn[2]
set_property src_info {type:XDC file:2 line:23 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN Y16   IOSTANDARD LVCMOS33 } [get_ports { rst }]; #IO_L7P_T1_34 Sch=btn[3]
set_property src_info {type:XDC file:2 line:27 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN M14   IOSTANDARD LVCMOS33 } [get_ports { led }]; #IO_L23P_T3_35 Sch=led[0]
set_property src_info {type:XDC file:2 line:39 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN V16   IOSTANDARD LVCMOS33 } [get_ports { red }]; #IO_L18P_T2_34 Sch=led6_r
set_property src_info {type:XDC file:2 line:40 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN F17   IOSTANDARD LVCMOS33 } [get_ports { green }]; #IO_L6N_T0_VREF_35 Sch=led6_g
set_property src_info {type:XDC file:2 line:41 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN M17   IOSTANDARD LVCMOS33 } [get_ports { blue }]; #IO_L8P_T1_AD10P_35 Sch=led6_b
