## 4bit_carry_lookahead_adder
Verilog implementation and functional verification of 4bit carry lookahead adder using a testbench and simulation waveform.

##Inputs

| Signal | Width | Description |
|---------|---------|-------------|
| A | 4-bit | First operand |
| B | 4-bit | Second operand |
| Cin | 1-bit | Carry input |

##Outputs

| Signal | Width | Description |
|---------|---------|-------------|
| Sum | 4-bit | Addition result |
| Cout | 1-bit | Carry output |


## Boolean equations
For each bit position:

## Generate Signal
G = A & B

## Propagate Signal
P = A ^ B


Carry signals are generated using:

C1 = G0 + P0Cin.
C2 = G1 + P1G0 + P1P0Cin.
C3 = G2 + P2G1 + P2P1G0 + P2P1P0Cin.
C4 = G3 + P3G2 + P3P2G1 + P3P2P1G0 + P3P2P1P0Cin.


Sum bits are calculated as:
Si = Pi ⊕ Ci

## Test cases
| A | B | Cin | Sum | Cout |
|---|---|---|---|---|
| 0000 | 0000 | 0 | 0000 | 0 |
| 0011 | 0101 | 0 | 1000 | 0 |
| 0111 | 1000 | 0 | 1111 | 0 |
| 1111 | 1111 | 0 | 1110 | 1 |
| 1111 | 1111 | 1 | 1111 | 1 |

## Author 
Apoorva B A  ECE Student

