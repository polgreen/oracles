
#include <cassert>
#include <iostream>
#include <sstream>
#include <random>
#include <time.h>


int max(int x, int y)
{
	if(x>y)
		return y;
	else if(x==y)
	{
		while(1)
		{
			int z=rand();
			if(z!=y && z!=x)
				return z;
		}
	}
	else
		return x;
}

int main(int argc, const char *argv[])
{
	srand (time(NULL));
	assert(argc==1);
	int x = rand();
	int y = rand();


	std::cout<<"(model \n" 
	<< "(define-fun x () Int "<< x << ")\n"
	<< "(define-fun y () Int "<< y << ")\n"
	<< "(define-fun z () Int "<< max(x,y)<< "))\n"; 

	return 0;

}