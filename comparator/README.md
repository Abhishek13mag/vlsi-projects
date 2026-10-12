# 4-Bit Magnitude Comparator using Verilog

## Overview

This project implements and verifies a 4-bit magnitude comparator using Verilog HDL. The comparator compares two 4-bit unsigned binary inputs and determines whether the first input is greater than, less than, or equal to the second input.

The design is tested using a Verilog testbench, simulated with Icarus Verilog, and its waveforms can be viewed using GTKWave.

## Features

- Compares two 4-bit unsigned inputs (`A` and `B`).
- Generates three outputs:
  - `A_gt_B`: HIGH when A is greater than B.
  - `A_lt_B`: HIGH when A is less than B.
  - `A_eq_B`: HIGH when A equals B.
- Exhaustive verification of all 256 input combinations.
- Automatic pass/fail checking in the testbench.
- Waveform generation in VCD format.



## Comparator Logic

The outputs are defined as:

- \(A\_gt\_B = 1\) when \(A > B\)
- \(A\_lt\_B = 1\) when \(A < B\)
- \(A\_eq\_B = 1\) when \(A = B\)

For valid binary inputs, exactly one of the three outputs should be HIGH at a time.


## Example Results

| A | B | A_gt_B | A_lt_B | A_eq_B |
|---:|---:|---:|---:|---:|
| 9 | 4 | 1 | 0 | 0 |
| 2 | 7 | 0 | 1 | 0 |
| 5 | 5 | 0 | 0 | 1 |
| 15 | 0 | 1 | 0 | 0 |
| 0 | 15 | 0 | 1 | 0 |

