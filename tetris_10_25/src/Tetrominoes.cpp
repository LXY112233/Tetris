#include "Tetrominoes.h"

Tetromino::Tetromino(const bool* shape, int dimension, Color color, const Board& board)
    :
    shape(shape),
    dimension(dimension),
    color(color),
    boardPos(board.GetWidth()/2 - dimension/2, 0),
    board(board),
    currentRotation(Rotation::UP)
{

}

void Tetromino::RotateClockWise()
{
    this->currentRotation = Rotation((int(this->currentRotation) + 1) % 4);
}

void Tetromino::RotateCounterClockWise()
{
    if(this->currentRotation == Rotation::UP)
    {
        this->currentRotation = Rotation::LEFT;
    }
    else
    {
        this->currentRotation = Rotation(int(this->currentRotation)-1);
    }
}

Vec2<int> Tetromino::GetPos() const
{
    return this->boardPos;
}

void Tetromino::LeftShift() 
{
    this->boardPos.SetX(this->GetPos().GetX() - 1);
}

void Tetromino::RightShift() 
{
    this->boardPos.SetX(this->GetPos().GetX() + 1);
}

void Tetromino::UpShift() 
{
    this->boardPos.SetY(this->GetPos().GetY() - 1);
}

void Tetromino::DownShift() 
{
    this->boardPos.SetY(this->GetPos().GetY() + 1);
}

void Tetromino::Draw() const
{
    for(int y = 0; y < dimension; ++y)
    {
        for(int x = 0; x < dimension; ++x)
        {
            bool cell = false;
            switch (this->currentRotation)
            {
            case Tetromino::Rotation::UP:
                cell = shape[y * dimension + x];
                break;
            case Tetromino::Rotation::RIGHT:
                cell = shape[dimension * (dimension - 1) - dimension * x + y];
                break;
            case Tetromino::Rotation::DOWN:
                cell = shape[(dimension * dimension - 1) - dimension * y -x];
                break;
            case Tetromino::Rotation::LEFT:
                cell = shape[dimension - 1 + dimension * x - y];
                break;
            default:
                break;
            }
            if(cell)
            {
                board.DrawCell(this->boardPos + Vec2<int>{x,y}, this->color);
            }
        }
    }
}


