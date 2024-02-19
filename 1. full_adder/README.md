# Full Adder VHDL Code Readme

## Description
This VHDL code implements a full adder circuit. A full adder adds three input bits (A, B, and C) and generates a sum output (sum) and a carry output (carry). It utilizes the IEEE standard logic library for logic operations.

## Files
- **full_adder.vhdl**: Contains the VHDL code for the full adder entity and architecture.

## Usage
To use this VHDL code, instantiate the `full_adder` entity in your design, providing appropriate inputs (A, B, and C) and connecting the outputs (sum and carry) as needed.

## Inputs
- **A**: Input bit A.
- **B**: Input bit B.
- **C**: Input carry bit.

## Outputs
- **sum**: Sum output.
- **carry**: Carry output.

## Implementation Details
- The sum output is computed using the XOR operation on input bits A, B, and C.
- The carry output is computed using the logical OR operation on different combinations of input bits A, B, and C.

## Output Waveform

![full adder_wavefrom](https://github.com/Roshan-T/VHDL/assets/82012823/fc855511-1f0b-4277-9f29-39a129d5364b)
