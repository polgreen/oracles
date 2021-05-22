# Oracles 
This repository contains sample oracles for synthesis modulo oracles and satisfiability modulo oracles. These problems can be solved by https://github.com/polgreen/delphi

## Building the oracles

You will need Eigen, CBMC, and gcc/g++.

Build instructions for oracles are contained within each directory. All oracles needed to be added to $PATH for Delphi to work. 

### number_oracles

### image oracles

### matrices

### prime_oracles

### control oracles

# Specs
The repository also contains sample SMTO and Synthesis files. 

- SMTO files with the extension '.smt2' can be run with Delphi 
- SMT files with the extension no-oracle.smt2 can be run with any SMT solver
- synthesis files with the extension '.sl' can be run with Delphi
- synthesis files with the extension 'no-oracle.sl' can be run with any SyGuS solver
