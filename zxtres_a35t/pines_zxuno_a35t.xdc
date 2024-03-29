set_property PACKAGE_PIN J3 [get_ports sd_clk]
set_property PACKAGE_PIN M15 [get_ports flash_clk]
# Pines y estandares de niveles logicos
#Clock
set_property PACKAGE_PIN N11 [get_ports clk50mhz]
set_property IOSTANDARD LVCMOS33 [get_ports clk50mhz]

#Leds y Botones
set_property PACKAGE_PIN C8 [get_ports testled]
set_property IOSTANDARD LVCMOS33 [get_ports testled]
#set_property PACKAGE_PIN A8 [get_ports BTN]
#set_property IOSTANDARD LVCMOS33 [get_ports BTN]
#set_property PULLUP true [get_ports BTN]

#Keyboard and mouse
set_property PACKAGE_PIN N2 [get_ports clkps2]
set_property IOSTANDARD LVCMOS33 [get_ports clkps2]
set_property PULLUP true [get_ports clkps2]
set_property PACKAGE_PIN N3 [get_ports dataps2]
set_property IOSTANDARD LVCMOS33 [get_ports dataps2]
set_property PACKAGE_PIN L4 [get_ports mouseclk]
set_property IOSTANDARD LVCMOS33 [get_ports mouseclk]
set_property PULLUP true [get_ports dataps2]
set_property PACKAGE_PIN M4 [get_ports mousedata]
set_property IOSTANDARD LVCMOS33 [get_ports mousedata]
set_property PULLUP true [get_ports mousedata]

# Video output
set_property PACKAGE_PIN P10 [get_ports hsync]
set_property IOSTANDARD LVCMOS33 [get_ports hsync]
set_property PACKAGE_PIN K13 [get_ports vsync]
set_property IOSTANDARD LVCMOS33 [get_ports vsync]
set_property PACKAGE_PIN M16 [get_ports {b[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {b[5]}]
set_property PACKAGE_PIN N14 [get_ports {b[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {b[4]}]
set_property PACKAGE_PIN P15 [get_ports {b[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {b[3]}]
set_property PACKAGE_PIN R15 [get_ports {b[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {b[2]}]
set_property PACKAGE_PIN T14 [get_ports {b[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {b[1]}]
set_property PACKAGE_PIN M12 [get_ports {b[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {b[0]}]

set_property PACKAGE_PIN T13 [get_ports {r[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {r[5]}]
set_property PACKAGE_PIN R12 [get_ports {r[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {r[4]}]
set_property PACKAGE_PIN T12 [get_ports {r[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {r[3]}]
set_property PACKAGE_PIN P13 [get_ports {r[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {r[2]}]
set_property PACKAGE_PIN N12 [get_ports {r[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {r[1]}]
set_property PACKAGE_PIN K12 [get_ports {r[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {r[0]}]

set_property PACKAGE_PIN N16 [get_ports {g[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {g[5]}]
set_property PACKAGE_PIN P16 [get_ports {g[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {g[4]}]
set_property PACKAGE_PIN R16 [get_ports {g[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {g[3]}]
set_property PACKAGE_PIN T15 [get_ports {g[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {g[2]}]
set_property PACKAGE_PIN P14 [get_ports {g[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {g[1]}]
set_property PACKAGE_PIN R13 [get_ports {g[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {g[0]}]

#Audio
set_property PACKAGE_PIN P11 [get_ports audio_out_left]
set_property IOSTANDARD LVCMOS33 [get_ports audio_out_left]
set_property PACKAGE_PIN N9 [get_ports audio_out_right]
set_property IOSTANDARD LVCMOS33 [get_ports audio_out_right]

#Joystick
set_property PACKAGE_PIN M1 [get_ports joy_clk]
set_property IOSTANDARD LVCMOS33 [get_ports joy_clk]
set_property PACKAGE_PIN M2 [get_ports joy_load_n]
set_property IOSTANDARD LVCMOS33 [get_ports joy_load_n]
set_property PACKAGE_PIN N1 [get_ports joy_data]
set_property IOSTANDARD LVCMOS33 [get_ports joy_data]

#SRAM
set_property IOSTANDARD LVCMOS33 [get_ports {sram_*}]
set_property SLEW SLOW [get_ports {sram_*}]
set_property PACKAGE_PIN P9 [get_ports {sram_addr[0]}]
set_property PACKAGE_PIN R11 [get_ports {sram_addr[1]}]
set_property PACKAGE_PIN T9 [get_ports {sram_addr[2]}]
set_property PACKAGE_PIN R8 [get_ports {sram_addr[3]}]
set_property PACKAGE_PIN R7 [get_ports {sram_addr[4]}]
set_property PACKAGE_PIN M6 [get_ports {sram_addr[5]}]
set_property PACKAGE_PIN R3 [get_ports {sram_addr[6]}]
set_property PACKAGE_PIN T4 [get_ports {sram_addr[7]}]
set_property PACKAGE_PIN N6 [get_ports {sram_addr[8]}]
set_property PACKAGE_PIN L5 [get_ports {sram_addr[9]}]
set_property PACKAGE_PIN R6 [get_ports {sram_addr[10]}]
set_property PACKAGE_PIN T3 [get_ports {sram_addr[11]}]
set_property PACKAGE_PIN T8 [get_ports {sram_addr[12]}]
set_property PACKAGE_PIN T2 [get_ports {sram_addr[13]}]
set_property PACKAGE_PIN R10 [get_ports {sram_addr[14]}]
set_property PACKAGE_PIN P1 [get_ports {sram_addr[15]}]
set_property PACKAGE_PIN P3 [get_ports {sram_addr[16]}]
set_property PACKAGE_PIN P4 [get_ports {sram_addr[17]}]
set_property PACKAGE_PIN N4 [get_ports {sram_addr[18]}]

set_property PACKAGE_PIN T7 [get_ports {sram_data[0]}]
set_property PACKAGE_PIN P5 [get_ports {sram_data[1]}]
set_property PACKAGE_PIN T5 [get_ports {sram_data[2]}]
set_property PACKAGE_PIN R5 [get_ports {sram_data[3]}]
set_property PACKAGE_PIN T10 [get_ports {sram_data[4]}]
set_property PACKAGE_PIN R2 [get_ports {sram_data[5]}]
set_property PACKAGE_PIN R1 [get_ports {sram_data[6]}]
set_property PACKAGE_PIN M5 [get_ports {sram_data[7]}]

set_property PACKAGE_PIN P6 [get_ports sram_we_n]

#SD
set_property IOSTANDARD LVCMOS33 [get_ports sd_clk]
set_property PACKAGE_PIN K3 [get_ports sd_cs_n]
set_property IOSTANDARD LVCMOS33 [get_ports sd_cs_n]
set_property PACKAGE_PIN H3 [get_ports sd_miso]
set_property IOSTANDARD LVCMOS33 [get_ports sd_miso]
set_property PULLUP true [get_ports sd_miso]
set_property PACKAGE_PIN K2 [get_ports sd_mosi]
set_property IOSTANDARD LVCMOS33 [get_ports sd_mosi]

#Flash SPI
set_property IOSTANDARD LVCMOS33 [get_ports flash_clk]
set_property PACKAGE_PIN L12 [get_ports flash_cs_n]
set_property IOSTANDARD LVCMOS33 [get_ports flash_cs_n]
set_property PACKAGE_PIN J14 [get_ports flash_miso]
# DQ1
set_property IOSTANDARD LVCMOS33 [get_ports flash_miso]
set_property PULLUP true [get_ports flash_miso]
# DQ0
set_property PACKAGE_PIN J13 [get_ports flash_mosi]
set_property IOSTANDARD LVCMOS33 [get_ports flash_mosi]
#set_property PACKAGE_PIN K15 [get_ports flash_data2]
#set_property PACKAGE_PIN K16 [get_ports flash_data3]

#
# SDRAM signals
#
#set_property PACKAGE_PIN B14 [get_ports SDCLK0]
#set_property IOSTANDARD LVCMOS33 [get_ports SDCLK0]
#set_property PACKAGE_PIN A14 [get_ports SDCKE0]
#set_property IOSTANDARD LVCMOS33 [get_ports SDCKE0]

#set_property PACKAGE_PIN B16 [get_ports DQM[1]]
#set_property IOSTANDARD LVCMOS33 [get_ports DQM[1]]
#set_property PACKAGE_PIN F12 [get_ports DQM[0]]
#set_property IOSTANDARD LVCMOS33 [get_ports DQM[0]]

#set_property PACKAGE_PIN F13 [get_ports CAS]
#set_property IOSTANDARD LVCMOS33 [get_ports CAS]
#set_property PACKAGE_PIN E13 [get_ports RAS]
#set_property IOSTANDARD LVCMOS33 [get_ports RAS]
#set_property PACKAGE_PIN F14 [get_ports SDWE]
#set_property IOSTANDARD LVCMOS33 [get_ports SDWE]
#set_property PACKAGE_PIN D14 [get_ports SDCS0]
#set_property IOSTANDARD LVCMOS33 [get_ports SDCS0]

#set_property PACKAGE_PIN C14 [get_ports Bank[1]]
#set_property IOSTANDARD LVCMOS33 [get_ports Bank[1]]
#set_property PACKAGE_PIN D13 [get_ports Bank[0]]
#set_property IOSTANDARD LVCMOS33 [get_ports Bank[0]]

#set_property PACKAGE_PIN A13 [get_ports Address[12]]
#set_property IOSTANDARD LVCMOS33 [get_ports Address[12]]
#set_property PACKAGE_PIN B12 [get_ports Address[11]]
#set_property IOSTANDARD LVCMOS33 [get_ports Address[11]]
#set_property PACKAGE_PIN B15 [get_ports Address[10]]
#set_property IOSTANDARD LVCMOS33 [get_ports Address[10]]
#set_property PACKAGE_PIN A12 [get_ports Address[9]]
#set_property IOSTANDARD LVCMOS33 [get_ports Address[9]]
#set_property PACKAGE_PIN B11 [get_ports Address[8]]
#set_property IOSTANDARD LVCMOS33 [get_ports Address[8]]
#set_property PACKAGE_PIN B10 [get_ports Address[7]]
#set_property IOSTANDARD LVCMOS33 [get_ports Address[7]]
#set_property PACKAGE_PIN A10 [get_ports Address[6]]
#set_property IOSTANDARD LVCMOS33 [get_ports Address[6]]
#set_property PACKAGE_PIN B9 [get_ports Address[5]]
#set_property IOSTANDARD LVCMOS33 [get_ports Address[5]]
#set_property PACKAGE_PIN A9 [get_ports Address[4]]
#set_property IOSTANDARD LVCMOS33 [get_ports Address[4]]
#set_property PACKAGE_PIN C11 [get_ports Address[3]]
#set_property IOSTANDARD LVCMOS33 [get_ports Address[3]]
#set_property PACKAGE_PIN C12 [get_ports Address[2]]
#set_property IOSTANDARD LVCMOS33 [get_ports Address[2]]
#set_property PACKAGE_PIN A15 [get_ports Address[1]]
#set_property IOSTANDARD LVCMOS33 [get_ports Address[1]]
#set_property PACKAGE_PIN C13 [get_ports Address[0]]
#set_property IOSTANDARD LVCMOS33 [get_ports Address[0]]

#set_property PACKAGE_PIN H12 [get_ports Data[0]]
#set_property IOSTANDARD LVCMOS33 [get_ports Data[0]]
#set_property PACKAGE_PIN H13 [get_ports Data[1]]
#set_property IOSTANDARD LVCMOS33 [get_ports Data[1]]
#set_property PACKAGE_PIN J15 [get_ports Data[2]]
#set_property IOSTANDARD LVCMOS33 [get_ports Data[2]]
#set_property PACKAGE_PIN H14 [get_ports Data[3]]
#set_property IOSTANDARD LVCMOS33 [get_ports Data[3]]
#set_property PACKAGE_PIN J16 [get_ports Data[4]]
#set_property IOSTANDARD LVCMOS33 [get_ports Data[4]]
#set_property PACKAGE_PIN H16 [get_ports Data[5]]
#set_property IOSTANDARD LVCMOS33 [get_ports Data[5]]
#set_property PACKAGE_PIN G14 [get_ports Data[6]]
#set_property IOSTANDARD LVCMOS33 [get_ports Data[6]]
#set_property PACKAGE_PIN G12 [get_ports Data[7]]
#set_property IOSTANDARD LVCMOS33 [get_ports Data[7]]
#set_property PACKAGE_PIN C16 [get_ports Data[8]]
#set_property IOSTANDARD LVCMOS33 [get_ports Data[8]]
#set_property PACKAGE_PIN D15 [get_ports Data[9]]
#set_property IOSTANDARD LVCMOS33 [get_ports Data[9]]
#set_property PACKAGE_PIN D16 [get_ports Data[10]]
#set_property IOSTANDARD LVCMOS33 [get_ports Data[10]]
#set_property PACKAGE_PIN E15 [get_ports Data[11]]
#set_property IOSTANDARD LVCMOS33 [get_ports Data[11]]
#set_property PACKAGE_PIN E16 [get_ports Data[12]]
#set_property IOSTANDARD LVCMOS33 [get_ports Data[12]]
#set_property PACKAGE_PIN F15 [get_ports Data[13]]
#set_property IOSTANDARD LVCMOS33 [get_ports Data[13]]
#set_property PACKAGE_PIN G15 [get_ports Data[14]]
#set_property IOSTANDARD LVCMOS33 [get_ports Data[14]]
#set_property PACKAGE_PIN G16 [get_ports Data[15]]
#set_property IOSTANDARD LVCMOS33 [get_ports Data[15]]

