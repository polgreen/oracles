#include <cassert>
#include <iostream>
#include <sstream>


int multiply450bs(int y)
{
	int a=1; 
  int b=0; 
  int z=1; 
  int c=0;
  while(1)
  { 
    if(a == 0) 
    {
      if(b == 0) 
      {
        y=z+y; 
        a =!a;
        b=!b;
        c=!c; 
        if(!c) 
          break;
      }
      else 
      {
        z=z+y;
        a=!a; 
        b=!b; 
        c=!c;
        if(!c) 
          break; 
      }
    }
    else if(b == 0) 
    {
      z=y <<2; 
      a=!a;
    }
    else 
    {
      z=y<<3; 
      a=!a;
      b=!b; 
    }
  }

  return y;
}

int main(int argc, const char *argv[])
{

  if(argc!=2 || !(isdigit(*argv[1]) ))
  {
    std::cout<<"This is an input-output oracle for the function\n"
    << "(synth-fun multiply450bs ((y Int))(z Int)).";
    std::cout<<"The oracle takes 1 input argument: a value for y. \n"
    << "It returns the correct assignment for z "
    << "as an SMTlib model.\n";
    return 1;
  }

  int y;

  // arg 1 is x
  std::istringstream ssX(argv[1]);
  if(!(ssX >> y))
    std::cerr<<"Unable to parse y "<<std::endl;

  std::cout<<"(model \n"
  << "  (define-fun y () (_ BitVec 32) "<< multiply450bs(y) << ")\n)\n";
return 0;

}


