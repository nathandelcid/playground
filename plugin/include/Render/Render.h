#pragma once

#include <iostream>
#include "Render/PluginProcessor.h"
#include "Render/PluginEditor.h"

namespace Render {
class Render {
    public:
        void emitPluginList();
        void loadPlugin(std::string pluginName);
};
}
