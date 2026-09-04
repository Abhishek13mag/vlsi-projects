# D Latch

## Objective

Design and simulate a D Latch using NAND gate logic in Verilog HDL.

## Tools Used

- Verilog HDL
- Icarus Verilog
- GTKWave
- VS Code
- Ubuntu (WSL)

## Files

- `dflipflop.v` – D Latch using NAND gates
- `dflipflop_tb.v` – Testbench
- `wave.vcd` – Simulation waveform

## Logic

The D Latch is implemented using NAND gates.

- `CLK = 1` → Q follows D
- `CLK = 0` → Q holds its previous state

## Simulation

The design was simulated using Icarus Verilog and verified using GTKWave.
