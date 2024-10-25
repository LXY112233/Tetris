#include "Board.h"
#include <assert.h>

Board::Cell::Cell() 
    : 
    bExists(false), 
    c(WHITE)
{
    
}

void Board::Cell::SetColor(Color c_in)
{
    c = c_in;
    bExists = true;
}

Color Board::Cell::GetColor() const
{
    return c;
}

bool Board::Cell::Exists() const
{
    return bExists;
}

void Board::Cell::Remove()
{
    bExists = false;
}

Board::Board(Vec2<int> screenpos_in, Vec2<int> widthHeight_in, int cellSize_in, int padding_in)
    :
    screenPos(screenpos_in),
    width(widthHeight_in.GetX()),
    height(widthHeight_in.GetY()),
    cellSize(cellSize_in),
    padding(padding_in)
{
    assert(width > 0 && height > 0);
    assert(cellSize > 0);
    cells.resize(width*height);
}

void Board::SetCell(Vec2<int> pos, Color c)
{
    assert(pos.GetX() >= 0 && pos.GetY() >= 0 && pos.GetX() < width && pos.GetY() < height);
    cells[pos.GetY() * width + pos.GetX()].SetColor(c);
}

void Board::DrawCell(Vec2<int> pos) const
{
    Color color = this->cells[pos.GetY() * width + pos.GetX()].GetColor();
    DrawCell(pos, color);
}

void Board::DrawCell(Vec2<int> pos, Color color) const
{
    assert(pos.GetX() >= 0 && pos.GetY() >= 0 && pos.GetX() < width && pos.GetY() < height);
    Vec2<int> topLeft = screenPos + padding + (pos * cellSize);
    raycpp::DrawRectangle(topLeft, Vec2<int>{cellSize, cellSize} - padding, color);
}

void Board::DrawBorder() const
{
    raycpp::DrawRectangleLinesEx(screenPos - (cellSize/2), 
                                Vec2{width*cellSize, height*cellSize} + cellSize + (padding/2), 
                                cellSize/2, 
                                WHITE);
}

void Board::Draw() const
{
    this->DrawBorder();
    for(int iY = 0; iY < height; ++iY)
    {
        for(int iX = 0; iX < width; ++iX)
        {
            if(this->CellExists({iX,iY}))
            {
                DrawCell(Vec2<int>{iX,iY}); //this here should call the DrawCell funtion with color
            }
        }
    }
}

bool Board::CellExists(Vec2<int> pos) const
{
    return cells[pos.GetY()*width + pos.GetX()].Exists();
}

int Board::GetWidth() const
{
    return this->width;
}

int Board::GetHeight() const
{
    return this->height;
}