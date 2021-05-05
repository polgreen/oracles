// C++ program to check if a number is perfect
// square without finding square root

#include <iostream>
#include <sstream>
 
bool isPerfectSquare(int n)
{
    for (int i = 1; i * i <= n; i++) {
 
        // If (i * i = n)
        if ((n % i == 0) && (n / i == i)) {
            return true;
        }
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

    if (isPerfectSquare(n))
        std::cout << "true"<<std::endl;
    else
        std::cout << "false"<<std::endl;
 
    return 0;
}
