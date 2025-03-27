onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib design_1_clk_wiz_0_0_opt

do {wave.do}

view wave
view structure
view signals

do {design_1_clk_wiz_0_0.udo}

run -all

quit -force
