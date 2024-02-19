# Finite State Machine (FSM) GCD VHDL Code Readme

## Description
This VHDL code implements a Finite State Machine (FSM) to compute the Greatest Common Divisor (GCD) of two input integers A and B. The FSM has six states: start, input, output, check, updatex, and updatey. It operates based on a clock signal (clk) and a reset signal (reset).

## Files
- **fsmgcd.vhdl**: Contains the VHDL code for the fsmgcd entity and architecture.

## Inputs
- **clk**: Clock signal.
- **reset**: Reset signal.
- **A**: Input integer A.
- **B**: Input integer B.

## Outputs
- **GCD**: Output integer representing the computed Greatest Common Divisor.

## Output Waveform
![gcd_wavefrom](https://github.com/Roshan-T/VHDL/assets/82012823/b72a14f0-c828-4ccd-a07b-cef1f9f24f6b)


## State Diagram

![gcd](https://github.com/Roshan-T/VHDL/assets/82012823/f3045b66-89f7-47f3-905d-43c6d1618009)


## Implementation Details
- The FSM transitions between states based on the current state and input values A and B.
- The states include:
  - **start**: Initial state of the FSM.
  - **input**: Reads the input integers A and B.
  - **check**: Compares the values of A and B.
  - **updatex**: Updates the value of X by subtracting Y.
  - **updatey**: Updates the value of Y by subtracting X.
  - **output**: Outputs the computed GCD.
- The FSM logic is defined within the `compute` process, which is sensitive to changes in A, B, and current_state.
- The GCD computation algorithm is based on the Euclidean algorithm, where X and Y are successively updated until they are equal.
- The output GCD is assigned when the FSM transitions to the output state.
- All states are explicitly defined within the case statement, ensuring comprehensive behavior handling.
- If the FSM encounters an undefined state, it transitions back to the start state.
- The FSM operation is synchronized with the rising edge of the clock signal.

