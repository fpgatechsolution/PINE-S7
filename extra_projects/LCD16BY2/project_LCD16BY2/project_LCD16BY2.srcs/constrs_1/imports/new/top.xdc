
# Clock signal

set_property -dict { PACKAGE_PIN G11    IOSTANDARD LVCMOS33 } [get_ports { osc_clk_in }];
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports {osc_clk_in}];


##Buttons

set_property -dict { PACKAGE_PIN B5   IOSTANDARD LVCMOS33 } [get_ports { KEY_0 }]; 
#set_property -dict { PACKAGE_PIN A4   IOSTANDARD LVCMOS33 } [get_ports { KEY_1 }]; 
#set_property -dict { PACKAGE_PIN A3   IOSTANDARD LVCMOS33 } [get_ports { KEY_2 }]; 
#set_property -dict { PACKAGE_PIN B3   IOSTANDARD LVCMOS33 } [get_ports { KEY_3 }]; 

##Switches
#set_property -dict { PACKAGE_PIN A5   IOSTANDARD LVCMOS33 } [get_ports { SLIDE_SW[0] }]; 
#set_property -dict { PACKAGE_PIN B6   IOSTANDARD LVCMOS33 } [get_ports { SLIDE_SW[1] }]; 
#set_property -dict { PACKAGE_PIN F4   IOSTANDARD LVCMOS33 } [get_ports { SLIDE_SW[2] }]; 
#set_property -dict { PACKAGE_PIN C3   IOSTANDARD LVCMOS33 } [get_ports { SLIDE_SW[3] }]; 
#set_property -dict { PACKAGE_PIN C4   IOSTANDARD LVCMOS33 } [get_ports { SLIDE_SW[4] }]; 
#set_property -dict { PACKAGE_PIN A10   IOSTANDARD LVCMOS33 } [get_ports { SLIDE_SW[5] }]; 
#set_property -dict { PACKAGE_PIN B13   IOSTANDARD LVCMOS33 } [get_ports { SLIDE_SW[6] }]; 
#set_property -dict { PACKAGE_PIN C14   IOSTANDARD LVCMOS33 } [get_ports { SLIDE_SW[7] }]; 
#set_property -dict { PACKAGE_PIN D13   IOSTANDARD LVCMOS33 } [get_ports { SLIDE_SW[8] }]; 
#set_property -dict { PACKAGE_PIN F14   IOSTANDARD LVCMOS33 } [get_ports { SLIDE_SW[9] }]; 
#set_property -dict { PACKAGE_PIN G14   IOSTANDARD LVCMOS33 } [get_ports { SLIDE_SW[10] }]; 
#set_property -dict { PACKAGE_PIN H13   IOSTANDARD LVCMOS33 } [get_ports { SLIDE_SW[11] }]; 
#set_property -dict { PACKAGE_PIN D12   IOSTANDARD LVCMOS33 } [get_ports { SLIDE_SW[12] }]; 
#set_property -dict { PACKAGE_PIN E12   IOSTANDARD LVCMOS33 } [get_ports { SLIDE_SW[13] }]; 
#set_property -dict { PACKAGE_PIN F11   IOSTANDARD LVCMOS33 } [get_ports { SLIDE_SW[14] }]; 
#set_property -dict { PACKAGE_PIN H11   IOSTANDARD LVCMOS33 } [get_ports { SLIDE_SW[15] }]; 

### LEDs
#set_property -dict { PACKAGE_PIN F3    IOSTANDARD LVCMOS33 } [get_ports { LED[0] }]; 
#set_property -dict { PACKAGE_PIN E4   IOSTANDARD LVCMOS33 } [get_ports { LED[1] }]; 
#set_property -dict { PACKAGE_PIN D3   IOSTANDARD LVCMOS33 } [get_ports { LED[2] }]; 
#set_property -dict { PACKAGE_PIN D4   IOSTANDARD LVCMOS33 } [get_ports { LED[3] }]; 
#set_property -dict { PACKAGE_PIN C5   IOSTANDARD LVCMOS33 } [get_ports { LED[4] }]; 
#set_property -dict { PACKAGE_PIN A12   IOSTANDARD LVCMOS33 } [get_ports { LED[5] }]; 
#set_property -dict { PACKAGE_PIN A13   IOSTANDARD LVCMOS33 } [get_ports { LED[6] }]; 
#set_property -dict { PACKAGE_PIN B14   IOSTANDARD LVCMOS33 } [get_ports { LED[7] }]; 
#set_property -dict { PACKAGE_PIN D14   IOSTANDARD LVCMOS33 } [get_ports { LED[8] }]; 
#set_property -dict { PACKAGE_PIN E13   IOSTANDARD LVCMOS33 } [get_ports { LED[9] }]; 
#set_property -dict { PACKAGE_PIN F13   IOSTANDARD LVCMOS33 } [get_ports { LED[10] }]; 
#set_property -dict { PACKAGE_PIN H14   IOSTANDARD LVCMOS33 } [get_ports { LED[11] }]; 
#set_property -dict { PACKAGE_PIN J14   IOSTANDARD LVCMOS33 } [get_ports { LED[12] }]; 
#set_property -dict { PACKAGE_PIN C12   IOSTANDARD LVCMOS33 } [get_ports { LED[13] }]; 
#set_property -dict { PACKAGE_PIN E11   IOSTANDARD LVCMOS33 } [get_ports { LED[14] }]; 
#set_property -dict { PACKAGE_PIN F12   IOSTANDARD LVCMOS33 } [get_ports { LED[15] }]; 

###Buzzer
#set_property -dict { PACKAGE_PIN P3    IOSTANDARD LVCMOS33 } [get_ports { BUZZER }];

###RGB LED
#set_property -dict { PACKAGE_PIN H12    IOSTANDARD LVCMOS33 } [get_ports { LED_RED }];
#set_property -dict { PACKAGE_PIN J12    IOSTANDARD LVCMOS33 } [get_ports { LED_GREEN }];
#set_property -dict { PACKAGE_PIN J11    IOSTANDARD LVCMOS33 } [get_ports { LED_BLUE }];


#set_property -dict { PACKAGE_PIN G4    IOSTANDARD LVCMOS33 } [get_ports { SIG_A  }];
#set_property -dict { PACKAGE_PIN H3    IOSTANDARD LVCMOS33 } [get_ports { SIG_B  }];
#set_property -dict { PACKAGE_PIN J3    IOSTANDARD LVCMOS33 } [get_ports { SIG_C  }];
#set_property -dict { PACKAGE_PIN L3    IOSTANDARD LVCMOS33 } [get_ports { SIG_D  }];
#set_property -dict { PACKAGE_PIN K3    IOSTANDARD LVCMOS33 } [get_ports { SIG_E  }];
#set_property -dict { PACKAGE_PIN H4    IOSTANDARD LVCMOS33 } [get_ports { SIG_F  }];
#set_property -dict { PACKAGE_PIN J4    IOSTANDARD LVCMOS33 } [get_ports { SIG_G  }];
#set_property -dict { PACKAGE_PIN K4    IOSTANDARD LVCMOS33 } [get_ports { SIG_PD }];

#set_property -dict { PACKAGE_PIN H1    IOSTANDARD LVCMOS33 } [get_ports { SEL_DISP1 }];
#set_property -dict { PACKAGE_PIN H2    IOSTANDARD LVCMOS33 } [get_ports { SEL_DISP2 }];
#set_property -dict { PACKAGE_PIN F1    IOSTANDARD LVCMOS33 } [get_ports { SEL_DISP3 }];
#set_property -dict { PACKAGE_PIN G1    IOSTANDARD LVCMOS33 } [get_ports { SEL_DISP4 }];


#set_property -dict { PACKAGE_PIN M4    IOSTANDARD LVCMOS33 } [get_ports { red_out  }];
#set_property -dict { PACKAGE_PIN M3    IOSTANDARD LVCMOS33 } [get_ports { green_out  }];
#set_property -dict { PACKAGE_PIN P5    IOSTANDARD LVCMOS33 } [get_ports { blue_out  }];
#set_property -dict { PACKAGE_PIN N4    IOSTANDARD LVCMOS33 } [get_ports { vert_sync_out }];
#set_property -dict { PACKAGE_PIN P4    IOSTANDARD LVCMOS33 } [get_ports { horiz_sync_out }];

 

#set_property -dict { PACKAGE_PIN N10    IOSTANDARD LVCMOS33 } [get_ports { RX_232 }];
#set_property -dict { PACKAGE_PIN P10    IOSTANDARD LVCMOS33 } [get_ports { TX_232 }];



#           lcd_data : out std_logic_vector(7 downto 4);
           
#           ##PMOD JC
#set_property -dict { PACKAGE_PIN K11    IOSTANDARD LVCMOS33 } [get_ports { JC_1 }];
#set_property -dict { PACKAGE_PIN J13    IOSTANDARD LVCMOS33 } [get_ports { JC_2 }];
#set_property -dict { PACKAGE_PIN L13    IOSTANDARD LVCMOS33 } [get_ports { JC_3 }];
#set_property -dict { PACKAGE_PIN M13    IOSTANDARD LVCMOS33 } [get_ports { JC_4 }];
#set_property -dict { PACKAGE_PIN K12    IOSTANDARD LVCMOS33 } [get_ports { JC_7 }];
#set_property -dict { PACKAGE_PIN L12    IOSTANDARD LVCMOS33 } [get_ports { JC_8 }];
#set_property -dict { PACKAGE_PIN L14    IOSTANDARD LVCMOS33 } [get_ports { JC_9 }];
#set_property -dict { PACKAGE_PIN M14    IOSTANDARD LVCMOS33 } [get_ports { JC_10}]; 

 			##PMOD JC
set_property -dict { PACKAGE_PIN K11    IOSTANDARD LVCMOS33 } [get_ports { lcd_en }];
set_property -dict { PACKAGE_PIN K12    IOSTANDARD LVCMOS33 } [get_ports { lcd_rs }];
set_property -dict { PACKAGE_PIN J13    IOSTANDARD LVCMOS33 } [get_ports {  lcd_data[5] }];
set_property -dict { PACKAGE_PIN L13    IOSTANDARD LVCMOS33 } [get_ports {  lcd_data[7] }];
set_property -dict { PACKAGE_PIN L12    IOSTANDARD LVCMOS33 } [get_ports { lcd_data[4] }];
set_property -dict { PACKAGE_PIN L14    IOSTANDARD LVCMOS33 } [get_ports { lcd_data[6]  }];

