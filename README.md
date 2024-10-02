# tetris
a Tetris game using raylib which is a open source library by C

## 日志  
1.ubuntu系统下，安装好GCC编译器，VScode编辑器，make、cmake和git工具  

2.遵循raylib给出的安装方法  

    2.1 运行  
  ```
  sudo apt install libasound2-dev libx11-dev libxrandr-dev libxi-dev libgl1-mesa-dev libglu1-mesa-dev libxcursor-dev libxinerama-dev libwayland-dev libxkbcommon-dev  
  ```
    2.2 这一句命令我运行失败，但是并不影响build这个库  
    ```
    sudo dnf install wayland-devel libxkbcommon-devel wayland-protocols-devel  
    ```

3.Build raylib using CMake
```
git clone https://github.com/raysan5/raylib.git raylib
cd raylib
mkdir build && cd build
cmake -DBUILD_SHARED_LIBS=ON ..
make
sudo make install
```
