# 8-bit ALU in Verilog

A simple 8-bit Arithmetic Logic Unit (ALU) implemented in Verilog.

## Features
- 8-bit inputs (A, B) and output (Result)
- 3-bit opcode selects operation:
  - 000: Add
  - 001: Subtract
  - 010: AND
  - 011: OR
  - 100: XOR
  - 101: Increment
  - 106: Decrement
  - 111: Pass-through
- Zero and Carry flags

## Usage
- Import `alu.v` into your FPGA project or simulator
- Connect inputs and opcode to your testbench or FPGA pins
