#include <iostream>
#include <vector>

using namespace std;

const char LEFT_BRACKET = '[';
const char RIGHT_BRACKET = ']';

string decompress(string tokenString)
{
    string expandedString;

        if(tokenString.find(LEFT_BRACKET) == string::npos)
        {
            return tokenString;
        }

        int length{tokenString.length()};

        int leftBracketCount{1};
        int rightBracketCount{0};
        int leftBracketIndex{tokenString.find(LEFT_BRACKET)};
        int rightBracketIndex{0};

        int index = leftBracketIndex + 1;
        while(leftBracketCount != rightBracketCount) 
        {
            if(tokenString[index] == RIGHT_BRACKET)
            {
                rightBracketCount++;
            }
            else if (tokenString[index] == LEFT_BRACKET)
            {
                leftBracketCount++;
            }
            
            if(rightBracketCount == leftBracketCount)
            {
                rightBracketIndex = index;
            }
            index++;
        }

        // now we have our bracket bounds
        int clusterNumber = static_cast<int>(tokenString[leftBracketIndex - 1]) - 48;

        expandedString = tokenString.substr(0, leftBracketIndex - 1); // get front
        
        for (int i = 0; i < clusterNumber; i++) // get middle
        {
        expandedString += tokenString.substr(leftBracketIndex + 1, rightBracketIndex - leftBracketIndex - 1);
        }

        expandedString += tokenString.substr(rightBracketIndex + 1, tokenString.length() - rightBracketIndex);
        // cout << expandedString << endl;
        expandedString = decompress(expandedString);

    return expandedString;
}

int main()
{
    string compressedString{"c2[0[a]b]"};
    string expandedString{decompress(compressedString)};
    cout << endl << "FINAL: " << expandedString;

    return 0;
}