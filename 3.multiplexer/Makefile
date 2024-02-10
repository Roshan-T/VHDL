all: result.vcd

result.vcd: multiplexer.vhdl multiplexer_tb.vhdl 
	ghdl -a multiplexer.vhdl
	ghdl -a multiplexer_tb.vhdl
	ghdl -e multiplexer_tb
	ghdl -r multiplexer_tb --vcd=result.vcd

clean:
	rm -rf result.vcd
