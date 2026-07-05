# Vending Machine Controller using Verilog HDL

## Overview

This project implements a Finite State Machine (FSM) based vending machine in Verilog HDL.

The controller accepts ₹5 and ₹10 coins, dispenses a product when the required amount is reached, and returns change whenever applicable.

---

## Features

- Finite State Machine (FSM)
- ₹5 and ₹10 coin support
- Product dispensing
- Automatic change return
- Reset functionality
- Clock-driven sequential design

---

## Inputs

| Signal | Width | Description |
|---------|------|-------------|
| clk | 1 | System Clock |
| rst | 1 | Reset |
| in | 2 | Coin Input |

---

## Outputs

| Signal | Description |
|---------|-------------|
| out | Product Dispensed |
| change | Returned Change |

---

## Coin Encoding

| Input | Coin |
|------|------|
|00|No Coin|
|01|₹5|
|10|₹10|

---

## States

| State | Meaning |
|-------|---------|
|S0|₹0 Collected|
|S1|₹5 Collected|
|S2|₹10 Collected|

---

## Operation

- Insert ₹5 → Move to S1
- Insert ₹10 → Move to S2
- ₹5 + ₹10 → Dispense Product
- ₹10 + ₹5 → Dispense Product
- ₹10 + ₹10 → Dispense Product + ₹5 Change
- No Coin → Return Collected Money

---

## Tools Used

- Verilog HDL
- Xilinx Vivado
- GitHub

--
