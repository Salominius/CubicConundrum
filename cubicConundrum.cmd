@echo off
call "C:\Program Files (x86)\Microsoft Visual Studio\18\BuildTools\VC\Auxiliary\Build\vcvars64.bat"

cl cubicConundrum.cpp /std:c++17 /EHsc /DEBUG /Z7 ^
  /Istb /Iglm /Iglfw/glfw-3.2.1.bin.WIN64/include /I%VULKAN_SDK%\Include ^
  %VULKAN_SDK%\Lib\vulkan-1.lib ^
  glfw\glfw-3.2.1.bin.WIN64\lib-vc2015\glfw3dll.lib

REM Run the executable
cubicConundrum.exe
