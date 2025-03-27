#######################################################################################
## WWW.FPGATECHSOLUTION.COM
## PINE SPARTAN7 FPGA BOARD MASTER XDC
## PART NUMBER XC7A35TCSG324-1
#######################################################################################
set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]


#######################################################################################
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 33 [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property CONFIG_MODE SPIx4 [current_design]


#######################################################################################
## Clock signal
#######################################################################################
set_property -dict {PACKAGE_PIN G11  IOSTANDARD LVCMOS33} [get_ports osc_clk_in]
create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 5.000} -add [get_ports osc_clk_in]


#######################################################################################
##Buttons
#######################################################################################
set_property -dict {PACKAGE_PIN B5 IOSTANDARD LVCMOS33} [get_ports KEY_0]
set_property -dict {PACKAGE_PIN A4 IOSTANDARD LVCMOS33} [get_ports KEY_1]
set_property -dict { PACKAGE_PIN A3   IOSTANDARD LVCMOS33 } [get_ports { KEY_2 }]; 
set_property -dict { PACKAGE_PIN B3   IOSTANDARD LVCMOS33 } [get_ports { KEY_3 }]; 

#######################################################################################
## SLIDE SW
#######################################################################################
set_property -dict { PACKAGE_PIN A5    IOSTANDARD LVCMOS33 } [get_ports { SLIDE_SW[15] }]; 
set_property -dict { PACKAGE_PIN B6    IOSTANDARD LVCMOS33 } [get_ports { SLIDE_SW[14] }]; 
set_property -dict { PACKAGE_PIN F4    IOSTANDARD LVCMOS33 } [get_ports { SLIDE_SW[13] }]; 
set_property -dict { PACKAGE_PIN C3    IOSTANDARD LVCMOS33 } [get_ports { SLIDE_SW[12] }]; 
set_property -dict { PACKAGE_PIN C4    IOSTANDARD LVCMOS33 } [get_ports { SLIDE_SW[11] }]; 
set_property -dict { PACKAGE_PIN A10   IOSTANDARD LVCMOS33 } [get_ports { SLIDE_SW[10] }]; 
set_property -dict { PACKAGE_PIN B13   IOSTANDARD LVCMOS33 } [get_ports { SLIDE_SW[9] }]; 
set_property -dict { PACKAGE_PIN C14   IOSTANDARD LVCMOS33 } [get_ports { SLIDE_SW[8] }]; 
set_property -dict { PACKAGE_PIN D13   IOSTANDARD LVCMOS33 } [get_ports { SLIDE_SW[7] }]; 
set_property -dict { PACKAGE_PIN F14   IOSTANDARD LVCMOS33 } [get_ports { SLIDE_SW[6] }]; 
set_property -dict { PACKAGE_PIN G14   IOSTANDARD LVCMOS33 } [get_ports { SLIDE_SW[5] }]; 
set_property -dict { PACKAGE_PIN H13   IOSTANDARD LVCMOS33 } [get_ports { SLIDE_SW[4] }]; 
set_property -dict { PACKAGE_PIN D12   IOSTANDARD LVCMOS33 } [get_ports { SLIDE_SW[3] }]; 
set_property -dict { PACKAGE_PIN E12   IOSTANDARD LVCMOS33 } [get_ports { SLIDE_SW[2] }]; 
set_property -dict { PACKAGE_PIN F11   IOSTANDARD LVCMOS33 } [get_ports { SLIDE_SW[1] }]; 
set_property -dict { PACKAGE_PIN H11   IOSTANDARD LVCMOS33 } [get_ports { SLIDE_SW[0] }]; 

#######################################################################################
## LEDs
#######################################################################################
set_property -dict { PACKAGE_PIN F3    IOSTANDARD LVCMOS33} [get_ports {LED[15]}]; 
set_property -dict { PACKAGE_PIN E4    IOSTANDARD LVCMOS33} [get_ports {LED[14]}]; 
set_property -dict { PACKAGE_PIN D3    IOSTANDARD LVCMOS33} [get_ports {LED[13]}]; 
set_property -dict { PACKAGE_PIN D4    IOSTANDARD LVCMOS33} [get_ports {LED[12]}]; 
set_property -dict { PACKAGE_PIN C5    IOSTANDARD LVCMOS33} [get_ports {LED[11]}]; 
set_property -dict { PACKAGE_PIN A12   IOSTANDARD LVCMOS33} [get_ports {LED[10]}]; 
set_property -dict { PACKAGE_PIN A13   IOSTANDARD LVCMOS33} [get_ports {LED[9]}]; 
set_property -dict { PACKAGE_PIN B14   IOSTANDARD LVCMOS33} [get_ports {LED[8]}]; 
set_property -dict { PACKAGE_PIN D14   IOSTANDARD LVCMOS33} [get_ports {LED[7]}]; 
set_property -dict { PACKAGE_PIN E13   IOSTANDARD LVCMOS33} [get_ports {LED[6]}]; 
set_property -dict { PACKAGE_PIN F13   IOSTANDARD LVCMOS33} [get_ports {LED[5]}]; 
set_property -dict { PACKAGE_PIN H14   IOSTANDARD LVCMOS33} [get_ports {LED[4]}]; 
set_property -dict { PACKAGE_PIN J14   IOSTANDARD LVCMOS33} [get_ports {LED[3]}]; 
set_property -dict { PACKAGE_PIN C12   IOSTANDARD LVCMOS33} [get_ports {LED[2]}]; 
set_property -dict { PACKAGE_PIN E11   IOSTANDARD LVCMOS33} [get_ports {LED[1]}]; 
set_property -dict { PACKAGE_PIN F12   IOSTANDARD LVCMOS33} [get_ports {LED[0]}]; 



#######################################################################################
##Buzzer
#######################################################################################
set_property -dict {PACKAGE_PIN P3  IOSTANDARD LVCMOS33} [get_ports BUZZER]


#######################################################################################
#SEVEN SIG
#######################################################################################
set_property -dict { PACKAGE_PIN G4    IOSTANDARD LVCMOS33 } [get_ports { SIG_A }];
set_property -dict { PACKAGE_PIN H3    IOSTANDARD LVCMOS33 } [get_ports { SIG_B }];
set_property -dict { PACKAGE_PIN J3    IOSTANDARD LVCMOS33 } [get_ports { SIG_C }];
set_property -dict { PACKAGE_PIN L3    IOSTANDARD LVCMOS33 } [get_ports { SIG_D }];
set_property -dict { PACKAGE_PIN K3    IOSTANDARD LVCMOS33 } [get_ports { SIG_E }];
set_property -dict { PACKAGE_PIN H4    IOSTANDARD LVCMOS33 } [get_ports { SIG_F }];
set_property -dict { PACKAGE_PIN J4    IOSTANDARD LVCMOS33 } [get_ports { SIG_G }];
set_property -dict { PACKAGE_PIN K4    IOSTANDARD LVCMOS33 } [get_ports { SIG_PD}];

set_property -dict { PACKAGE_PIN H2    IOSTANDARD LVCMOS33 } [get_ports { SEL_DISP4}];
set_property -dict { PACKAGE_PIN H1    IOSTANDARD LVCMOS33 } [get_ports { SEL_DISP3}];
set_property -dict { PACKAGE_PIN G1    IOSTANDARD LVCMOS33 } [get_ports { SEL_DISP2}];
set_property -dict { PACKAGE_PIN F1    IOSTANDARD LVCMOS33 } [get_ports { SEL_DISP1}];





set_property BITSTREAM.CONFIG.CONFIGRATE 50 [current_design]
set_property CONFIG_MODE SPIx4 [current_design]