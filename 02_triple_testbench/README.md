# Triple Testbench (Verilog)

This project demonstrates a basic combinational Verilog module and its corresponding testbench. The design multiplies a 4-bit input by three and outputs the result. The testbench applies several test values and verifies the output in simulation.

## Description

Given a 4-bit input `a`, the `triple` module computes `result = 3 * a`, producing a 6-bit output. This project reinforces the fundamentals of arithmetic in Verilog and how to validate logic using a testbench.

## Logic Overview

The design consists of a simple continuous assignment:

assign result = 3 * a;

A testbench iterates over selected input values and uses `$monitor` to display the results during simulation.

## File Structure

- triple.v: Verilog module that computes the triple of a 4-bit number.
- triple_tb.v: Testbench that applies a series of test values to the module and prints the output.

## How to Run

This simulation can be run using:

- EDA Playground
- Vivado
- ModelSim / QuestaSim
- Icarus Verilog

No clock or reset is required, as the logic is purely combinational.
