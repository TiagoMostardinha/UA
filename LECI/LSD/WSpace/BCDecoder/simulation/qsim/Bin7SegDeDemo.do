onerror {exit -code 1}
vlib work
vcom -work work Bin7SegDeDemo.vho
vcom -work work Bin7SegDe.vwf.vht
vsim -novopt -c -t 1ps -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.Bin7SegDe_vhd_vec_tst
vcd file -direction Bin7SegDeDemo.msim.vcd
vcd add -internal Bin7SegDe_vhd_vec_tst/*
vcd add -internal Bin7SegDe_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
