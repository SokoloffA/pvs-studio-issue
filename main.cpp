#include <iostream>

using namespace std;

int main()
{
    std::string *buf = nullptr;
    std::string *ntObj = nullptr;

    while (buf != nullptr && buf != ntObj)
    {
        ntObj = buf;
    }
    return 0;
}
