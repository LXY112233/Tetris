#pragma once 

#include <assert.h>
#include "Vec2.h"
#include "rayLibcpp.h"
#include "Board.h"

class Tetromino
{
public:
    Tetromino(const bool* shape, int dimension, Color color, const Board& board);
    
    void RotateClockWise();
    void RotateCounterClockWise();

    Vec2<int> GetPos() const;

    void LeftShift();
    void RightShift();
    void UpShift();
    void DownShift();

    void Draw() const;

public:
    enum class Rotation
    {
        UP,
        RIGHT,
        DOWN,
        LEFT
    };

private:
    Vec2<int> boardPos;
    const bool* shape;
    const int dimension;
    const Color color;
    const Board& board;
    Rotation currentRotation;
};

class Straight : public Tetromino
{
public:
    Straight(const Board& board)
        :
        Tetromino(shape, dimension, color, board)
    {
        static_assert(sizeof(shape)/sizeof(bool) == dimension * dimension);
    }

private:
    static constexpr bool shape[] = {0,0,0,0,
                                     1,1,1,1,
                                     0,0,0,0,
                                     0,0,0,0};

    static constexpr int dimension = 4;

    static constexpr Color color = SKYBLUE;
};

class Square : public Tetromino
{
public:
    Square(const Board& board)
        :
        Tetromino(shape, dimension, color, board)
    {
        static_assert(sizeof(shape)/sizeof(bool) == dimension * dimension);
    }
private:
    static constexpr bool shape[] = {1,1,
                                     1,1};

    static constexpr int dimension = 2;

    static constexpr Color color = YELLOW;
};

class Tee : public Tetromino
{
public:
    Tee(const Board& board)
        :
        Tetromino(shape, dimension, color, board)
    {
        static_assert(sizeof(shape)/sizeof(bool) == dimension * dimension);
    }
private:
    static constexpr bool shape[] = {0,1,0,
                                     1,1,1,
                                     0,0,0};

    static constexpr int dimension = 3;

    static constexpr Color color = MAGENTA;
};

class Jay : public Tetromino
{
public:
    Jay(const Board& board)
        :
        Tetromino(shape, dimension, color, board)
    {
        static_assert(sizeof(shape)/sizeof(bool) == dimension * dimension);
    }
private:
    static constexpr bool shape[] = {1,0,0,
                                     1,1,1,
                                     0,0,0};

    static constexpr int dimension = 3;

    static constexpr Color color = DARKBLUE;
};

class El : public Tetromino
{
public:
    El(const Board& board)
        :
        Tetromino(shape, dimension, color, board)
    {
        static_assert(sizeof(shape)/sizeof(bool) == dimension * dimension);
    }
private:
    static constexpr bool shape[] = {0,0,1,
                                     1,1,1,
                                     0,0,0};

    static constexpr int dimension = 3;

    static constexpr Color color = ORANGE;
};

class SkewS : public Tetromino
{
public:
    SkewS(const Board& board)
        :
        Tetromino(shape, dimension, color, board)
    {
        static_assert(sizeof(shape)/sizeof(bool) == dimension * dimension);
    }
private:
    static constexpr bool shape[] = {0,1,1,
                                     1,1,0,
                                     0,0,0};

    static constexpr int dimension = 3;

    static constexpr Color color = GREEN;
};

class SkewZ : public Tetromino
{
public:
    SkewZ(const Board& board)
        :
        Tetromino(shape, dimension, color, board)
    {
        static_assert(sizeof(shape)/sizeof(bool) == dimension * dimension);
    }
private:
    static constexpr bool shape[] = {1,1,0,
                                     0,1,1,
                                     0,0,0};

    static constexpr int dimension = 3;

    static constexpr Color color = RED;
};