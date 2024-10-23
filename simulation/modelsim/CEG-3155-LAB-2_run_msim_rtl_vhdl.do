transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/arnav/Desktop/CEG-3155-LAB-2/twosComplement.vhd}
vcom -93 -work work {C:/Users/arnav/Desktop/CEG-3155-LAB-2/multiplierTopLevel.vhd}
vcom -93 -work work {C:/Users/arnav/Desktop/CEG-3155-LAB-2/multiplierDatapath.vhd}
vcom -93 -work work {C:/Users/arnav/Desktop/CEG-3155-LAB-2/multiplierControlpath.vhd}
vcom -93 -work work {C:/Users/arnav/Desktop/CEG-3155-LAB-2/nBitShiftRegister.vhd}
vcom -93 -work work {C:/Users/arnav/Desktop/CEG-3155-LAB-2/nbitmux21.vhd}
vcom -93 -work work {C:/Users/arnav/Desktop/CEG-3155-LAB-2/mux41.vhd}
vcom -93 -work work {C:/Users/arnav/Desktop/CEG-3155-LAB-2/mux21.vhd}
vcom -93 -work work {C:/Users/arnav/Desktop/CEG-3155-LAB-2/nbitregister.vhd}
vcom -93 -work work {C:/Users/arnav/Desktop/CEG-3155-LAB-2/oneBitAdderSubtractor.vhd}
vcom -93 -work work {C:/Users/arnav/Desktop/CEG-3155-LAB-2/enardFF_2.vhd}
vcom -93 -work work {C:/Users/arnav/Desktop/CEG-3155-LAB-2/nBitAdderSubtractor.vhd}

