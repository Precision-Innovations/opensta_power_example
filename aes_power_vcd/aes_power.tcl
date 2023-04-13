# read_vcd_activities aes
read_liberty sky130hd_tt.lib
read_lef sky130_fd_sc_hd.tlef
read_lef sky130_fd_sc_hd_merged.lef
read_verilog aes_sky130hd.v
link_design aes_cipher_top

read_sdc aes_sky130hd.sdc
read_spef aes_sky130hd.spef
# Generate vcd file
#  iverilog -o aes_tb aes_tb.v
#  vvp aes_tb
read_power_activities -scope test/u0 -vcd aes_sky130hd.vcd
report_power
