# 3-to-8 Decoder

## Objective

Design and simulate a 3-to-8 Decoder with Enable input using Verilog HDL.

## Tools Used

- Verilog HDL
- Icarus Verilog
- GTKWave
- VS Code
- Ubuntu (WSL)

## Files

- `decoder3_8.v` – 3-to-8 Decoder design
- `decoder3_8_tb.v` – Testbench
- `wave.vcd` – Simulation waveform

## Logic

When `En = 0`, all outputs are `0`.

When `En = 1`, one output is activated based on the inputs `A`, `B`, and `C`.

| En | A | B | C | Y |
|----|---|---|---|---|
| 0 | X | X | X | 00000000 |
| 1 | 0 | 0 | 0 | 00000001 |
| 1 | 0 | 0 | 1 | 00000010 |
| 1 | 0 | 1 | 0 | 00000100 |
| 1 | 0 | 1 | 1 | 00001000 |
| 1 | 1 | 0 | 0 | 00010000 |
| 1 | 1 | 0 | 1 | 00100000 |
| 1 | 1 | 1 | 0 | 01000000 |
| 1 | 1 | 1 | 1 | 10000000 |

## Simulation

The 3-to-8 Decoder was simulated using Icarus Verilog and verified using GTKWave.
