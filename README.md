# Digital Design with Verilog  
Collection of Verilog modules implementing common digital components, along with their corresponding testbenches for simulation and verification.

---

## Overview

This repository contains Verilog designs of various digital logic components and their testbench files for functional verification. The modules include arithmetic logic units, counters, and adders, commonly used in digital systems design.

---

## Modules and Testbenches

Each module is implemented in a separate `.v` file, accompanied by a testbench `.v` file that simulates and verifies the module’s functionality.

| Module File               | Description                                    | Testbench File           |
|--------------------------|------------------------------------------------|--------------------------|
| `ALU_8_bit.v`             | 8-bit Arithmetic Logic Unit supporting multiple operations | `ALU_8_bit_tb.v`          |
| `RCA.v`                   | Ripple Carry Adder (multi-bit adder)           | `RCA_tb.v`                |
| `fa.v`                    | Full Adder                                     | `fa_tb.v`                 |
| `ha.v`                    | Half Adder                                     | `ha_tb.v`                 |
| `paralleladdsub_4bit.v`   | 4-bit Parallel Adder/Subtractor                 | `paralleladdsub_4bit_tb.v`|
| `JohnsonCounter_4bit.v`   | 4-bit Johnson Counter                           | `JohnsonCounter_4bit_tb.v`|
| `Mod5SynCounter.v`        | Modulo-5 Synchronous Counter                    | `Mod5SynCounter_tb.v`     |
| `UpDownCounter.v`         | Up/Down Counter                                | `UpDownCounter_tb.v`      |

---

## How to Use

1. Open your preferred Verilog simulation tool (e.g., Vivado, Icarus Verilog).
2. Load the module file (e.g., `ALU_8_bit.v`) and its corresponding testbench file (e.g., `ALU_8_bit_tb.v`).
3. Compile and run the simulation.
4. Observe waveforms or simulation output to verify correct behavior.

---

## Module Descriptions

- **ALU_8_bit.v**: Performs arithmetic and logical operations on 8-bit inputs, such as addition, subtraction, AND, OR, XOR, etc.
- **RCA.v**: Implements a ripple carry adder for 4-bit binary addition.
- **fa.v / ha.v**: Basic full and half adder modules used as building blocks for larger adders.
- **paralleladdsub_4bit.v**: 4-bit adder-subtractor supporting parallel operations controlled by a mode signal.
- **JohnsonCounter_4bit.v**: A 4-bit Johnson counter generating a specific sequence of bit patterns.
- **Mod5SynCounter.v**: Synchronous counter that counts modulo 5 (0 to 4).
- **UpDownCounter.v**: Counter capable of counting both up and down based on control input.

---

## Testbenches

Each testbench (`*_tb.v`) initializes input signals, applies stimulus to the module under test, and monitors outputs to verify functional correctness under various scenarios.

---
