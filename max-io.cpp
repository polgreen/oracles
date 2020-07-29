
#include <cassert>
#include <iostream>
#include <sstream>

int max(int x, int y)
{
	if(x>y)
		return x;
	else 
		return y;
}

int main(int argc, const char *argv[])
{
	assert(argc==3);
	assert(isdigit(*argv[1]) && isdigit(*argv[2]));
	int x;
	int y;

	// arg 1 is x
	std::istringstream ssX(argv[1]);
	if(!(ssX >> x))
		std::cerr<<"Unable to parse X "<<std::endl;

	std::istringstream ssY(argv[2]);
	if(!(ssY >> y))
		std::cerr<<"Unable to parse y "<<std::endl;

	std::cout<<"(model \n" 
	<< "(define-fun z () Int "<< max(x,y)<< "))\n"; 

	return 0;

}