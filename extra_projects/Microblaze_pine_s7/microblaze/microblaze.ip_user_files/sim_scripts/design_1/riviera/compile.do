vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/microblaze_v10_0_7
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/lib_cdc_v1_0_2
vlib riviera/interrupt_control_v3_1_4
vlib riviera/axi_gpio_v2_0_19
vlib riviera/lib_pkg_v1_0_2
vlib riviera/lib_srl_fifo_v1_0_2
vlib riviera/axi_uartlite_v2_0_21
vlib riviera/mdm_v3_2_14
vlib riviera/proc_sys_reset_v5_0_12
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_register_slice_v2_1_17
vlib riviera/fifo_generator_v13_2_2
vlib riviera/axi_data_fifo_v2_1_16
vlib riviera/axi_crossbar_v2_1_18
vlib riviera/lmb_v10_v3_0_9
vlib riviera/lmb_bram_if_cntlr_v4_0_15
vlib riviera/blk_mem_gen_v8_4_1
vlib riviera/util_vector_logic_v2_0_1

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap microblaze_v10_0_7 riviera/microblaze_v10_0_7
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap interrupt_control_v3_1_4 riviera/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_19 riviera/axi_gpio_v2_0_19
vmap lib_pkg_v1_0_2 riviera/lib_pkg_v1_0_2
vmap lib_srl_fifo_v1_0_2 riviera/lib_srl_fifo_v1_0_2
vmap axi_uartlite_v2_0_21 riviera/axi_uartlite_v2_0_21
vmap mdm_v3_2_14 riviera/mdm_v3_2_14
vmap proc_sys_reset_v5_0_12 riviera/proc_sys_reset_v5_0_12
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_17 riviera/axi_register_slice_v2_1_17
vmap fifo_generator_v13_2_2 riviera/fifo_generator_v13_2_2
vmap axi_data_fifo_v2_1_16 riviera/axi_data_fifo_v2_1_16
vmap axi_crossbar_v2_1_18 riviera/axi_crossbar_v2_1_18
vmap lmb_v10_v3_0_9 riviera/lmb_v10_v3_0_9
vmap lmb_bram_if_cntlr_v4_0_15 riviera/lmb_bram_if_cntlr_v4_0_15
vmap blk_mem_gen_v8_4_1 riviera/blk_mem_gen_v8_4_1
vmap util_vector_logic_v2_0_1 riviera/util_vector_logic_v2_0_1

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"D:/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Vivado/2018.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v10_0_7 -93 \
"../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/b649/hdl/microblaze_v10_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_microblaze_0_1/sim/design_1_microblaze_0_1.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/cced/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -93 \
"../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/8e66/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_19 -93 \
"../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/c193/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_gpio_0_1/sim/design_1_axi_gpio_0_1.vhd" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_uartlite_v2_0_21 -93 \
"../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/a15e/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_uartlite_0_1/sim/design_1_axi_uartlite_0_1.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_1/design_1_clk_wiz_0_1_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_1/design_1_clk_wiz_0_1.v" \

vcom -work mdm_v3_2_14 -93 \
"../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/5125/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_mdm_1_2/sim/design_1_mdm_1_2.vhd" \

vcom -work proc_sys_reset_v5_0_12 -93 \
"../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_rst_clk_wiz_0_100M_1/sim/design_1_rst_clk_wiz_0_100M_1.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_17  -v2k5 "+incdir+../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/6020/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_2  -v2k5 "+incdir+../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/7aff/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_2 -93 \
"../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_2  -v2k5 "+incdir+../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_16  -v2k5 "+incdir+../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/247d/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_18  -v2k5 "+incdir+../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/15a3/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../bd/design_1/ip/design_1_xbar_1/sim/design_1_xbar_1.v" \

vcom -work lmb_v10_v3_0_9 -93 \
"../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/78eb/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_dlmb_v10_2/sim/design_1_dlmb_v10_2.vhd" \
"../../../bd/design_1/ip/design_1_ilmb_v10_2/sim/design_1_ilmb_v10_2.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_15 -93 \
"../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/92fd/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_dlmb_bram_if_cntlr_2/sim/design_1_dlmb_bram_if_cntlr_2.vhd" \
"../../../bd/design_1/ip/design_1_ilmb_bram_if_cntlr_2/sim/design_1_ilmb_bram_if_cntlr_2.vhd" \

vlog -work blk_mem_gen_v8_4_1  -v2k5 "+incdir+../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/67d8/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../bd/design_1/ip/design_1_lmb_bram_2/sim/design_1_lmb_bram_2.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work util_vector_logic_v2_0_1  -v2k5 "+incdir+../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/2137/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+../../../../microblaze.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" \
"../../../bd/design_1/ip/design_1_util_vector_logic_0_0/sim/design_1_util_vector_logic_0_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

