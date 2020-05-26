transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/FPGA/Two Way Switch/two_way_switch.vhd}

vcom -93 -work work {C:/FPGA/Two Way Switch/tb_two_way_switch.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  tb_two_way_switch

add wave *
view structure
view signals
run -all
