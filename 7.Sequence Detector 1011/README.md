# Sequence Detector VHDL Code Readme

## Description
This VHDL code implements a sequence detector that recognizes a specific sequence of input signals. The sequence detector has four states: s0, s1, s2, and s3. It operates based on a clock signal (clk) and a reset signal (reset), with an additional input signal (input) and an output signal (output).

## Files
- **sequence.vhdl**: Contains the VHDL code for the sequence entity and architecture.

## Inputs
- **clk**: Clock signal.
- **reset**: Reset signal.
- **input**: Input signal to be detected for the sequence.

## Outputs
- **output**: Output signal indicating detection of the sequence.

## Output Waveform


![seq_wavefrom](https://github.com/Roshan-T/VHDL/assets/82012823/0e976d66-db28-4f29-80aa-d90493f7e59a)


## Implementation Details
- The process statement named `state_register` is sensitive to changes in the clock (clk) and reset (reset) signals. It updates the current state of the state machine based on the next state determined by the other process.
- The process statement inside `behavioral` is sensitive to changes in the current state and the input signal (input).
- The behavior of the sequence detector is defined by a case statement that switches based on the current state.
- The sequence to be detected is defined as the transition between states s0, s1, s2, and s3.
- If the input signal matches the expected sequence, the output signal (output) is set to '1' when the sequence is detected; otherwise, it remains '0'.
- The output signal is updated based on the current state and input signal, and the next state is determined accordingly.
- Unused states are handled with the default "others" case, resetting the state machine to the initial state (s0) and setting the output signal to '0'.
- The sequence detector is synchronous with the rising edge of the clock signal.
