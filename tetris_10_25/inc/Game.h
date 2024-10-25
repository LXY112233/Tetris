#pragma once

#include <string>
#include "Board.h"
#include "Tetrominoes.h"

class Game
{
public:
    // constructor
    Game(int width, int height, int fps, std::string title);

    // after doing like this, you will cant use the copy constructor and = operator anymore
    Game(const Game& other) = delete;
    Game& operator=(const Game& other) = delete;

    ~Game() noexcept;    // destructor, it wont cast any exception

    bool GameShouldClose() const;   // getter, so it has const

    void Tick();    // call the Update and Draw functions

private:
    void Update();  // update function for data update

    void Draw();    // update the graphic 60 times per sec

    Board board;

    Jay tetromino;
};