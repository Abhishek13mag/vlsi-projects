# 8:1 Multiplexer

## Objective

Design and simulate an 8:1 Multiplexer using Verilog HDL.

## Tools Used

- Verilog HDL
- Icarus Verilog
- GTKWave
- VS Code
- Ubuntu (WSL)

## Files

- `mux8_1.v` – 8:1 MUX design
- `mux8_1_tb.v` – Testbench
- `wave.vcd` – Simulation waveform

## Logic

The output is selected based on the three select inputs.

- `S2S1S0 = 000` → `Y = I0`
- `S2S1S0 = 001` → `Y = I1`
- `S2S1S0 = 010` → `Y = I2`
- `S2S1S0 = 011` → `Y = I3`
- `S2S1S0 = 100` → `Y = I4`
- `S2S1S0 = 101` → `Y = I5`
- `S2S1S0 = 110` → `Y = I6`
- `S2S1S0 = 111` → `Y = I7`

## Simulation

The 8:1 Multiplexer was simulated using Icarus Verilog and verified using GTKWave.

The testbench checks all `2^11 = 2048` possible input combinations.
