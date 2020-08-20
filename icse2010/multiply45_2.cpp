#include <cassert>
#include <iostream>
#include <sstream>


int multiply45(int y)
{ 
  int z;
  z =y <<2; 
  y = z + y;
  z =y <<3; 
  y = z + y; 
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
  << "  (define-fun y () (_ BitVec 32) "<< multiply45(y) << ")\n)\n";
return 0;

}


