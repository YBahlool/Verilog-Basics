# 4-Bit ALU (Arithmetic Logic Unit) in Verilog

This project implements a simple 4-bit Arithmetic Logic Unit (ALU) using Verilog. The ALU performs one of four operations—addition, multiplication, modulus, or bitwise AND—based on a 2-bit control signal. A corresponding testbench provides input values and monitors the result in simulation.

## Description

The ALU module takes two 4-bit inputs `a` and `b`, and a 2-bit control signal `op` that selects which operation to perform. The result is output as an 8-bit value to support overflow from multiplication or addition.

## Supported Operations

The ALU performs one of the following operations based on the value of `op`:

- op = 0: Addition (a + b)
- op = 1: Multiplication (a * b)
- op = 2: Modulus (a % b)
- op = 3: Bitwise AND (a & b)

## File Structure

- ALU.v: Contains the ALU module logic
- ALU_Test.v: A testbench that sets example input values and prints the result using `$monitor`

## How to Run

You can run this simulation using:

- EDA Playground
- Vivado
- ModelSim / QuestaSim
- Icarus Verilog

The testbench cycles through selected values and operation codes to demonstrate each function of the ALU.
