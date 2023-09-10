@echo off

SET CMAKE_ARGS=-DLLAMA_CUBLAS=on
SET FORCE_CMAKE=1 
xcopy "%CUDA_PATH%\extras\visual_studio_integration\MSBuildExtensions\" "C:\Program Files\Microsoft Visual Studio\2022\Community\MSBuild\Microsoft\VC\v170\BuildCustomizations\" /E /I /Y
xcopy "%CUDA_PATH%\extras\visual_studio_integration\MSBuildExtensions\" "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\MSBuild\Microsoft\VC\v160\BuildCustomizations\" /E /I /Y


cd %~dp0
git pull
cd ../../../python_embeded

python.exe -s -m pip install scikit-build
python.exe -s -m pip install cmake
python.exe -s -m pip install llama-cpp-python==0.1.78 --force-reinstall --upgrade --no-cache-dir


PAUSE