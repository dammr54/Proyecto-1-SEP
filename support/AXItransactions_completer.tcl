#
# **********************************************************************************
#
# AXItransactions_completer.tcl
#
# History:
#    2021/11/04 - WK - 2021.2 - updated with pseudo environment variable loader, general cleanup
#    2021/08/27 - WK - 2021.1
#    2017/09/28 - WK - 2017.3
#    2016/10/12 - SC - initial Version based on ArchZyq7000_Overview
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

# identify this TopicCluster
variable TCname AXItransactions;

# load the helper script
source $trainingPath/CustEdIP/completer_helper.tcl;

# enumerate the parameters of the project (used by completer_helper)
variable tcName          AXItransactions;
variable labName         ip_placeholder;     # note: there will be two project created in this lab, this refers to the first one...
variable projName        $labName;
variable demoOrLab       lab;
variable verbose         1;
variable blockDesignName blkDsgn;

# build the table of steps
# NOTE: this script must be reloaded when the ATG example design is loaded. From there, one can continue with the coeFileRemove, etc.
#debug use zcu104; use Verilog; projectCreate; languageSet; ATGadd; IPexampleDesignOpen; ip_placeholder_access; ip_placeholder_projectClose; coeFileRemove; coeFileAdd; simFilesAdd; behavioralSimulatio;n simulationClose; outputProductsReset;
set stepList {{projectCreate languageSet}\
              {ATGadd IPexampleDesignOpen ip_placeholder_access ip_placeholder_projectClose coeFileRemove coeHexFileAdd simFilesAdd behavioralSimulation simulationClose }\
              {outputProductsReset   behavioralSimulation simulationClose simulationReRun}
             }

# identify the PS's configuration
variable APSoCactivePeripheralList { CONFIG.PCW_USE_M_AXI_GP0             1                         
                                     CONFIG.PCW_UART1_PERIPHERAL_ENABLE   1
                                     CONFIG.PCW_EN_CLK0_PORT              1
                                     CONFIG.PCW_EN_RST0_PORT              1
                                   } 
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

# 1-1 open Vivado
# 1-2, 1-3, 1-4 create the project including setting the platform - covered by projectCreate
use ZCU104;       # default for this testing purpose, if used in instructions, the platform will be set by the user

# 1-5 languageSet
proc languageSet {} { 
   variable verbose;
   if {$verbose} { puts "AXItransactions_completer.tcl:languageSet"; }
   use Verilog;
   markLastStep languageSet;
}

#
# 2-1 create the ATG IP
proc ATGadd {} {
   variable trainingPath;
   variable verbose;
   if {$verbose} { puts "in AXItransaction_completer:ATGadd"; }

   
   # add in the ATG and use the default settings
   create_ip -name axi_traffic_gen -vendor xilinx.com -library ip -version 3.0 -module_name axi_traffic_gen_0
   generate_target {instantiation_template} [get_files $trainingPath/AXItransactions/lab/ip_placeholder.srcs/sources_1/ip/axi_traffic_gen_0/axi_traffic_gen_0.xci]
   update_compile_order -fileset sources_1;
   
   markLastStep ATGadd;
}

# 2-2 open the example design
proc IPexampleDesignOpen {} {
   variable trainingPath
   variable verbose
   if {$verbose} { puts "in AXItransaction_completer:IPexampleDesignOpen" }
   
   open_example_project -force -dir $trainingPath/AXItransactions/lab [get_ips  axi_traffic_gen_0];
   start_gui;
   #source $trainingPath/AXItransactions/lab/ip_placeholder.gen/sources_1/ip/axi_traffic_gen_0/axi_traffic_gen_0_ex.tcl -notrace;
   #update_compile_order -fileset sources_1

   markLastStep IPexampleDesignOpen;
}

# 2-3 return to the ip_placeholder project
proc ip_placeholder_access {} {
   variable verbose
   if {$verbose} { puts "in AXItransaction_completer:ip_placeholder_access" }
   # since this script is running from the ip_placeholder project, we don't have to do anything here
   
   markLastStep ip_placeholder_access;
}

# 2-4 close the ip_placeholder session
proc ip_placeholder_projectClose {} {
   variable verbose
   if {$verbose} { puts "in AXItransaction_completer:ip_placeholder_projectClose" }
   exit;
   markLastStep ip_placeholder_projectClose;
}
   
#
# 2-6 remove the binary COE files
proc coeFileRemove {} {
   variable trainingPath
   variable verbose
   if {$verbose} { puts "in AXItransaction_completer:coeFileRemove" }
   
   # Delete addr.coe, 2-7-4 thru 2-7-5
   export_ip_user_files -of_objects  [get_files $trainingPath/lab/AXItransactions/axi_traffic_gen_0_ex/imports/addr.coe] -no_script -reset -force -quiet;
   remove_files  $trainingPath/AXItransactions/lab/axi_traffic_gen_0_ex/imports/addr.coe;
   
   # Delete ctrl.coe, data.coe, and mask.coe, 2-7-6 thru 2-7-8
   export_ip_user_files -of_objects  [get_files $trainingPath/lab/AXItransactions/axi_traffic_gen_0_ex/imports/ctrl.coe] -no_script -reset -force -quiet;
   export_ip_user_files -of_objects  [get_files $trainingPath/lab/AXItransactions/axi_traffic_gen_0_ex/imports/data.coe] -no_script -reset -force -quiet;
   export_ip_user_files -of_objects  [get_files $trainingPath/lab/AXItransactions/axi_traffic_gen_0_ex/imports/mask.coe] -no_script -reset -force -quiet;
   remove_files  {$trainingPath/AXItransactions/lab/axi_traffic_gen_0_ex/imports/ctrl.coe $trainingPath/AXItransactions/lab/axi_traffic_gen_0_ex/imports/data.coe $trainingPath/AXItransactions/lab/axi_traffic_gen_0_ex/imports/mask.coe};
   
   markLastStep coeFileUpdate;   
}

#
# 2-7 coeHexFileAdd
proc coeHexFileAdd {} {
   variable trainingPath
   variable verbose
   if {$verbose} { puts "in AXItransaction_completer:coeHexFileAdd" }
   
   # Add hex COE files, 2-7-2 thru 2-7-5
   set_property -dict [list CONFIG.C_ATG_SYSTEM_INIT_ADDR_MIF $trainingPath/AXItransactions/support/addr.coe] [get_ips atg_lite_agent]
   set_property -dict [list CONFIG.C_ATG_SYSTEM_INIT_DATA_MIF $trainingPath/AXItransactions/support/data.coe] [get_ips atg_lite_agent]
   set_property -dict [list CONFIG.C_ATG_SYSTEM_INIT_MASK_MIF $trainingPath/AXItransactions/support/mask.coe] [get_ips atg_lite_agent]
   set_property -dict [list CONFIG.C_ATG_SYSTEM_INIT_CTRL_MIF $trainingPath/AXItransactions/support/ctrl.coe] [get_ips atg_lite_agent]

   markLastStep coeHexFileAdd
}

#
# ********** simFilesAdd 2-8
proc simFilesAdd {} {
   variable trainingPath
   variable verbose
   if {$verbose} { puts "in AXItransaction_completer:simFilesAdd" }
   
   # Add simulation files, 2-8-1 thru 2-8-10
   set_property SOURCE_SET sources_1 [get_filesets sim_1]
   import_files -fileset sim_1 -norecurse $trainingPath/AXItransactions/support/axi_traffic_gen_0_tb_top_behav.wcfg
   
   markLastStep simFilesAdd
}
   
#
# ********** outputProductsReset 3-1
proc outputProductsReset {} {
   variable trainingPath
   variable verbose
   if {$verbose} { puts "in AXItransaction_completer:outputProductsReset" }

   # Reset output products, 3-1-3
   set_property SOURCE_SET sources_1 [get_filesets sim_1]
   import_files -fileset sim_1 -norecurse $trainingPath/AXItransactions/support/axi_traffic_gen_0_tb_top_behav.wcfg
   reset_target all [get_files  $trainingPath/AXItransactions/lab/axi_traffic_gen_0_ex/axi_traffic_gen_0_ex.srcs/sources_1/ip/atg_lite_agent/atg_lite_agent.xci]
   export_ip_user_files -of_objects  [get_files  $trainingPath/AXItransactions/lab/axi_traffic_gen_0_ex/axi_traffic_gen_0_ex.srcs/sources_1/ip/atg_lite_agent/atg_lite_agent.xci] -sync -no_script -force -quiet
   
   markLastStep outputProductsReset
}

#
# ********** behavioralSimulation 3-2
proc behavioralSimulation {} {
   variable trainingPath
   variable verbose
   if {$verbose} { puts "in AXItransaction_completer:behavioralSimulation" }
   
   # Run behavioral simulation, 3-2-1 
   launch_simulation
      "xvlog --incr --relax -prj axi_traffic_gen_0_tb_top_vlog.prj"
       "xvhdl --incr --relax -prj axi_traffic_gen_0_tb_top_vhdl.prj"    
   open_wave_config $trainingPath/AXItransactions/lab/axi_traffic_gen_0_ex/axi_traffic_gen_0_ex.srcs/sim_1/imports/support/axi_traffic_gen_0_tb_top_behav.wcfg
   source axi_traffic_gen_0_tb_top.tcl
   
   # Run simulation for 15 us, 3-2-2 thru 3-2-3
   run 15 us
      
   markLastStep behavioralSimulation
}

#
# ********** simulationClose 3-4
proc simulationClose {} {
   variable verbose
   if {$verbose == 1} { puts "in AXItransaction_completer:simulationClose" }

   #Close simulation, 3-4-1
   close_sim
   
   markLastStep simulationClose
}

      
#***No Tcl output is generated when the data.coe file is modified and saved in tasks 3-5-4 & 3-5-5. I am mentioning it here in case you are going to create "makes" for this lab***


#
# ********* simulationReRun 3-6
proc simulationReRun {} {
   variable trainingPath
   variable verbose
   if {$verbose == 1} { puts "in AXItransaction_completer:simulationReRun" }

   # Reset output products, 3-6-1
   reset_target all [get_files  $trainingPath/AXItransactions/lab/axi_traffic_gen_0_ex/axi_traffic_gen_0_ex.srcs/sources_1/ip/atg_lite_agent/atg_lite_agent.xci]
   export_ip_user_files -of_objects  [get_files  $trainingPath/AXItransactions/lab/axi_traffic_gen_0_ex/axi_traffic_gen_0_ex.srcs/sources_1/ip/atg_lite_agent/atg_lite_agent.xci] -sync -no_script -force -quiet


   # Rerun simulation, 3-6-1 
   generate_target all [get_files $trainingPath/AXItransactions/lab/axi_traffic_gen_0_ex/axi_traffic_gen_0_ex.srcs/sources_1/ip/atg_lite_agent/atg_lite_agent.xci]
   export_ip_user_files -of_objects [get_files $trainingPath/AXItransactions/lab/axi_traffic_gen_0_ex/axi_traffic_gen_0_ex.srcs/sources_1/ip/atg_lite_agent/atg_lite_agent.xci] -no_script -sync -force -quiet
   export_simulation -of_objects [get_files $trainingPath/AXItransactions/lab/axi_traffic_gen_0_ex/axi_traffic_gen_0_ex.srcs/sources_1/ip/atg_lite_agent/atg_lite_agent.xci] -directory $trainingPath/training/AXItransactions/axi_traffic_gen_0_ex/axi_traffic_gen_0_ex.ip_user_files/sim_scripts -ip_user_files_dir $trainingPath/training/AXItransactions/axi_traffic_gen_0_ex/axi_traffic_gen_0_ex.ip_user_files -ipstatic_source_dir $trainingPath/training/AXItransactions/axi_traffic_gen_0_ex/axi_traffic_gen_0_ex.ip_user_files/ipstatic -lib_map_path [list {modelsim=$trainingPath/training/AXItransactions/axi_traffic_gen_0_ex/axi_traffic_gen_0_ex.cache/compile_simlib/modelsim} {questa=$trainingPath/training/AXItransactions/axi_traffic_gen_0_ex/axi_traffic_gen_0_ex.cache/compile_simlib/questa} {riviera=$trainingPath/training/AXItransactions/axi_traffic_gen_0_ex/axi_traffic_gen_0_ex.cache/compile_simlib/riviera} {activehdl=$trainingPath/training/AXItransactions/axi_traffic_gen_0_ex/axi_traffic_gen_0_ex.cache/compile_simlib/activehdl}] -use_ip_compiled_libs -force -quiet
   create_fileset -blockset atg_lite_agent
   set_property top atg_lite_agent [get_fileset atg_lite_agent]
   move_files -fileset [get_fileset atg_lite_agent] [get_files -of_objects [get_fileset sources_1] $trainingPath/AXItransactions/lab/axi_traffic_gen_0_ex/axi_traffic_gen_0_ex.srcs/sources_1/ip/atg_lite_agent/atg_lite_agent.xci]
   launch_run atg_lite_agent_synth_1
   wait_on_run atg_lite_agent_synth_1
    launch_simulation
   open_wave_config $trainingPath/AXItransactions/lab/axi_traffic_gen_0_ex/axi_traffic_gen_0_ex.srcs/sim_1/imports/support/axi_traffic_gen_0_tb_top_behav.wcfg
   source axi_traffic_gen_0_tb_top.tcl
   
   markLastStep simulationReRun
}
      
      

#<copyright-disclaimer-start>
#  ************************************************************************************************************
#  * © Copyright 2016-2022 Xilinx, Inc. All rights reserved.                                                  *
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
