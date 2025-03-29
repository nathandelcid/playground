#include <iostream>
#include "Render/Render.h"

using std::cout;
using std::string;
using std::endl;

int main(int argc, char *argv[]) {
    Render::Render render;
    render.emitPluginList();
    
    /*
    int count = 1;
    string name;

    while (count < argc) {
        name = argv[count++];
    }

    name.erase(0, name.find_first_not_of(" \t\n\r\f\v "));
    name.erase(name.find_last_not_of(" \t\n\r\f\v ") + 1);
    cout << name << endl;
    */

    return 0;
}