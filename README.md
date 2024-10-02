# tetris
a Tetris game using raylib which is a open source library by C

## raylib库安装方法  
配置好linux环境，按照raylib给出的方法，用cmake去build这个库，再用本项目给出的开发框架编写自己的程序
1. ubuntu系统下，安装好GCC编译器，VScode编辑器，make、cmake和git工具  

2. 运行命令：
```
sudo apt install libasound2-dev libx11-dev libxrandr-dev libxi-dev libgl1-mesa-dev libglu1-mesa-dev libxcursor-dev libxinerama-dev libwayland-dev libxkbcommon-dev  
```
    
```
# 下面这一句命令我运行失败，但是并不影响build这个库  
sudo dnf install wayland-devel libxkbcommon-devel wayland-protocols-devel  
```

3. Build raylib using CMake
```
git clone https://github.com/raysan5/raylib.git raylib
cd raylib
mkdir build && cd build
cmake -DBUILD_SHARED_LIBS=ON ..
make
sudo make install
```
4. 下载本开源项目给出的开发框架tetris_template，main.cpp中的代码是raylib网站给出的第一个example
5. 编译链接运行tetris_template
```
git clone https://github.com/LXY112233/tetris.git
cd tetris_template
mkdir build && cd build
cmake .. && make
cd .. && mkdir bin && cd bin
./main
```

