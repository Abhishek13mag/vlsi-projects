# 2:1 Multiplexer

## Objective

Design and simulate a 2:1 Multiplexer using Verilog HDL.

## Tools Used

- Verilog HDL
- Icarus Verilog
- GTKWave
- VS Code
- Ubuntu (WSL)

## Files

- `mux2_1.v` – 2:1 MUX design
- `mux2_1_tb.v` – Testbench
- `wave.vcd` – Simulation waveform

## Logic

The output is selected based on the select input `S`.

- `S = 0` → `Y = I0`
- `S = 1` → `Y = I1`

Logic equation:

`Y = (~S & I0) | (S & I1)`

## Truth Table

| S | I0 | I1 | Y |
|---|---|---|---|
| 0 | 0 | 0 | 0 |
| 0 | 0 | 1 | 0 |
| 0 | 1 | 0 | 1 |
| 0 | 1 | 1 | 1 |
| 1 | 0 | 0 | 0 |
| 1 | 0 | 1 | 1 |
| 1 | 1 | 0 | 0 |
| 1 | 1 | 1 | 1 |

## Simulation

The 2:1 Multiplexer was simulated using Icarus Verilog and verified using GTKWave.
