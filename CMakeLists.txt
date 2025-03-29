cmake_minimum_required(VERSION 3.30 FATAL_ERROR)
project(MyProject VERSION 0.0.1)

set(CMAKE_CXX_STANDARD 20)
# First add JUCE
add_subdirectory(libs/juce)
add_subdirectory(plugin)

# Create your library
#add_library(Render src/Render.cpp src/Render.h)

# Link JUCE modules to your Render library




# Create executable and link to Render
# add_executable(${PROJECT_NAME} main.cpp)



# target_link_libraries(${PROJECT_NAME} PRIVATE Render)