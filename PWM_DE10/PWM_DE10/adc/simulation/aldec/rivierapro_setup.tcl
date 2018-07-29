
# (C) 2001-2018 Altera Corporation. All rights reserved.
# Your use of Altera Corporation's design tools, logic functions and 
# other software and tools, and its AMPP partner logic functions, and 
# any output files any of the foregoing (including device programming 
# or simulation files), and any associated documentation or information 
# are expressly subject to the terms and conditions of the Altera 
# Program License Subscription Agreement, Altera MegaCore Function 
# License Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by Altera 
# or its authorized distributors. Please refer to the applicable 
# agreement for further details.

# ACDS 15.0 150 win32 2018.06.27.12:50:30
# ----------------------------------------
# Auto-generated simulation script rivierapro_setup.tcl
# ----------------------------------------
# This script can be used to simulate the following IP:
#     adc
# To create a top-level simulation script which compiles other
# IP, and manages other system issues, copy the following template
# and adapt it to your needs:
# 
# # Start of template
# # If the copied and modified template file is "aldec.do", run it as:
# #   vsim -c -do aldec.do
# #
# # Source the generated sim script
# source rivierapro_setup.tcl
# # Compile eda/sim_lib contents first
# dev_com
# # Override the top-level name (so that elab is useful)
# set TOP_LEVEL_NAME top
# # Compile the standalone IP.
# com
# # Compile the user top-level
# vlog -sv2k5 ../../top.sv
# # Elaborate the design.
# elab
# # Run the simulation
# run
# # Report success to the shell
# exit -code 0
# # End of template
# ----------------------------------------
# If adc is one of several IP cores in your
# Quartus project, you can generate a simulation script
# suitable for inclusion in your top-level simulation
# script by running the following command line:
# 
# ip-setup-simulation --quartus-project=<quartus project>
# 
# ip-setup-simulation will discover the Altera IP
# within the Quartus project, and generate a unified
# script which supports all the Altera IP within the design.
# ----------------------------------------

# ----------------------------------------
# Initialize variables
if ![info exists SYSTEM_INSTANCE_NAME] { 
  set SYSTEM_INSTANCE_NAME ""
} elseif { ![ string match "" $SYSTEM_INSTANCE_NAME ] } { 
  set SYSTEM_INSTANCE_NAME "/$SYSTEM_INSTANCE_NAME"
}

if ![info exists TOP_LEVEL_NAME] { 
  set TOP_LEVEL_NAME "adc"
}

if ![info exists QSYS_SIMDIR] { 
  set QSYS_SIMDIR "./../"
}

if ![info exists QUARTUS_INSTALL_DIR] { 
  set QUARTUS_INSTALL_DIR "C:/altera/quartus/"
}

if ![info exists USER_DEFINED_COMPILE_OPTIONS] { 
  set USER_DEFINED_COMPILE_OPTIONS ""
}
if ![info exists USER_DEFINED_ELAB_OPTIONS] { 
  set USER_DEFINED_ELAB_OPTIONS ""
}

# ----------------------------------------
# Initialize simulation properties - DO NOT MODIFY!
set ELAB_OPTIONS ""
set SIM_OPTIONS ""
if ![ string match "*-64 vsim*" [ vsim -version ] ] {
} else {
}

set Aldec "Riviera"
if { [ string match "*Active-HDL*" [ vsim -version ] ] } {
  set Aldec "Active"
}

if { [ string match "Active" $Aldec ] } {
  scripterconf -tcl
  createdesign "$TOP_LEVEL_NAME"  "."
  opendesign "$TOP_LEVEL_NAME"
}

# ----------------------------------------
# Copy ROM/RAM files to simulation directory
alias file_copy {
  echo "\[exec\] file_copy"
  file copy -force $QSYS_SIMDIR/submodules/adc_onchip_mem.hex ./
  file copy -force $QSYS_SIMDIR/submodules/adc_cpu_bht_ram.dat ./
  file copy -force $QSYS_SIMDIR/submodules/adc_cpu_bht_ram.hex ./
  file copy -force $QSYS_SIMDIR/submodules/adc_cpu_bht_ram.mif ./
  file copy -force $QSYS_SIMDIR/submodules/adc_cpu_dc_tag_ram.dat ./
  file copy -force $QSYS_SIMDIR/submodules/adc_cpu_dc_tag_ram.hex ./
  file copy -force $QSYS_SIMDIR/submodules/adc_cpu_dc_tag_ram.mif ./
  file copy -force $QSYS_SIMDIR/submodules/adc_cpu_ic_tag_ram.dat ./
  file copy -force $QSYS_SIMDIR/submodules/adc_cpu_ic_tag_ram.hex ./
  file copy -force $QSYS_SIMDIR/submodules/adc_cpu_ic_tag_ram.mif ./
  file copy -force $QSYS_SIMDIR/submodules/adc_cpu_ociram_default_contents.dat ./
  file copy -force $QSYS_SIMDIR/submodules/adc_cpu_ociram_default_contents.hex ./
  file copy -force $QSYS_SIMDIR/submodules/adc_cpu_ociram_default_contents.mif ./
  file copy -force $QSYS_SIMDIR/submodules/adc_cpu_rf_ram_a.dat ./
  file copy -force $QSYS_SIMDIR/submodules/adc_cpu_rf_ram_a.hex ./
  file copy -force $QSYS_SIMDIR/submodules/adc_cpu_rf_ram_a.mif ./
  file copy -force $QSYS_SIMDIR/submodules/adc_cpu_rf_ram_b.dat ./
  file copy -force $QSYS_SIMDIR/submodules/adc_cpu_rf_ram_b.hex ./
  file copy -force $QSYS_SIMDIR/submodules/adc_cpu_rf_ram_b.mif ./
}

# ----------------------------------------
# Create compilation libraries
proc ensure_lib { lib } { if ![file isdirectory $lib] { vlib $lib } }
ensure_lib      ./libraries     
ensure_lib      ./libraries/work
vmap       work ./libraries/work
ensure_lib                       ./libraries/altera_ver           
vmap       altera_ver            ./libraries/altera_ver           
ensure_lib                       ./libraries/lpm_ver              
vmap       lpm_ver               ./libraries/lpm_ver              
ensure_lib                       ./libraries/sgate_ver            
vmap       sgate_ver             ./libraries/sgate_ver            
ensure_lib                       ./libraries/altera_mf_ver        
vmap       altera_mf_ver         ./libraries/altera_mf_ver        
ensure_lib                       ./libraries/altera_lnsim_ver     
vmap       altera_lnsim_ver      ./libraries/altera_lnsim_ver     
ensure_lib                       ./libraries/cyclonev_ver         
vmap       cyclonev_ver          ./libraries/cyclonev_ver         
ensure_lib                       ./libraries/cyclonev_hssi_ver    
vmap       cyclonev_hssi_ver     ./libraries/cyclonev_hssi_ver    
ensure_lib                       ./libraries/cyclonev_pcie_hip_ver
vmap       cyclonev_pcie_hip_ver ./libraries/cyclonev_pcie_hip_ver
ensure_lib                       ./libraries/altera               
vmap       altera                ./libraries/altera               
ensure_lib                       ./libraries/lpm                  
vmap       lpm                   ./libraries/lpm                  
ensure_lib                       ./libraries/sgate                
vmap       sgate                 ./libraries/sgate                
ensure_lib                       ./libraries/altera_mf            
vmap       altera_mf             ./libraries/altera_mf            
ensure_lib                       ./libraries/altera_lnsim         
vmap       altera_lnsim          ./libraries/altera_lnsim         
ensure_lib                       ./libraries/cyclonev             
vmap       cyclonev              ./libraries/cyclonev             
ensure_lib                              ./libraries/error_adapter_0             
vmap       error_adapter_0              ./libraries/error_adapter_0             
ensure_lib                              ./libraries/avalon_st_adapter           
vmap       avalon_st_adapter            ./libraries/avalon_st_adapter           
ensure_lib                              ./libraries/rsp_mux                     
vmap       rsp_mux                      ./libraries/rsp_mux                     
ensure_lib                              ./libraries/rsp_demux                   
vmap       rsp_demux                    ./libraries/rsp_demux                   
ensure_lib                              ./libraries/cmd_mux                     
vmap       cmd_mux                      ./libraries/cmd_mux                     
ensure_lib                              ./libraries/cmd_demux                   
vmap       cmd_demux                    ./libraries/cmd_demux                   
ensure_lib                              ./libraries/cpu_data_master_limiter     
vmap       cpu_data_master_limiter      ./libraries/cpu_data_master_limiter     
ensure_lib                              ./libraries/router_002                  
vmap       router_002                   ./libraries/router_002                  
ensure_lib                              ./libraries/router                      
vmap       router                       ./libraries/router                      
ensure_lib                              ./libraries/ADC_adc_slave_agent_rsp_fifo
vmap       ADC_adc_slave_agent_rsp_fifo ./libraries/ADC_adc_slave_agent_rsp_fifo
ensure_lib                              ./libraries/ADC_adc_slave_agent         
vmap       ADC_adc_slave_agent          ./libraries/ADC_adc_slave_agent         
ensure_lib                              ./libraries/cpu_data_master_agent       
vmap       cpu_data_master_agent        ./libraries/cpu_data_master_agent       
ensure_lib                              ./libraries/ADC_adc_slave_translator    
vmap       ADC_adc_slave_translator     ./libraries/ADC_adc_slave_translator    
ensure_lib                              ./libraries/cpu_data_master_translator  
vmap       cpu_data_master_translator   ./libraries/cpu_data_master_translator  
ensure_lib                              ./libraries/rst_controller              
vmap       rst_controller               ./libraries/rst_controller              
ensure_lib                              ./libraries/irq_mapper                  
vmap       irq_mapper                   ./libraries/irq_mapper                  
ensure_lib                              ./libraries/mm_interconnect_0           
vmap       mm_interconnect_0            ./libraries/mm_interconnect_0           
ensure_lib                              ./libraries/onchip_mem                  
vmap       onchip_mem                   ./libraries/onchip_mem                  
ensure_lib                              ./libraries/cpu                         
vmap       cpu                          ./libraries/cpu                         
ensure_lib                              ./libraries/LEDs                        
vmap       LEDs                         ./libraries/LEDs                        

# ----------------------------------------
# Compile device library files
alias dev_com {
  echo "\[exec\] dev_com"
  eval vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v"                    -work altera_ver           
  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v"                             -work lpm_ver              
  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v"                                -work sgate_ver            
  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v"                            -work altera_mf_ver        
  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv"                        -work altera_lnsim_ver     
  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/aldec/cyclonev_atoms_ncrypt.v"          -work cyclonev_ver         
  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/aldec/cyclonev_hmi_atoms_ncrypt.v"      -work cyclonev_ver         
  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_atoms.v"                       -work cyclonev_ver         
  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/aldec/cyclonev_hssi_atoms_ncrypt.v"     -work cyclonev_hssi_ver    
  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_hssi_atoms.v"                  -work cyclonev_hssi_ver    
  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/aldec/cyclonev_pcie_hip_atoms_ncrypt.v" -work cyclonev_pcie_hip_ver
  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_pcie_hip_atoms.v"              -work cyclonev_pcie_hip_ver
  vcom $USER_DEFINED_COMPILE_OPTIONS       "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_syn_attributes.vhd"              -work altera               
  vcom $USER_DEFINED_COMPILE_OPTIONS       "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_standard_functions.vhd"          -work altera               
  vcom $USER_DEFINED_COMPILE_OPTIONS       "$QUARTUS_INSTALL_DIR/eda/sim_lib/alt_dspbuilder_package.vhd"             -work altera               
  vcom $USER_DEFINED_COMPILE_OPTIONS       "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_europa_support_lib.vhd"          -work altera               
  vcom $USER_DEFINED_COMPILE_OPTIONS       "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives_components.vhd"       -work altera               
  vcom $USER_DEFINED_COMPILE_OPTIONS       "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.vhd"                  -work altera               
  vcom $USER_DEFINED_COMPILE_OPTIONS       "$QUARTUS_INSTALL_DIR/eda/sim_lib/220pack.vhd"                            -work lpm                  
  vcom $USER_DEFINED_COMPILE_OPTIONS       "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.vhd"                           -work lpm                  
  vcom $USER_DEFINED_COMPILE_OPTIONS       "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate_pack.vhd"                         -work sgate                
  vcom $USER_DEFINED_COMPILE_OPTIONS       "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.vhd"                              -work sgate                
  vcom $USER_DEFINED_COMPILE_OPTIONS       "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf_components.vhd"               -work altera_mf            
  vcom $USER_DEFINED_COMPILE_OPTIONS       "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.vhd"                          -work altera_mf            
  vcom $USER_DEFINED_COMPILE_OPTIONS       "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim_components.vhd"            -work altera_lnsim         
  vcom $USER_DEFINED_COMPILE_OPTIONS       "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_atoms.vhd"                     -work cyclonev             
  vcom $USER_DEFINED_COMPILE_OPTIONS       "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_components.vhd"                -work cyclonev             
}

# ----------------------------------------
# Compile the design files in correct order
alias com {
  echo "\[exec\] com"
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/submodules/adc_mm_interconnect_0_avalon_st_adapter_error_adapter_0.vho" -work error_adapter_0             
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/submodules/adc_mm_interconnect_0_avalon_st_adapter.vhd"                 -work avalon_st_adapter           
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/submodules/adc_mm_interconnect_0_rsp_mux.vho"                           -work rsp_mux                     
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/submodules/adc_mm_interconnect_0_rsp_demux.vho"                         -work rsp_demux                   
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/submodules/adc_mm_interconnect_0_cmd_mux.vho"                           -work cmd_mux                     
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/submodules/adc_mm_interconnect_0_cmd_demux.vho"                         -work cmd_demux                   
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/aldec/altera_merlin_traffic_limiter.sv"                      -work cpu_data_master_limiter     
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/aldec/altera_avalon_st_pipeline_base.v"                      -work cpu_data_master_limiter     
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/submodules/adc_mm_interconnect_0_router_002.vho"                        -work router_002                  
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/submodules/adc_mm_interconnect_0_router.vho"                            -work router                      
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/submodules/adc_mm_interconnect_0_ADC_adc_slave_agent_rsp_fifo.vho"      -work ADC_adc_slave_agent_rsp_fifo
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/aldec/altera_merlin_slave_agent.sv"                          -work ADC_adc_slave_agent         
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/aldec/altera_merlin_burst_uncompressor.sv"                   -work ADC_adc_slave_agent         
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/aldec/altera_merlin_master_agent.sv"                         -work cpu_data_master_agent       
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/aldec/altera_merlin_slave_translator.sv"                     -work ADC_adc_slave_translator    
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/aldec/altera_merlin_master_translator.sv"                    -work cpu_data_master_translator  
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_reset_controller.v"                             -work rst_controller              
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/aldec/altera_reset_synchronizer.v"                           -work rst_controller              
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/submodules/adc_irq_mapper.vho"                                          -work irq_mapper                  
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/submodules/adc_mm_interconnect_0.vhd"                                   -work mm_interconnect_0           
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/submodules/adc_mm_interconnect_0_adc_adc_slave_translator.vhd"          -work mm_interconnect_0           
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/submodules/adc_mm_interconnect_0_cpu_jtag_debug_module_translator.vhd"  -work mm_interconnect_0           
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/submodules/adc_mm_interconnect_0_onchip_mem_s1_translator.vhd"          -work mm_interconnect_0           
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/submodules/adc_mm_interconnect_0_leds_s1_translator.vhd"                -work mm_interconnect_0           
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/submodules/adc_mm_interconnect_0_cpu_data_master_translator.vhd"        -work mm_interconnect_0           
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/submodules/adc_mm_interconnect_0_cpu_instruction_master_translator.vhd" -work mm_interconnect_0           
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/submodules/adc_onchip_mem.vhd"                                          -work onchip_mem                  
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/submodules/adc_cpu.vho"                                                 -work cpu                         
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/submodules/adc_cpu_jtag_debug_module_sysclk.vhd"                        -work cpu                         
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/submodules/adc_cpu_jtag_debug_module_tck.vhd"                           -work cpu                         
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/submodules/adc_cpu_jtag_debug_module_wrapper.vhd"                       -work cpu                         
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/submodules/adc_cpu_mult_cell.vhd"                                       -work cpu                         
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/submodules/adc_cpu_oci_test_bench.vhd"                                  -work cpu                         
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/submodules/adc_cpu_test_bench.vhd"                                      -work cpu                         
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/submodules/adc_LEDs.vhd"                                                -work LEDs                        
  eval  vcom $USER_DEFINED_COMPILE_OPTIONS       "$QSYS_SIMDIR/adc.vhd"                                                                                                  
}

# ----------------------------------------
# Elaborate top level design
alias elab {
  echo "\[exec\] elab"
  eval vsim +access +r -t ps $ELAB_OPTIONS -L work -L error_adapter_0 -L avalon_st_adapter -L rsp_mux -L rsp_demux -L cmd_mux -L cmd_demux -L cpu_data_master_limiter -L router_002 -L router -L ADC_adc_slave_agent_rsp_fifo -L ADC_adc_slave_agent -L cpu_data_master_agent -L ADC_adc_slave_translator -L cpu_data_master_translator -L rst_controller -L irq_mapper -L mm_interconnect_0 -L onchip_mem -L cpu -L LEDs -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev $TOP_LEVEL_NAME
}

# ----------------------------------------
# Elaborate the top level design with -dbg -O2 option
alias elab_debug {
  echo "\[exec\] elab_debug"
  eval vsim -dbg -O2 +access +r -t ps $ELAB_OPTIONS -L work -L error_adapter_0 -L avalon_st_adapter -L rsp_mux -L rsp_demux -L cmd_mux -L cmd_demux -L cpu_data_master_limiter -L router_002 -L router -L ADC_adc_slave_agent_rsp_fifo -L ADC_adc_slave_agent -L cpu_data_master_agent -L ADC_adc_slave_translator -L cpu_data_master_translator -L rst_controller -L irq_mapper -L mm_interconnect_0 -L onchip_mem -L cpu -L LEDs -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev $TOP_LEVEL_NAME
}

# ----------------------------------------
# Compile all the design files and elaborate the top level design
alias ld "
  dev_com
  com
  elab
"

# ----------------------------------------
# Compile all the design files and elaborate the top level design with -dbg -O2
alias ld_debug "
  dev_com
  com
  elab_debug
"

# ----------------------------------------
# Print out user commmand line aliases
alias h {
  echo "List Of Command Line Aliases"
  echo
  echo "file_copy                     -- Copy ROM/RAM files to simulation directory"
  echo
  echo "dev_com                       -- Compile device library files"
  echo
  echo "com                           -- Compile the design files in correct order"
  echo
  echo "elab                          -- Elaborate top level design"
  echo
  echo "elab_debug                    -- Elaborate the top level design with -dbg -O2 option"
  echo
  echo "ld                            -- Compile all the design files and elaborate the top level design"
  echo
  echo "ld_debug                      -- Compile all the design files and elaborate the top level design with -dbg -O2"
  echo
  echo 
  echo
  echo "List Of Variables"
  echo
  echo "TOP_LEVEL_NAME                -- Top level module name."
  echo "                                 For most designs, this should be overridden"
  echo "                                 to enable the elab/elab_debug aliases."
  echo
  echo "SYSTEM_INSTANCE_NAME          -- Instantiated system module name inside top level module."
  echo
  echo "QSYS_SIMDIR                   -- Qsys base simulation directory."
  echo
  echo "QUARTUS_INSTALL_DIR           -- Quartus installation directory."
  echo
  echo "USER_DEFINED_COMPILE_OPTIONS  -- User-defined compile options, added to com/dev_com aliases."
  echo
  echo "USER_DEFINED_ELAB_OPTIONS     -- User-defined elaboration options, added to elab/elab_debug aliases."
}
file_copy
h
