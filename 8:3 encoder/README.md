# 8-to-3 Encoder

## Objective

Design and simulate an 8-to-3 Encoder using Verilog HDL.

## Tools Used

- Verilog HDL
- Icarus Verilog
- GTKWave
- VS Code
- Ubuntu (WSL)

## Files

- `Encoder8to3.v` – 8-to-3 Encoder design
- `Encoder8to3_tb.v` – Testbench
- `wave.vcd` – Simulation waveform

## Logic

The encoder converts one active input out of 8 into a 3-bit binary output.

| Active Input | Y |
|--------------|---|
| I0 | 000 |
| I1 | 001 |
| I2 | 010 |
| I3 | 011 |
| I4 | 100 |
| I5 | 101 |
| I6 | 110 |
| I7 | 111 |

The design assumes only one input is active at a time.

## Simulation

The 8-to-3 Encoder was simulated using Icarus Verilog and verified using GTKWave.
