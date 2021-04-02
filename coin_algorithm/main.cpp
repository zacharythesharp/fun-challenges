#include <iostream>

using namespace std;

class ICoin
{
    public: 
        virtual ~ICoin() = default;
        virtual int getValue() = 0;
};

class Quarter : public ICoin
{
    public:
        Quarter() : ICoin(), m_value(25) {};
        int getValue() override { return m_value; }

    private:
        int m_value;
};

class Dime : public ICoin
{
    public:
        Dime() : ICoin(), m_value(10) {};
        int getValue() override { return m_value; }

    private:
        int m_value;
};

class Nickel : public ICoin
{
    public:
        Nickel() : ICoin(), m_value(5) {};
        int getValue() override { return m_value; }

    private:
        int m_value;
};

class Penny : public ICoin
{
    public:
        Penny() : ICoin(), m_value(1) {};
        int getValue() override { return m_value; }

    private:
        int m_value;
};

// Gasp! Globals!
Quarter quarter{};
Dime dime{};
Nickel nickel{};
Penny penny{};

void assessQuantities(int numQ, int numD, int numN, int numP, int spliceAmount)
{
    auto totalAmount{numQ * quarter.getValue() + numD * dime.getValue() + numN * nickel.getValue() + numP * penny.getValue()};
    if(totalAmount == spliceAmount)
    {
         cout << "Pennies: " << numP << " || Nickels: " << numN << " || Dimes: " << numD << " || Quarters: " << numQ << endl << endl;
    }
}

void interativeCombinations(int spliceAmount)
{
    const int maxQuarters{spliceAmount / quarter.getValue()};
    const int maxDimes{spliceAmount / dime.getValue()};
    const int maxNickels{spliceAmount / nickel.getValue()};
    const int maxPennies{spliceAmount / penny.getValue()};

    for(int numPennies = 0; numPennies <= maxPennies; numPennies++)
    {
        for(int numNickels = 0; numNickels <= maxNickels; numNickels++)
        {
            for(int numDimes = 0; numDimes <= maxDimes; numDimes++)
            {
                for(int numQuarters = 0; numQuarters <= maxQuarters; numQuarters++)
                {
                    assessQuantities(numQuarters, numDimes, numNickels, numPennies, spliceAmount);
                }
            }
        }
    }
}

int main()
{
    int spliceAmount{38}; // $1, 100 cents
    interativeCombinations(spliceAmount);
    return 0;
}