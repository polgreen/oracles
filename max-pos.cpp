
#include <cassert>
#include <iostream>
#include <sstream>
#include <random>

int max(int x, int y)
{
	if(x>y)
		return x;
	else 
		return y;
}

int main(int argc, const char *argv[])
{
	assert(argc==1);
	int x = rand();
	int y = rand();


	std::cout<<"(model \n" 
	<< "(define-fun x () Int "<< x << ")\n"
	<< "(define-fun y () Int "<< y << ")\n"
	<< "(define-fun z () Int "<< max(x,y)<< "))\n"; 

	return 0;

}