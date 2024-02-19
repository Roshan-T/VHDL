# Least Common Multiple (LCM) VHDL Code Readme

## Description
This VHDL code calculates the Least Common Multiple (LCM) of two input integers, A and B, using a finite state machine (FSM). The FSM has seven states: start, input, output, check, check1, updatex, and updatey. It operates based on a clock signal (CLK) and a reset signal (RESET).

## Files
- **lcm.vhdl**: Contains the VHDL code for the lcm entity and architecture.

## Inputs
- **RESET**: Reset signal.
- **CLK**: Clock signal.
- **a**: Input integer A.
- **b**: Input integer B.

## Outputs
- **lcm_result**: Output integer representing the computed Least Common Multiple.

## Output Waveform


![lcm_wavefrom](https://github.com/Roshan-T/VHDL/assets/82012823/50a01d98-e31b-42bc-9c3c-ba1e12204e90)


## FSM 
![lcm](https://github.com/Roshan-T/VHDL/assets/82012823/54ec84ac-2bc1-4c39-ad8b-a8d46483a033)



## Implementation Details
- The FSM transitions between states based on the current state and input values A and B.
- The states include:
  - **start**: Initial state of the FSM.
  - **input**: Reads the input integers A and B and computes their product (z).
  - **check**: Compares the values of A and B to determine which one is smaller.
  - **check1**: Performs the Euclidean algorithm to find the Greatest Common Divisor (GCD) of A and B.
  - **updatex**: Swaps the values of A and B.
  - **updatey**: No operation.
  - **output**: Computes the LCM using the formula LCM = (A * B) / GCD and outputs the result.
- The FSM logic is defined within the `compute` process, which is sensitive to changes in A, B, and current_state.
- The Euclidean algorithm is used to compute the GCD of A and B in the **check1** state.
- The output LCM is calculated as the product of A and B divided by their GCD.
- Unused states are handled with a default "others" case, transitioning the FSM back to the start state.
- The FSM operation is synchronized with the rising edge of the clock signal.

