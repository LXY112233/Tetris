# tetris
a Tetris game using raylib which is a open source library by C

## 日志  
1. ubuntu系统下，安装好GCC编译器，VScode编辑器，make、cmake和git工具  

2. 运行命令：
  ```
  sudo apt install libasound2-dev libx11-dev libxrandr-dev libxi-dev libgl1-mesa-dev libglu1-mesa-dev libxcursor-dev libxinerama-dev libwayland-dev libxkbcommon-dev  
  ```
3. 这一句命令我运行失败，但是并不影响build这个库  
  ```
  sudo dnf install wayland-devel libxkbcommon-devel wayland-protocols-devel  
  ```

4. Build raylib using CMake
```
git clone https://github.com/raysan5/raylib.git raylib
cd raylib
mkdir build && cd build
cmake -DBUILD_SHARED_LIBS=ON ..
make
sudo make install
```
5. 下载本开源项目给出的开发框架tetris_template，这是raylib网站给出的第一个example（我的笔记本是2K分辨率，缩放比例在200%，启动后窗口就会怪怪的，外接显示器缩放比例在100%是正常的）
