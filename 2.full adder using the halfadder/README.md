# Half Adder and Full Adder VHDL Code Readme

## Description
This VHDL code consists of two entities: a half adder and a full adder. The half adder adds two input bits (A and B) and generates a sum output (Sum) and a carry output (Carry). The full adder adds three input bits (A, B, and C) and also produces a sum output (Sum) and a carry output (Carry). These entities are implemented using IEEE standard logic operations.

## Files
- **halfadder.vhdl**: Contains the VHDL code for the half adder entity and architecture.
- **fulladder.vhdl**: Contains the VHDL code for the full adder entity and architecture.

## Half Adder
### Inputs
- **A**: Input bit A.
- **B**: Input bit B.

### Outputs
- **Sum**: Sum output.
- **Carry**: Carry output.

### Implementation Details
- The sum output is computed using the XOR operation on input bits A and B.
- The carry output is computed using the logical AND operation on input bits A and B.

## Full Adder
### Inputs
- **A**: Input bit A.
- **B**: Input bit B.
- **C**: Input carry bit.

### Outputs
- **Sum**: Sum output.
- **Carry**: Carry output.
### Output Waveform
![full adder using half _wavefrom](https://github.com/Roshan-T/VHDL/assets/82012823/006b92e3-8474-40ee-8ec8-2507a355b0df)
### Diagram
![diagram](https://github.com/Roshan-T/VHDL/assets/82012823/4dacf6ca-7f2c-42fb-a6b8-4d320a25ea35)


### Implementation Details
- The full adder entity instantiates two half adder components internally to perform the addition.
- The sum output is computed using the XOR operation on input bits A, B, and C (after passing A and B through the first half adder).
- The carry output is computed using logical OR operations on the carry outputs of the internal half adders.

