for f in *0.sl; do
echo "#include <assert.h> 
#include <iostream>
#include <sstream>
#include <stdlib.h> 
#define WIDTH 64" > $f-ref.cpp
smt2c "$(tail -n +2 $f.cvc4)" >> $f-ref.cpp

echo "int main(int argc, const char *argv[])
{

	if(argc!=2 || !(isdigit(*argv[1])))
	{
		std::cout<<\"error wrong inputs \" << std::endl;
		return 1;
	}

	unsigned long int a;

	// arg 1 is x
	std::istringstream ssA(argv[1]);
	if(!(ssA >> a))
		std::cerr<<\"Unable to parse input value\"<<std::endl;


	std::cout<< \"(_ bv\" <<f(a)<< \" \" << WIDTH <<\")\" << std::endl; 
	return 0;
}" >> $f-ref.cpp
g++ $f-ref.cpp -o $f-ref


# echo "(set-logic BV)
# (synth-fun f ((x (_ BitVec 64))) (_ BitVec 64)
#     ((Start (_ BitVec 64)))
#     ((Start (_ BitVec 64) (#x0000000000000000 #x0000000000000001 x (bvnot Start) (bvshl Start #x0000000000000001) (bvlshr Start #x0000000000000001) (bvlshr Start #x0000000000000004) (bvlshr Start #x0000000000000010) (bvand Start Start) (bvor Start Start) (bvxor Start Start) (bvadd Start Start) (ite (= Start #x0000000000000001) Start Start)))))" > $f.new.sl

# echo "(declare-var x (_ BitVec 64))
# (declare-oracle-fun rand rand ((_ BitVec 64)) (_ BitVec 64))
# (declare-oracle-fun reffunction">> $f.new.sl 
# echo $f-ref >> $f.new.sl 
# echo "((_ BitVec 64)) (_ BitVec 64))
# (constraint (=> (and (< (_ bv0 64) x)(>= (_ bv10 64) x))(= (f(rand x)) (reffunction (rand x)))))
# (check-synth)  " >> $f.new.sl

done

