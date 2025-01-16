transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/ionat/Documents/ICAI/2023-2024/2do Cuatri/Sistemas Digitales II/Lab/Practicas/Pract1/DetectorFlanco.vhd}
vcom -93 -work work {C:/Users/ionat/Documents/ICAI/2023-2024/2do Cuatri/Sistemas Digitales II/Lab/Practicas/Pract1/RegParSer.vhd}
vcom -93 -work work {C:/Users/ionat/Documents/ICAI/2023-2024/2do Cuatri/Sistemas Digitales II/Lab/Practicas/Pract1/CalcParidad.vhd}
vcom -93 -work work {C:/Users/ionat/Documents/ICAI/2023-2024/2do Cuatri/Sistemas Digitales II/Lab/Practicas/Pract1/multiplexor.vhd}
vcom -93 -work work {C:/Users/ionat/Documents/ICAI/2023-2024/2do Cuatri/Sistemas Digitales II/Lab/Practicas/Pract1/Contador1bit.vhd}
vcom -93 -work work {C:/Users/ionat/Documents/ICAI/2023-2024/2do Cuatri/Sistemas Digitales II/Lab/Practicas/Pract1/Contador8bit.vhd}
vcom -93 -work work {C:/Users/ionat/Documents/ICAI/2023-2024/2do Cuatri/Sistemas Digitales II/Lab/Practicas/Pract1/UnidadControl.vhd}
vcom -93 -work work {C:/Users/ionat/Documents/ICAI/2023-2024/2do Cuatri/Sistemas Digitales II/Lab/Practicas/Pract1/pract1.vhd}

vcom -93 -work work {C:/Users/ionat/Documents/ICAI/2023-2024/2do Cuatri/Sistemas Digitales II/Lab/Practicas/Pract1/simulation/modelsim/Pract1.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  Pract1_vhd_tst

add wave *
view structure
view signals
run -all
