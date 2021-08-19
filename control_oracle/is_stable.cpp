#include <iostream>
#include <Eigen/Dense>
#include <Eigen/Eigenvalues> 
#include <complex>
#include <string>
#include "../utility_parser/utility_parser.h"
#include <util/cmdline.h>

#define CBMC_ORACLE_OPTIONS ""

void help(std::ostream &out)
{
  out << "no help yet\n";
}

int main(int argc, const char *argv[])
{
	cmdlinet cmdline;
  if(cmdline.parse(argc, argv, CBMC_ORACLE_OPTIONS))
  {
    std::cerr << "Usage error\n";
    help(std::cerr);
    return 1;
  }

	std::vector<double> inputs;

  for(const auto &arg : cmdline.args)
  {
    std::istringstream arg_stream(arg);
    auto arg_parsed = float2double(arg_stream);
    inputs.push_back(arg_parsed);
  }

  if(inputs.size()!=4)
    std::cout<<"Expected 4 numeric entries to a 2x2 matrix, got " << inputs.size()<<" inputs "<<std::endl;

	Eigen::MatrixXd m(2,2);
	m(0,0)=inputs[0];
	m(0,1)=inputs[1];
	m(1,0)=inputs[2];
	m(1,1)=inputs[3];

	
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