#!/bin/bash

# Create the build directory and change into it
mkdir -p build && cd build

# Configure CMake from the command line passing configure-time options. 
cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_CUDA_ARCHITECTURES=72 -DFLAMEGPU_VISUALISATION=ON

# Build the required targets. In this case all targets
cmake --build . --target all -j 8
