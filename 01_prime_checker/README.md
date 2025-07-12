# Prime Number Checker (Schematic to Verilog)

This project implements a 3-bit prime number detector in Verilog by translating a gate-level schematic into structural code. It demonstrates how to analyze a digital logic diagram and implement equivalent behavior using basic logic gates.

---

## Description

Given three inputs `a`, `b`, and `c`, this module evaluates whether the 3-bit binary number formed as `{c, b, a}` is a prime number. The output `P` is asserted (`1`) if the number is prime, and deasserted (`0`) otherwise.

### Detected prime numbers:
- 2 (`010`)
- 3 (`011`)
- 5 (`101`)
- 7 (`111`)

---

## Logic Overview

This Verilog module is based on the following schematic:

<img width="957" height="550" alt="Screenshot 2025-07-12 at 8 12 18 PM" src="https://github.com/user-attachments/assets/fc7732d0-75b8-4e1c-b7ec-5acd2f8b52a4" />


### Gate-level components used:
- NOT gate
- AND gates
- OR gate

The combination of these gates is structured to evaluate a specific boolean condition that outputs high for only the prime binary values from 0 to 7.

---

## How to Run

This project can be simulated using tools such as:

- EDA Playground (online)
- Vivado (Xilinx)
- ModelSim or QuestaSim (Mentor Graphics)
- Icarus Verilog (open source)

The testbench runs through all input combinations from `000` to `111` and prints whether the output is high (indicating a prime number).
