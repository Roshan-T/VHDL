all: result.vcd

result.vcd: jk.vhdl jk_tb.vhdl 
	ghdl -a jk.vhdl
	ghdl -a jk_tb.vhdl
	ghdl -e JK_FF_TB
	ghdl -r JK_FF_TB --vcd=result.vcd --stop-time=20us

clean:
	rm -rf result.vcd
