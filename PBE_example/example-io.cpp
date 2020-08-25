
#include <cassert>
#include <iostream>
#include <sstream>

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

	if(argc!=2)
	{
		std::cout<<"Wrong number of arguments, " << argc << "\n"
		<< "This is an input-output oracle for the function\n"
		<< "(synth-fun f ((x (BitVec 64))) (z BitVec 64)";
		std::cout<<"The oracle takes a single input argument for x, in hex \n"
		<< "It returns the correct assignment for z "
		<< "as an SMTlib model.\n";
		return 1;
	}
	std::string x_string;
	unsigned int x;

	try{
		std::istringstream ssX(argv[1]);
		if(!(ssX >> x_string))
		{
			std::cerr<<"Unable to parse X "<<std::endl;
		}
		x = parse_hex_string(x_string);
	}
	catch(...){
		std::cout<<"This is an input-output oracle for the function\n"
		<< "(synth-fun f ((x (BitVec 64))) (z BitVec 64)";
		std::cout<<"The oracle takes a single input argument for x, in hex \n"
		<< "It returns the correct assignment for z "
		<< "as an SMTlib model.\n";
		return 1;
	}


	std::cout<<"(model \n" 
	<< "(define-fun z () (_ BitVec 64) (_ b"<< fun(x)<< " 64)  ))\n"; 

	return 0;

}