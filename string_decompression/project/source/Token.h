#include <iostream>

class Token
{
    public:
        Token(std::string tokenString);
        ~Token() = default;
    
    //private:
        std::string m_tokenString;

};