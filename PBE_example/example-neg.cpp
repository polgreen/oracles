
#include <cassert>
#include <iostream>
#include <sstream>
#include <random>

unsigned int fun(unsigned int x)
{
	unsigned int y = 1&x;
	if(y == 1)
		return x;
	else
		return ~1;
}

unsigned int parse_hex_string(std::string in)
{
	unsigned int result; 
	in.erase(0,2);
    result = std::stol(in, 0, 16);
    return result;
}

int main(int argc, const char *argv[])
{

	if(argc!=1)
	{
		std::cout<<"Wrong number of arguments, " << argc << "\n"
		<< "This is a negative example oracle for the function\n"
		<< "(synth-fun f ((x (BitVec 64))) (z BitVec 64)";
		std::cout<<"The oracle takes no inputs and returns \n"
		<< "a correct assignment for x and z"
		<< "as an SMTlib model.\n";
		return 1;
	}
	std::string x_string;
	srand (time(NULL));
	unsigned int x = rand();
	unsigned int z = rand();
	while(z==fun(x))
		z = rand();



	std::cout<<"(model \n" 
	<< "(define-fun x () (_ BitVec 64) (_ b"<< x<< " 64) )\n"
	<< "(define-fun z () (_ BitVec 64) (_ b"<< z<< " 64) ))\n"; 

	return 0;

}