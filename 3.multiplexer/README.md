# 4-to-1 Multiplexer VHDL Code Readme

## Description
This VHDL code implements a 4-to-1 multiplexer (mux4) with four data inputs (a, b, c, d) and two select inputs (s1, s0). The output (y) is determined based on the select inputs as follows:
- If (s1 = '0' and s0 = '0'), y is set to input a.
- If (s1 = '0' and s0 = '1'), y is set to input b.
- If (s1 = '1' and s0 = '0'), y is set to input c.
- If (s1 = '1' and s0 = '1'), y is set to input d.

## Files
- **mux4.vhdl**: Contains the VHDL code for the mux4 entity and architecture.

## Inputs
- **a, b, c, d**: Data inputs.
- **s1, s0**: Select inputs.

## Outputs
- **y**: Output data.
## Output Waveform

![mux_wavefrom](https://github.com/Roshan-T/VHDL/assets/82012823/65a9f93d-2336-4e40-b3c2-e68b2d1b62ff)

## Implementation Details
- The process statement monitors changes in the select inputs (s1, s0) and assigns the output (y) based on the select inputs.
- The behavior of the multiplexer is defined by a set of conditional statements that determine which input is routed to the output based on the values of the select inputs.
