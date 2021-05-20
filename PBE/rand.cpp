
#include <cassert>
#include <iostream>
#include <sstream>
#include <stdlib.h>  
#define WIDTH 64



int answer (unsigned int a)
{
  srand(a);	
  return rand();
}

int main(int argc, const char *argv[])
{

	if(argc!=2 || !(isdigit(*argv[1])))
	{
		std::cout<<"This is the oracle for rand \n"
		<< "it takes 1 inputs, the bitvec value and ";
		std::cout
		<< "it returns a single bitvec value\n";
		return 1;
	}

	unsigned int a;

	// arg 1 is x
	std::istringstream ssA(argv[1]);
	if(!(ssA >> a))
		std::cerr<<"Unable to parse input value"<<std::endl;


	std::cout<< "(_ bv" <<answer(a)<< " " << WIDTH <<")\n"; 

	return 0;

}