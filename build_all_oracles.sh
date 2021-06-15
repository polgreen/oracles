export PATH_TO_EIGEN=/Users/elipol/eigen

# PBE oracles
cd PBE
sh make_PBE_reffuncs.sh

# control oracles
cd ../control_oracle
g++ -I $PATH_TO_EIGEN is_stable.cpp -o isstable
g++ -I $PATH_TO_EIGEN is_stable3x3.cpp -o isstable3

#image oracles
cd ../image_oracles
make clean
make

cd ../number_oracles
g++ isSquare.cpp -o issquare
g++ isTriangle.cpp -o istriangle

cd ../prime_oracle
rm primes
make

