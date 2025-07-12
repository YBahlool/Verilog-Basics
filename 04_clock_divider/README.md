# Clock Divider in Verilog

This project implements a configurable clock frequency divider in Verilog. The module takes a high-frequency input clock and produces a lower-frequency output clock based on a user-defined ratio. A testbench verifies the behavior by simulating multiple divider settings.

## Description

The `clock_divider` module divides the input clock (`clk_in`) by a specified `ratio`. The output clock (`clk_out`) toggles after every `ratio` number of input clock cycles, effectively generating a slower square wave.

The module uses a counter that increments on each rising edge of the input clock. When the counter reaches `ratio - 1`, it toggles the output clock and resets the counter.

## File Structure

- clock_divider.sv: Contains the clock divider module logic
- test_clock_divider.sv: A testbench that applies different `ratio` values and simulates the output waveform over time

## How to Run

This simulation can be run using:

- EDA Playground
- Vivado
- ModelSim / QuestaSim
- Icarus Verilog

The testbench includes a basic input clock generator and toggles the `reset` signal before applying each ratio. The simulation time is extended to allow multiple output clock transitions to be observed.
