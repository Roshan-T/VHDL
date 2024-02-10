all: result.vcd

result.vcd: gcd.vhdl gcd_tb.vhdl 
	ghdl -a gcd.vhdl
	ghdl -a gcd_tb.vhdl
	ghdl -e fsmgcd_tb
	ghdl -r fsmgcd_tb --vcd=result.vcd

clean:
	rm -rf result.vcd
