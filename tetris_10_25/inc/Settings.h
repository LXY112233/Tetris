#pragma once

#include "Vec2.h"
#include <string>

namespace settings
{
    // window setting 
    inline constexpr int screenWidth = 800;
    inline constexpr int screenHeight = 600;
    inline constexpr int fps = 60;
    inline std::string title = "tetris raylib";

    // board setting
    inline constexpr int cellSize = 23;
    inline constexpr int padding = 2;
    inline constexpr Vec2<int> boardPosition{150, 70};
    inline constexpr Vec2<int> boadrWidthHeight{10, 20};
}   