# JK Flip-Flop

## Objective

Design and simulate a positive-edge triggered JK Flip-Flop using Verilog HDL.

## Tools Used

- Verilog HDL
- Icarus Verilog
- GTKWave
- VS Code
- Ubuntu (WSL)

## Files

- `jkflipflop.v` – JK Flip-Flop design
- `jkflipflop_tb.v` – Testbench
- `wave.vcd` – Simulation waveform

## Truth Table

| J | K | Q(next) |
|---|---|---------|
| 0 | 0 | Q       |
| 0 | 1 | 0       |
| 1 | 0 | 1       |
| 1 | 1 | ~Q      |

## Simulation

The JK Flip-Flop was simulated using Icarus Verilog and verified using GTKWave.
