#include <iostream>
#include <Eigen/Dense>
#include <Eigen/Eigenvalues> 
#include <complex>



int main(int argc, const char *argv[])
{

	if(argc!=10)
	{
		std::cout<<"Expected 9 numeric entries to a 3x3 matrix"<<std::endl;
		return 1;
	}

	double x00, x01, x02, x10, x11, x12, x20, x21, x22;

	// arg 1 is x
	std::istringstream ssX00(argv[1]);
	if(!(ssX00 >> x00))
	{
		std::cout<<"false"<<std::endl;
		return 10;
	}

	std::istringstream ssX01(argv[2]);
	if(!(ssX01 >> x01))
	{
		std::cout<<"false"<<std::endl;
		return 10;
	}

	std::istringstream ssX02(argv[3]);
	if(!(ssX02 >> x02))
	{
		std::cout<<"false"<<std::endl;
		return 10;
	}

	std::istringstream ssX10(argv[4]);
	if(!(ssX10 >> x10))
	{
		std::cout<<"false"<<std::endl;
		return 10;
	}

	std::istringstream ssX11(argv[5]);
	if(!(ssX11 >> x11))
	{
		std::cout<<"false"<<std::endl;
		return 10;
	}

	std::istringstream ssX12(argv[6]);
	if(!(ssX12 >> x12))
	{
		std::cout<<"false"<<std::endl;
		return 10;
	}
	std::istringstream ssX20(argv[7]);
	if(!(ssX20 >> x20))
	{
		std::cout<<"false"<<std::endl;
		return 10;
	}

	std::istringstream ssX21(argv[8]);
	if(!(ssX21 >> x21))
	{
		std::cout<<"false"<<std::endl;
		return 10;
	}

	std::istringstream ssX22(argv[9]);
	if(!(ssX22 >> x02))
	{
		std::cout<<"false"<<std::endl;
		return 10;
	}

	Eigen::MatrixXd m(3,3);
	m(0,0)=x00;
	m(0,1)=x01;
	m(0,2)=x02;
	m(1,0)=x10;
	m(1,1)=x11;
	m(1,2)=x12;
	m(2,0)=x20;
	m(2,1)=x21;
	m(2,2)=x22;

	
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