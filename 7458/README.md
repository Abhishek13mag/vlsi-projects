# 7458 Logic Implementation

## Objective

Implement the logic of a 7458-type IC using Verilog HDL and verify the synthesized gate-level design.

## Tools Used

- Verilog HDL
- Yosys
- GTKWave
- VS Code
- Ubuntu (WSL)

## Files

- `7458.v` – RTL design
- `7458_synth.v` – Synthesized Verilog generated using Yosys
- `7458.v.save` – Yosys saved design file
- `output.pdf` – Synthesized circuit diagram

## Logic

### Section 1

```text
p2y = (p2a & p2b) | (p2c & p2d)
```

### Section 2

```text
p1y = (p1a & p1b & p1c) | (p1d & p1e & p1f)
```

## Synthesis

The Verilog design was synthesized using Yosys to view the resulting gate-level implementation.

The synthesized design consists of AND and OR gates connected according to the logic equations above.

## Circuit Diagram

![Synthesized Circuit](output.pdf)
