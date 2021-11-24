#include <iostream>
#include <array>
#include <vector>
#include <algorithm>

int main()
{
    int area{0};
    std::array<int, std::size_t{15}> island{1, 3, 2, 4, 1, 3, 1, 4, 5, 2, 2, 1, 4, 2, 2};
    
    std::vector<int> myVector{};
    for(auto& i : island)
    {
        myVector.push_back(i);
    }
    
    int startHeight{0};
    int startIndex{0};
    bool startFound{false};
    
    for(int index = 0; index < myVector.size() - 1; index++)
    {
        if((myVector[index] > myVector[index + 1]) && (!startFound))
        {
            startHeight = myVector[index];
            startIndex = index;
            startFound = true;
        }

        if(startFound)
        {
            if(myVector[index] >= startHeight) // end found
            {
                int officialHeight{std::min(myVector[index], startHeight)};
                
                for(; startIndex < index; startIndex++)
                {
                    area += officialHeight - myVector[startIndex];
                    std::cout << area << std::endl;
                }

                // reset new starting point
                startHeight = myVector[index];
                startIndex = index;
            }
        }
    }

    // 
    startHeight=0;
    startIndex=0;
    startFound = false;

    // reverse vector
    std::reverse(myVector.begin(), myVector.end());

    for(int index = 0; index < myVector.size() - 1; index++)
    {
        if((myVector[index] > myVector[index + 1]) && (!startFound))
        {
            startHeight = myVector[index];
            startIndex = index;
            startFound = true;
        }

        if(startFound)
        {
            if(myVector[index] >= startHeight) // end found
            {
                int officialHeight{std::min(myVector[index], startHeight)};
                
                for(; startIndex < index; startIndex++)
                {
                    area += officialHeight - myVector[startIndex];
                    std::cout << area << std::endl;
                }

                // reset new starting point
                startHeight = myVector[index];
                startIndex = index;
            }
        }
    }
    
    std::cout << "Area = " << area << std::endl;

    return 0;
}