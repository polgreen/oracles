#include <iostream>
#include <Eigen/Dense>
#include <Eigen/Eigenvalues> 
#include <complex>
#include <string>
#include "../utility_parser/utility_parser.h"
#include <util/cmdline.h>


int main(int argc, const char *argv[])
{
  if(argc!=5)
  {
    std::cout<<"Expected 4 numeric entries to a 2x2 matrix"<<std::endl;
    return 1;
  }

	std::vector<double> inputs;

  for(int i=1; i<argc; i++)
  {
    std::istringstream arg_stream(argv[i]);
    try{
    auto arg_parsed = float2double(arg_stream);
    // std::cout<<"arg string was "<< arg_stream.str()<<std::endl;
    inputs.push_back(arg_parsed);
    // std::cout<<"arg result " << inputs[i-1]<<std::endl;
  }
  catch(...)
  {
    std::cout<<"false"<<std::endl;
    return 0;
  }
    
  }

  if(inputs.size()!=9)
    std::cout<<"Expected 9 numeric entries to a 3x3 matrix, got " << inputs.size()<<" inputs "<<std::endl;

	Eigen::MatrixXd m(3,3);
	m(0,0)=inputs[0];
	m(0,1)=inputs[1];
	m(0,2)=inputs[2];
	m(1,0)=inputs[3];
	m(1,1)=inputs[4];
	m(1,2)=inputs[5];
	m(2,0)=inputs[6];
	m(2,1)=inputs[7];
	m(2,2)=inputs[8];


	
	Eigen::EigenSolver<Eigen::MatrixXd> es(m);
	Eigen::VectorXcd eivals = es.eigenvalues();
  // std::cout<<"eigen values "<< eivals <<std::endl;

	for(const auto &val: eivals)
	{
		if(val.imag()==0)
		{
			if(val.real()>1)
			{
				std::cout<<"false"<<std::endl;
				return 10;
			}
		}
    else
    {
        std::cout<<"false"<<std::endl;
        return 10;
    }
	}

	std::cout<<"true" <<std::endl;

	return 0;

}