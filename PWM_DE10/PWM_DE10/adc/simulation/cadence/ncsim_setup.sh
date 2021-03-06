
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
# ncsim - auto-generated simulation script

# ----------------------------------------
# This script can be used to simulate the following IP:
#     adc
# To create a top-level simulation script which compiles other
# IP, and manages other system issues, copy the following template
# and adapt it to your needs:
# 
# # Start of template
# # If the copied and modified template file is "ncsim.sh", run it as:
# #   ./ncsim.sh
# #
# # Do the file copy, dev_com and com steps
# source ncsim_setup.sh \
# SKIP_ELAB=1 \
# SKIP_SIM=1
# 
# # Compile the top level module
# ncvlog -sv "$QSYS_SIMDIR/../top.sv"
# 
# # Do the elaboration and sim steps
# # Override the top-level name
# # Override the user-defined sim options, so the simulation
# # runs forever (until $finish()).
# source ncsim_setup.sh \
# SKIP_FILE_COPY=1 \
# SKIP_DEV_COM=1 \
# SKIP_COM=1 \
# TOP_LEVEL_NAME=top \
# USER_DEFINED_SIM_OPTIONS=""
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
# ACDS 15.0 150 win32 2018.06.27.12:50:30
# ----------------------------------------
# initialize variables
TOP_LEVEL_NAME="adc"
QSYS_SIMDIR="./../"
QUARTUS_INSTALL_DIR="C:/altera/quartus/"
SKIP_FILE_COPY=0
SKIP_DEV_COM=0
SKIP_COM=0
SKIP_ELAB=0
SKIP_SIM=0
USER_DEFINED_ELAB_OPTIONS=""
USER_DEFINED_SIM_OPTIONS="-input \"@run 100; exit\""

# ----------------------------------------
# overwrite variables - DO NOT MODIFY!
# This block evaluates each command line argument, typically used for 
# overwriting variables. An example usage:
#   sh <simulator>_setup.sh SKIP_ELAB=1 SKIP_SIM=1
for expression in "$@"; do
  eval $expression
  if [ $? -ne 0 ]; then
    echo "Error: This command line argument, \"$expression\", is/has an invalid expression." >&2
    exit $?
  fi
done

# ----------------------------------------
# initialize simulation properties - DO NOT MODIFY!
ELAB_OPTIONS=""
SIM_OPTIONS=""
if [[ `ncsim -version` != *"ncsim(64)"* ]]; then
  :
else
  :
fi

# ----------------------------------------
# create compilation libraries
mkdir -p ./libraries/work/
mkdir -p ./libraries/error_adapter_0/
mkdir -p ./libraries/avalon_st_adapter/
mkdir -p ./libraries/rsp_mux/
mkdir -p ./libraries/rsp_demux/
mkdir -p ./libraries/cmd_mux/
mkdir -p ./libraries/cmd_demux/
mkdir -p ./libraries/router_002/
mkdir -p ./libraries/router/
mkdir -p ./libraries/ADC_adc_slave_agent_rsp_fifo/
mkdir -p ./libraries/irq_mapper/
mkdir -p ./libraries/mm_interconnect_0/
mkdir -p ./libraries/onchip_mem/
mkdir -p ./libraries/cpu/
mkdir -p ./libraries/LEDs/
mkdir -p ./libraries/altera/
mkdir -p ./libraries/lpm/
mkdir -p ./libraries/sgate/
mkdir -p ./libraries/altera_mf/
mkdir -p ./libraries/altera_lnsim/
mkdir -p ./libraries/cyclonev/

# ----------------------------------------
# copy RAM/ROM files to simulation directory
if [ $SKIP_FILE_COPY -eq 0 ]; then
  cp -f $QSYS_SIMDIR/submodules/adc_onchip_mem.hex ./
  cp -f $QSYS_SIMDIR/submodules/adc_cpu_bht_ram.dat ./
  cp -f $QSYS_SIMDIR/submodules/adc_cpu_bht_ram.hex ./
  cp -f $QSYS_SIMDIR/submodules/adc_cpu_bht_ram.mif ./
  cp -f $QSYS_SIMDIR/submodules/adc_cpu_dc_tag_ram.dat ./
  cp -f $QSYS_SIMDIR/submodules/adc_cpu_dc_tag_ram.hex ./
  cp -f $QSYS_SIMDIR/submodules/adc_cpu_dc_tag_ram.mif ./
  cp -f $QSYS_SIMDIR/submodules/adc_cpu_ic_tag_ram.dat ./
  cp -f $QSYS_SIMDIR/submodules/adc_cpu_ic_tag_ram.hex ./
  cp -f $QSYS_SIMDIR/submodules/adc_cpu_ic_tag_ram.mif ./
  cp -f $QSYS_SIMDIR/submodules/adc_cpu_ociram_default_contents.dat ./
  cp -f $QSYS_SIMDIR/submodules/adc_cpu_ociram_default_contents.hex ./
  cp -f $QSYS_SIMDIR/submodules/adc_cpu_ociram_default_contents.mif ./
  cp -f $QSYS_SIMDIR/submodules/adc_cpu_rf_ram_a.dat ./
  cp -f $QSYS_SIMDIR/submodules/adc_cpu_rf_ram_a.hex ./
  cp -f $QSYS_SIMDIR/submodules/adc_cpu_rf_ram_a.mif ./
  cp -f $QSYS_SIMDIR/submodules/adc_cpu_rf_ram_b.dat ./
  cp -f $QSYS_SIMDIR/submodules/adc_cpu_rf_ram_b.hex ./
  cp -f $QSYS_SIMDIR/submodules/adc_cpu_rf_ram_b.mif ./
fi

# ----------------------------------------
# compile device library files
if [ $SKIP_DEV_COM -eq 0 ]; then
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_syn_attributes.vhd"        -work altera      
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_standard_functions.vhd"    -work altera      
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/alt_dspbuilder_package.vhd"       -work altera      
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_europa_support_lib.vhd"    -work altera      
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives_components.vhd" -work altera      
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.vhd"            -work altera      
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/220pack.vhd"                      -work lpm         
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.vhd"                     -work lpm         
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate_pack.vhd"                   -work sgate       
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.vhd"                        -work sgate       
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf_components.vhd"         -work altera_mf   
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.vhd"                    -work altera_mf   
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS  "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv"                  -work altera_lnsim
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim_components.vhd"      -work altera_lnsim
  ncvlog $USER_DEFINED_COMPILE_OPTIONS      "$QUARTUS_INSTALL_DIR/eda/sim_lib/cadence/cyclonev_atoms_ncrypt.v"  -work cyclonev    
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_atoms.vhd"               -work cyclonev    
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_components.vhd"          -work cyclonev    
fi

# ----------------------------------------
# compile design files in correct order
if [ $SKIP_COM -eq 0 ]; then
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/adc_mm_interconnect_0_avalon_st_adapter_error_adapter_0.vho" -work error_adapter_0              -cdslib ./cds_libs/error_adapter_0.cds.lib             
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/adc_mm_interconnect_0_avalon_st_adapter.vhd"                 -work avalon_st_adapter            -cdslib ./cds_libs/avalon_st_adapter.cds.lib           
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/adc_mm_interconnect_0_rsp_mux.vho"                           -work rsp_mux                      -cdslib ./cds_libs/rsp_mux.cds.lib                     
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/adc_mm_interconnect_0_rsp_demux.vho"                         -work rsp_demux                    -cdslib ./cds_libs/rsp_demux.cds.lib                   
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/adc_mm_interconnect_0_cmd_mux.vho"                           -work cmd_mux                      -cdslib ./cds_libs/cmd_mux.cds.lib                     
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/adc_mm_interconnect_0_cmd_demux.vho"                         -work cmd_demux                    -cdslib ./cds_libs/cmd_demux.cds.lib                   
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/adc_mm_interconnect_0_router_002.vho"                        -work router_002                   -cdslib ./cds_libs/router_002.cds.lib                  
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/adc_mm_interconnect_0_router.vho"                            -work router                       -cdslib ./cds_libs/router.cds.lib                      
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/adc_mm_interconnect_0_ADC_adc_slave_agent_rsp_fifo.vho"      -work ADC_adc_slave_agent_rsp_fifo -cdslib ./cds_libs/ADC_adc_slave_agent_rsp_fifo.cds.lib
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/adc_irq_mapper.vho"                                          -work irq_mapper                   -cdslib ./cds_libs/irq_mapper.cds.lib                  
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/adc_mm_interconnect_0.vhd"                                   -work mm_interconnect_0            -cdslib ./cds_libs/mm_interconnect_0.cds.lib           
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/adc_mm_interconnect_0_adc_adc_slave_translator.vhd"          -work mm_interconnect_0            -cdslib ./cds_libs/mm_interconnect_0.cds.lib           
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/adc_mm_interconnect_0_cpu_jtag_debug_module_translator.vhd"  -work mm_interconnect_0            -cdslib ./cds_libs/mm_interconnect_0.cds.lib           
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/adc_mm_interconnect_0_onchip_mem_s1_translator.vhd"          -work mm_interconnect_0            -cdslib ./cds_libs/mm_interconnect_0.cds.lib           
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/adc_mm_interconnect_0_leds_s1_translator.vhd"                -work mm_interconnect_0            -cdslib ./cds_libs/mm_interconnect_0.cds.lib           
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/adc_mm_interconnect_0_cpu_data_master_translator.vhd"        -work mm_interconnect_0            -cdslib ./cds_libs/mm_interconnect_0.cds.lib           
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/adc_mm_interconnect_0_cpu_instruction_master_translator.vhd" -work mm_interconnect_0            -cdslib ./cds_libs/mm_interconnect_0.cds.lib           
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/adc_onchip_mem.vhd"                                          -work onchip_mem                   -cdslib ./cds_libs/onchip_mem.cds.lib                  
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/adc_cpu.vho"                                                 -work cpu                          -cdslib ./cds_libs/cpu.cds.lib                         
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/adc_cpu_jtag_debug_module_sysclk.vhd"                        -work cpu                          -cdslib ./cds_libs/cpu.cds.lib                         
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/adc_cpu_jtag_debug_module_tck.vhd"                           -work cpu                          -cdslib ./cds_libs/cpu.cds.lib                         
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/adc_cpu_jtag_debug_module_wrapper.vhd"                       -work cpu                          -cdslib ./cds_libs/cpu.cds.lib                         
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/adc_cpu_mult_cell.vhd"                                       -work cpu                          -cdslib ./cds_libs/cpu.cds.lib                         
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/adc_cpu_oci_test_bench.vhd"                                  -work cpu                          -cdslib ./cds_libs/cpu.cds.lib                         
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/adc_cpu_test_bench.vhd"                                      -work cpu                          -cdslib ./cds_libs/cpu.cds.lib                         
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/adc_LEDs.vhd"                                                -work LEDs                         -cdslib ./cds_libs/LEDs.cds.lib                        
  ncvhdl -v93 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/adc.vhd"                                                                                                                                                          
fi

# ----------------------------------------
# elaborate top level design
if [ $SKIP_ELAB -eq 0 ]; then
  ncelab -access +w+r+c -namemap_mixgen -relax $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS $TOP_LEVEL_NAME
fi

# ----------------------------------------
# simulate
if [ $SKIP_SIM -eq 0 ]; then
  eval ncsim -licqueue $SIM_OPTIONS $USER_DEFINED_SIM_OPTIONS $TOP_LEVEL_NAME
fi
