# SR Flip-Flop

## Objective

Design and simulate a positive-edge triggered SR Flip-Flop using Verilog HDL.

## Tools Used

- Verilog HDL
- Icarus Verilog
- GTKWave
- VS Code
- Ubuntu (WSL)

## Files

- `srflipflop.v` – SR Flip-Flop design
- `srflipflop_tb.v` – Testbench
- `wave.vcd` – Simulation waveform

## Truth Table

| S | R | Q(next) |
|---|---|---------|
| 0 | 0 | Q       |
| 0 | 1 | 0       |
| 1 | 0 | 1       |
| 1 | 1 | Invalid |

## Simulation

The SR Flip-Flop was simulated using Icarus Verilog and verified using GTKWave.
