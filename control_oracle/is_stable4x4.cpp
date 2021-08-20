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

  if(inputs.size()!=9)
    std::cout<<"Expected 16 numeric entries to a 4x4 matrix, got " << inputs.size()<<" inputs "<<std::endl;

	Eigen::MatrixXd m(4,4);
	m(0,0)=inputs[0];
	m(0,1)=inputs[1];
	m(0,2)=inputs[2];
	m(0,3)=inputs[3];
	m(1,0)=inputs[4];
	m(1,1)=inputs[5];
	m(1,2)=inputs[6];
	m(1,3)=inputs[7];
	m(2,0)=inputs[8];
	m(2,1)=inputs[9];
	m(2,2)=inputs[10];
	m(2,3)=inputs[11];
	m(3,0)=inputs[12];
	m(3,1)=inputs[13];
	m(3,2)=inputs[14];
	m(3,3)=inputs[15];


	
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