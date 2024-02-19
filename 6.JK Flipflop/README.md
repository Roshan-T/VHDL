# JK Flip-Flop VHDL Code Readme

## Description
This VHDL code implements a JK flip-flop with asynchronous reset (rst) and clock (clk) inputs, as well as J and K inputs. The flip-flop has two outputs: Q and its complement Qbar.

## Files
- **JK_FF.vhdl**: Contains the VHDL code for the JK_FF entity and architecture.

## Inputs
- **J**: Input J of the JK flip-flop.
- **K**: Input K of the JK flip-flop.
- **clk**: Clock input.
- **rst**: Asynchronous reset input.

## Outputs
- **Q**: Output Q of the JK flip-flop.
- **Qbar**: Complementary output of Q.

## Output Waveform


![jk_wavefrom](https://github.com/Roshan-T/VHDL/assets/82012823/e420f73c-df0c-4685-9136-7382983c2a70)

## Implementation Details
- The process statement is sensitive to changes in the clock (clk) and reset (rst) signals.
- Inside the process, a variable `qn` is used to store the next value of Q.
- When the reset signal is asserted (rst = '1'), the output Q is set to '0'.
- On the rising edge of the clock signal (clk'event and clk = '1'), the next value of Q (qn) is determined based on the inputs J and K.
- The behavior of the flip-flop is defined according to the JK flip-flop truth table:
  - If J=0 and K=0, Q remains unchanged (qn := qn).
  - If J=0 and K=1, Q is reset to '0'.
  - If J=1 and K=0, Q is set to '1'.
  - If J=1 and K=1, Q toggles its state (qn := not qn).
- The output Qbar is the complement of Q.
- Unused combinations of J and K are handled with a null statement.
- The outputs Q and Qbar are assigned the values of Q and its complement, respectively, at the end of the process.
