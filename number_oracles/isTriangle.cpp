// C++ program to check if a number is a triangular number
// using simple approach.
#include <iostream>
#include <sstream>

 
// Returns true if 'num' is triangular, else false
bool isTriangular(int num)
{
    // Base case
    if (num < 0)
        return false;
 
    // A Triangular number must be sum of first n
    // natural numbers
    int sum = 0;
    for (int n=1; sum<=num; n++)
    {
        sum = sum + n;
        if (sum==num)
            return true;
    }
 
    return false;
}
 
// Driver code
int main(int argc, const char *argv[])
{
 
    if(argc!=2 || !(isdigit(*argv[1])))
    {
        std::cout<<"Expected integer value"<<std::endl;
        return 1;
    }

    int n;
    // arg 1 is x
    std::istringstream ssX(argv[1]);
    if(!(ssX >> n))
        std::cerr<<"Unable to parse input "<<std::endl;

    if (isTriangular(n))
        std::cout << "true"<<std::endl;
    else
        std::cout << "false"<<std::endl;
 
    return 0;
}
