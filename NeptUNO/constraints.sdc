create_clock -name "clk50mhz" -period 20.000 [get_ports {clk50mhz}]

#create_clock -name {audio_top:audio_top|tcount[4]} -period 100.000

derive_pll_clocks -create_base_clocks
derive_clock_uncertainty

#set_false_path -to [get_ports {audio*}]
#set_false_path -to [get_ports {sync*}]
#set_false_path -to [get_ports {rgb*}]
#set_false_path -to [get_ports {ram*}]
#set_false_path -to [get_ports {led*}]
