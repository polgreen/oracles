# Oracles 
This repository contains sample oracles for synthesis modulo oracles and satisfiability modulo oracles. 

### Building the oracles

You will need Eigen, CBMC, and gcc/g++.
Build instructions for oracles are contained within each directory. All oracles needed to be added to $PATH for Delphi to work. 

To build all the oracles
- edit config.inc to include the correct directory for CBMC
- edit build_all_oracles.sh to give the correct PATH_TO_EIGEN
- run build_all_oracles.sh
- add all oracles to your path by running 'source add_to_path.sh'

### Oracles
- number_oracles: Contains the issquare and istriangle oracle used in maths_specs
- prime_oracles: Contains the isprime oracle used in maths_specs
- image oracles: Contains the image transformation oracle used in image_specs
- Control oracles: Contains stability oracles using Eigen that check stability of matrices used in control_specs
- PBE: contains the PBE oracles for the PBE specs in the same folder
- max_example: simple example of multiple oracles for the max synthesis problen

### Specs
- maths_specs: SMTO specifications using prime and number oracles
- image_specs: simple image transformations, uses image oracle
- control_specs: check safety and stability of floating point controllers. Uses control oracle
- PBE: contains PBE specs with and without oracles

The files are named as follows:
- Anything with the extension .nooracle.sl or .nooracle.smt2 can be run with a standard SyGuS or SMT solver respectively
- Anything with the extension .oracle.sl or .oracle.smt2 or .new.sl can only be run with an SMTO or SyMO compatible solver such as https://github.com/polgreen/delphi

In SyMo mode Delphi supports an extension of SyGuS-IF detailed here: https://github.com/SyGuS-Org/docs
In SMTO mode Delphi supports quantifier-free SMTLIB (with incomplete support for Reals/Strings) plus the syntax for declare-oracle-fun as described in the above document. 
