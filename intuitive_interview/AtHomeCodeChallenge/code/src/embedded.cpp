#include "../include/embedded.h"
#include <io.h> // replaces #include <unistd.h>
#include <Windows.h>

#include <iostream>

// Constructor
System::System()
{
    std::cout << "test pass\n";
}

// Destructor
System::~System()
{
}

SystemParameters & System::read()
{
    return System::currentParameters;
}

UpdateStatus System::write(SystemParameters const & params)
{
    this->currentParameters.node_id = params.node_id;
    this->currentParameters.system_name = params.system_name;
    // In order to create a blocking call, adding a time sleep.
    Sleep(5); // sleep(5) ported from unitstd.h to Windows.h
    return DONE;
}
