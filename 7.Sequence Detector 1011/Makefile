all: result.vcd

result.vcd: seq.vhdl seq_tb.vhdl 
	ghdl -a seq.vhdl
	ghdl -a seq_tb.vhdl
	ghdl -e sequence_tb
	ghdl -r sequence_tb --vcd=result.vcd --stop-time=20us

clean:
	rm -rf result.vcd
