#
# **********************************************************************************
#
# Builds the AXI Transactions Demo
#
# History:
#    2021/11/04 - WK - 2021.2 - updated with pseudo environment variable loader, general cleanup
#    2020/09/01 - LR  - update
#    2018/05/21 - WK  - 2018.1 - to use completer helper script
#   ***future***           - upgrade to use completer helper script\
#    2016/11/18 - WK - mod for 2016.3 directory structure
#    2016/07/01 - SC - Minor modificiation to pick the coe files from the
#                     support directory
#    2016/06/30 - WK - 2016.1
#    2016/02/10 - LR -
#    2015/12/10 - SC -GUI is now not started and the exit is not called
#                     allows build automation
#
# **********************************************************************************
#
set badEnv 0;
if {[catch {variable trainingPath $::env(TRAINING_PATH)} emsg]} {
   puts "ERROR!!! TRAINING_PATH environment variable not defined!";
    set badEnv 1;
} else {
   regsub -all {\\} $trainingPath / trainingPath;
}

# load the pseudo-environment variables
source -quiet $trainingPath/CustEdLoader.tcl; custEdLoad;

puts "Version 2021.2 - 2021/11/04";

# load the helper scripts
source $trainingPath/CustEdIP/completer_helper.tcl;

# enumerate the parameters of the project (used by completer_helper)
variable tcName          AXItransactions;
variable labName         AXItransactions;
variable projName        $labName;
variable demoOrLab       demo;
variable verbose         1;
variable blockDesignName "ATG";

# set the language use - not relevant, but needed for procs
use VHDL;
use ZCU104;

# build the table of steps
# projectCreate; blockDesignCreate; IPaddAndConnect; simFilesAdd;
set stepList {{projectCreate blockDesignCreate IPaddAndConnect simFilesAdd}}

# identify the APSoC's PS configuration
variable APSoCactivePeripheralList { CONFIG.PCW_USE_M_AXI_GP0             1
                                            CONFIG.PCW_UART1_PERIPHERAL_ENABLE   1
                                            CONFIG.PCW_EN_CLK0_PORT              1
                                         CONFIG.PCW_EN_RST0_PORT              1
                                          }
# identify the MPSoC's PS configuration
variable MPSoCactivePeripheralList { CONFIG.PSU__USE__M_AXI_GP2                 1
                                     CONFIG.PSU__USE__M_AXI_GP0                 1
                                     CONFIG.PSU__USE__S_AXI_GP2                 1
                                     CONFIG.PSU__MAXIGP2__DATA_WIDTH           64
                                     CONFIG.PSU__GPIO_EMIO__PERIPHERAL__ENABLE  1
                                              CONFIG.PSU__GPIO_EMIO__PERIPHERAL__IO     32
                                              CONFIG.PSU__FPGA_PL0_ENABLE                1
                                              CONFIG.PSU__USE__FABRIC__RST               1
                                              CONFIG.PSU__QSPI__PERIPHERAL__ENABLE       1
                                              CONFIG.PSU__UART0__PERIPHERAL__ENABLE      1
                                   }

# build the starting point
proc buildStartingPoint {} {
   variable verbose
   if {$verbose} { puts "AXI_transactions_demo_completer.buildStartingPoint"; }

   make 1

   markLastStep buildStartingPoint
}

proc simFilesAdd {} {
   variable trainingPath;
   variable verbose;
   if {$verbose} { puts "AXI_transactions_demo_completer.simFilesAdd"; }

   set_property SOURCE_SET sources_1 [get_filesets sim_1];
   import_files -fileset sim_1 -norecurse $trainingPath/AXItransactions/support/axi_traffic_gen_0_tb_top_behav.wcfg;
   import_files -fileset sim_1 -norecurse $trainingPath/AXItransactions/support/axi_traffic_gen_0_tb_top.v;
   update_compile_order -fileset sim_1;
}

# add the IP and connect_bd_intf_net
proc IPaddAndConnect {} {
   variable hostOS;
   variable trainingPath;
   variable tcName;
   variable blockDesignName;
   variable verbose;
   if {$verbose} { puts "AXI_transactions_demo_completer.IPaddAndConnect"; }

   # remove everything from the canvas
   delete_bd_objs [get_bd_intf_nets *] [get_bd_intf_nets *] [get_bd_cells *] [get_bd_ports *]

   # add the axi_traffic_gen
   create_bd_cell -type ip -vlnv [latestVersion xilinx.com:ip:axi_traffic_gen:2.0] axi_traffic_gen_0;

   # remove the coe files that were automatically generated when the ATG was instantiated
   foreach thisFile {mask.coe data.coe ctrl.coe addr.coe} {
      set thisPath $trainingPath/AXItransactions/support/$thisFile;    # is this the right place? or should it be under "demo"
      remove_files {$thisPath};
   }

   # add the COE files to the ATG
   set addrFile $trainingPath/$tcName/support/addr.coe;     # for AXI4-Lite and AXI4
   set dataFile $trainingPath/$tcName/support/data.coe;     # for AXI4-Lite and AXI4
   set maskFile $trainingPath/$tcName/support/mask.coe;     # for AXI4
   set ctrlFile $trainingPath/$tcName/support/ctrl.coe;     # for AXI4
   set_property -dict [list CONFIG.C_ATG_SYSTEM_INIT_DATA_MIF $dataFile] [get_bd_cells axi_traffic_gen_0];
   set_property -dict [list CONFIG.C_ATG_SYSTEM_INIT_MASK_MIF $maskFile] [get_bd_cells axi_traffic_gen_0];
   set_property -dict [list CONFIG.C_ATG_SYSTEM_INIT_ADDR_MIF $addrFile] [get_bd_cells axi_traffic_gen_0];
   set_property -dict [list CONFIG.C_ATG_SYSTEM_INIT_CTRL_MIF $ctrlFile] [get_bd_cells axi_traffic_gen_0];
   set_property -dict [list CONFIG.C_ATG_MODE {AXI4-Lite} CONFIG.C_ATG_SYSINIT_MODES {System_Test} ] [get_bd_cells axi_traffic_gen_0];
   set_property -dict [list CONFIG.C_ATG_SYSTEM_CMD_MAX_RETRY {2147483647}]                          [get_bd_cells axi_traffic_gen_0];

   # add the axi_bram_ctrl
   create_bd_cell -type ip -vlnv [latestVersion xilinx.com:ip:axi_bram_ctrl:4.0] axi_bram_ctrl_0

   # add the BRAM and configure
   apply_bd_automation -rule xilinx.com:bd_rule:bram_cntlr -config {BRAM "New Blk_Mem_Gen" }  [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTA]
   apply_bd_automation -rule xilinx.com:bd_rule:bram_cntlr -config {BRAM "/axi_bram_ctrl_0_bram" }  [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTB]
   set_property -dict [list CONFIG.PROTOCOL {AXI4LITE} CONFIG.ECC_TYPE {0}] [get_bd_cells axi_bram_ctrl_0]

   # create the extra pads
   create_bd_port -dir I -type clk -freq_hz 100000000 s_axi_aclk;
   create_bd_port -dir I -type rst s_axi_aresetn;
   create_bd_port -dir O -from 31 -to 0 status;
   create_bd_port -dir O done;

   # connect everything
   connect_bd_intf_net [get_bd_intf_pins axi_traffic_gen_0/M_AXI_LITE_CH1] [get_bd_intf_pins axi_bram_ctrl_0/S_AXI];
   connect_bd_net [get_bd_pins /axi_traffic_gen_0/s_axi_aclk] [get_bd_ports s_axi_aclk];
   connect_bd_net [get_bd_pins /axi_traffic_gen_0/s_axi_aresetn] [get_bd_ports s_axi_aresetn];
   connect_bd_net [get_bd_pins /axi_traffic_gen_0/status] [get_bd_ports status];
   connect_bd_net [get_bd_pins /axi_traffic_gen_0/done] [get_bd_ports done];
   connect_bd_net [get_bd_ports s_axi_aresetn] [get_bd_pins axi_bram_ctrl_0/s_axi_aresetn];
   connect_bd_net [get_bd_pins axi_bram_ctrl_0/s_axi_aclk] [get_bd_pins axi_traffic_gen_0/s_axi_aclk];

   # clean it up
   #regenerate_bd_layout -routing
   regenerate_bd_layout

   # assign the board address
   assign_bd_address;
   set_property range 64K [get_bd_addr_segs {axi_traffic_gen_0/Reg1/SEG_axi_bram_ctrl_0_Mem0}];

   # save and close
   save_bd_design;

   # the automatic top picker and wrapper generation doesn't seem to work the same way for this, so...
   make_wrapper -files [get_files $trainingPath/AXItransactions/demo/AXItransactions.srcs/sources_1/bd/ATG/ATG.bd] -top;
   add_files -norecurse $trainingPath/AXItransactions/demo/AXItransactions.srcs/sources_1/bd/ATG/hdl/ATG_wrapper.vhd
   update_compile_order -fileset sources_1;
   set_property top ATG_wrapper [current_fileset];

   # remember where we were
   markLastStep IPaddAndConnect;
}


proc simulationSourcesReset {} {
   variable trainingPath
   variable verbose
   if ($verbose) { puts "AXItransactions_completer.simulationSourcesReset" }

   reset_target all [get_files  $trainingPath/AXItransactions/demo/axi_traffic_gen_0_ex/axi_traffic_gen_0_ex.srcs/sources_1/ip/atg_lite_agent/atg_lite_agent.xci]
   export_ip_user_files -of_objects  [get_files  $trainingPath/AXItransactions/demo/axi_traffic_gen_0_ex/axi_traffic_gen_0_ex.srcs/sources_1/ip/atg_lite_agent/atg_lite_agent.xci] -sync -no_script -force -quiet

   markLastStep simulationSourcesReset
}

proc simulationRun {} {
   variable trainingPath
   variable verbose
   if ($verbose) { puts "AXItransactions_completer.simulationRun" }

   generate_target all [get_files $trainingPath/AXItransactions/demo/axi_traffic_gen_0_ex/axi_traffic_gen_0_ex.srcs/sources_1/ip/atg_lite_agent/atg_lite_agent.xci]
   export_ip_user_files -of_objects [get_files $trainingPath/AXItransactions/demo/axi_traffic_gen_0_ex/axi_traffic_gen_0_ex.srcs/sources_1/ip/atg_lite_agent/atg_lite_agent.xci] -no_script -sync -force -quiet
   export_simulation -of_objects [get_files $trainingPath/AXItransactions/demo/axi_traffic_gen_0_ex/axi_traffic_gen_0_ex.srcs/sources_1/ip/atg_lite_agent/atg_lite_agent.xci] -directory $trainingPath/training/AXItransactions/lab/axi_traffic_gen_0_ex/axi_traffic_gen_0_ex.ip_user_files/sim_scripts -ip_user_files_dir $trainingPath/training/AXItransactions/lab/axi_traffic_gen_0_ex/axi_traffic_gen_0_ex.ip_user_files -ipstatic_source_dir $trainingPath/training/AXItransactions/lab/axi_traffic_gen_0_ex/axi_traffic_gen_0_ex.ip_user_files/ipstatic -lib_map_path [list {modelsim=$trainingPath/training/AXItransactions/lab/axi_traffic_gen_0_ex/axi_traffic_gen_0_ex.cache/compile_simlib/modelsim} {questa=$trainingPath/training/AXItransactions/lab/axi_traffic_gen_0_ex/axi_traffic_gen_0_ex.cache/compile_simlib/questa} {riviera=$trainingPath/training/AXItransactions/lab/axi_traffic_gen_0_ex/axi_traffic_gen_0_ex.cache/compile_simlib/riviera} {activehdl=$trainingPath/training/AXItransactions/lab/axi_traffic_gen_0_ex/axi_traffic_gen_0_ex.cache/compile_simlib/activehdl}] -use_ip_compiled_libs -force -quiet
   create_fileset -blockset atg_lite_agent
   set_property top atg_lite_agent [get_fileset atg_lite_agent]
   move_files -fileset [get_fileset atg_lite_agent] [get_files -of_objects [get_fileset sources_1] $trainingPath/AXItransactions/demo/axi_traffic_gen_0_ex/axi_traffic_gen_0_ex.srcs/sources_1/ip/atg_lite_agent/atg_lite_agent.xci]
   launch_run atg_lite_agent_synth_1
   wait_on_run atg_lite_agent_synth_1
   launch_simulation
   open_wave_config $trainingPath/AXItransactions/demo/axi_traffic_gen_0_ex/axi_traffic_gen_0_ex.srcs/sim_1/imports/support/axi_traffic_gen_0_tb_top_behav.wcfg
   source axi_traffic_gen_0_tb_top.tcl
   run 15 us

   markLastStep simulationRun
}

# build the project by default
buildStartingPoint
puts "Done building the starting point"


#<copyright-disclaimer-start>
#  ************************************************************************************************************
#  * © Copyright 2015-2022 Xilinx, Inc. All rights reserved.                                                  *
#  * This file contains confidential and proprietary information of Xilinx, Inc. and                          *
#  * is protected under U.S. and international copyright and other intellectual property laws.                *
#  * DISCLAIMER                                                                                               *
#  * This disclaimer is not a license and does not grant any rights to the materials distributed              *
#  * herewith. Except as otherwise provided in a valid license issued to you by Xilinx, and to the            *
#  * maximum extent permitted by applicable law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS"               *
#  * AND WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES AND CONDITIONS, EXPRESS,                 *
#  * IMPLIED, OR STATUTORY, INCLUDING BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-INFRINGEMENT,     *
#  * OR FITNESS FOR ANY PARTICULAR PURPOSE; and (2) Xilinx shall not be liable (whether in contract or tort,  *
#  * including negligence, or under any other theory of liability) for any loss or damage of any kind or      *
#  * nature related to, arising under or in connection with these materials, including for any direct, or     *
#  * any indirect, special, incidental, or consequential loss or damage (including loss of data, profits,     *
#  * goodwill, or any type of loss or damage suffered as a result of any action brought by a third party)     *
#  * even if such damage or loss was reasonably foreseeable or Xilinx had been advised of the possibility     *
#  * of the same.                                                                                             *
#  * CRITICAL APPLICATIONS                                                                                    *
#  * Xilinx products are not designed or intended to be fail-safe, or for use in any application requiring    *
#  * fail-safe performance, such as life-support or safety devices or systems, Class III medical devices,     *
#  * nuclear facilities, applications related to the deployment of airbags, or any other applications that    *
#  * could lead to death, personal injury, or severe property or environmental damage (individually and       *
#  * collectively, "Critical Applications"). Customer assumes the sole risk and liability of any use of       *
#  * Xilinx products in Critical Applications, subject only to applicable laws and regulations governing      *
#  * limitations on product liability.                                                                        *
#  * THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS FILE AT ALL TIMES.                 *
#  *                                                                                                          *
#  ************************************************************************************************************
#<copyright-disclaimer-end>
