#include <assert.h>
#include "Game.h"
#include "raylib.h"
#include "Settings.h"
#include <iostream>

Game::Game(int width, int height, int fps, std::string title)
    :
    board(settings::boardPosition, 
          settings::boadrWidthHeight, 
          settings::cellSize, 
          settings::padding),
    
    tetromino(board)
{
    SetTargetFPS(fps);  

    assert(!GetWindowHandle()); // if it triggers : the windows is already opened, you cant open another one
    InitWindow(width, height, title.c_str());

    
}

Game::~Game() noexcept
{
    assert(GetWindowHandle());  // if it triggers : the windows is already closed, you cant close another one
    CloseWindow();
}

bool Game::GameShouldClose() const
{
    return WindowShouldClose();
}

//the FPS is 60, so this function is called sixty times per second
void Game::Tick()
{
    BeginDrawing();
    this->Update(); 
    this->Draw();
    EndDrawing();
}

void Game::Update()
{

    // key detection
    if(IsKeyPressed(KEY_E))
    {
        tetromino.RotateClockWise();        
    }
    if(IsKeyPressed(KEY_Q))
    {
        tetromino.RotateCounterClockWise();        
    }
    if(IsKeyPressed(KEY_A))
    {
        tetromino.LeftShift();
    }
    if(IsKeyPressed(KEY_D))
    {
        tetromino.RightShift();
    }
    if(IsKeyPressed(KEY_S))
    {
        tetromino.DownShift();
    }
    if(IsKeyPressed(KEY_W))
    {
        tetromino.UpShift();     
    }
    if(IsKeyPressed(KEY_SPACE)) //hold one block
    {
                
    }
}

void Game::Draw()
{
    ClearBackground(BLACK);
    
    board.Draw();

    tetromino.Draw();
}