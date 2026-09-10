# 4:1 Multiplexer

## Objective

Design and simulate a 4:1 Multiplexer using Verilog HDL.

## Tools Used

- Verilog HDL
- Icarus Verilog
- GTKWave
- VS Code
- Ubuntu (WSL)

## Files

- `mux4_2.v` – 4:1 MUX design
- `mux4_2_tb.v` – Testbench
- `wave.vcd` – Simulation waveform

## Logic

The output is selected based on the two select inputs.

- `S1S0 = 00` → `Y = I0`
- `S1S0 = 01` → `Y = I1`
- `S1S0 = 10` → `Y = I2`
- `S1S0 = 11` → `Y = I3`

Logic equation:

`Y = (~S1 & ~S0 & I0) | (~S1 & S0 & I1) | (S1 & ~S0 & I2) | (S1 & S0 & I3)`

## Truth Table

| S1 | S0 | Output |
|----|----|--------|
| 0  | 0  | I0     |
| 0  | 1  | I1     |
| 1  | 0  | I2     |
| 1  | 1  | I3     |

## Simulation

The 4:1 Multiplexer was simulated using Icarus Verilog and verified using GTKWave.
