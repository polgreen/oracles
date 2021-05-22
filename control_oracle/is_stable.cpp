#include <iostream>
#include <Eigen/Dense>
#include <Eigen/Eigenvalues> 
#include <complex>



int main(int argc, const char *argv[])
{

	if(argc!=5)
	{
		std::cout<<"Expected 4 numeric entries to a 2x2 matrix"<<std::endl;
		return 1;
	}

	double x00;
	double x01;
	double x10;
	double x11;

	// arg 1 is x
	std::istringstream ssX(argv[1]);
	if(!(ssX >> x00))
	{
		std::cout<<"false"<<std::endl;
		return 10;
	}

	std::istringstream ssY(argv[2]);
	if(!(ssY >> x01))
	{
		std::cout<<"false"<<std::endl;
		return 10;
	}

	std::istringstream ssX1(argv[3]);
	if(!(ssX1 >> x10))
	{
		std::cout<<"false"<<std::endl;
		return 10;
	}

	std::istringstream ssY1(argv[4]);
	if(!(ssY1 >> x11))
	{
		std::cout<<"false"<<std::endl;
		return 10;
	}

	Eigen::MatrixXd m(2,2);
	m(0,0)=x00;
	m(0,1)=x01;
	m(1,0)=x10;
	m(1,1)=x11;

	
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