# 2-to-4 Decoder VHDL Code Readme

## Description
This VHDL code implements a 2-to-4 decoder (Decoder24) with two input bits (a) and four output bits (y). The decoder selects one of the four output lines based on the input value according to the following truth table:
- If a = "00", y = "0001"
- If a = "01", y = "0010"
- If a = "10", y = "0100"
- If a = "11", y = "1000"
- For all other input values, y is set to "0000".

## Files
- **Decoder24.vhdl**: Contains the VHDL code for the Decoder24 entity and architecture.

## Inputs
- **a**: Two-bit input.

## Outputs
- **y**: Four-bit output.
## Output Waveform


![decoder_wavefrom](https://github.com/Roshan-T/VHDL/assets/82012823/137dc6fd-9e39-4828-80f8-06b4ccddd14f)


## Implementation Details
- The process statement monitors changes in the input (a) and assigns the output (y) based on the input value using a case statement.
- Each case statement corresponds to a specific input value and assigns the appropriate output value accordingly.
- If the input value does not match any of the specified cases, the default assignment sets the output to "0000".

