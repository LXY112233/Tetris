#pragma once

#include "rayLibcpp.h"
#include <vector>
#include "Vec2.h"

class Board
{
private:
    class Cell
    {
        public:
            Cell();

            void SetColor(Color c_in);
            Color GetColor() const;

            bool Exists() const;

            void Remove();

        private:
            bool bExists;
            Color c;
    };

public:

    Board(Vec2<int> screenpos_in, Vec2<int> widthHeight_in, int cellSize_in, int padding_in);
    
    /* 
    * the auguments x and y are the position of cell in the board
    * we need turn x and y into the index of vector cells
    */ 
    void SetCell(Vec2<int> pos, Color c);
    void DrawCell(Vec2<int> pos) const; //this version is not have the color of cell
    void DrawCell(Vec2<int> pos, Color color) const;
    
    void DrawBorder() const;

    // this function is gonna draw the whole board
    void Draw() const;

    bool CellExists(Vec2<int> pos) const;

    int GetWidth() const;

    int GetHeight() const;

private:

    // the arguments of x and y is the position of board on the screen
    // int screenX;
    // int screenY;
    Vec2<int> screenPos;

    const int width;
    const int height;
    const int padding;

    std::vector<Cell> cells;
    const int cellSize;
};