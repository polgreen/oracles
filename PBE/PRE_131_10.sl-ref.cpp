#include <assert.h> 
#include <iostream>
#include <sstream>
#include <stdlib.h> 
#define WIDTH 64
unsigned long int f(unsigned long int x$0) {
  return (1 & x$0 >> 1) == 1 ? ((1 & x$0 >> 16) == 1 ? (~x$0 >> 1) >> 4 : 1 ^ x$0) : ((1 & x$0) == 1 ? (~x$0 >> 1) >> 4 : ((1 & x$0 >> 16) == 1 ? (~x$0 >> 1) >> 4 : 1 ^ x$0));
}

int main(int argc, const char *argv[])
{

	if(argc!=2 || !(isdigit(*argv[1])))
	{
		std::cout<<"error wrong inputs " << std::endl;
		return 1;
	}

	unsigned long int a;

	// arg 1 is x
	std::istringstream ssA(argv[1]);
	if(!(ssA >> a))
		std::cerr<<"Unable to parse input value"<<std::endl;


	std::cout<< "(_ bv" <<f(a)<< " " << WIDTH <<")" << std::endl; 
	return 0;
}
