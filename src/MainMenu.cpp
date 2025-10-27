#include <MainMenu.hpp>
#include "raylib.h"


void MainMenu::init() {
    InitWindow(800, 450, "raylib [core] example - basic window");

    while (!WindowShouldClose())
    {
        BeginDrawing();
            ClearBackground(RAYWHITE);
            DrawText("Congrats! You created your first window!", 190, 200, 20, LIGHTGRAY);
        EndDrawing();
    }

    CloseWindow();

}

void MainMenu::draw() {


}

void MainMenu::logic() {

}
