#include "raylib.h"

int main() {

    int width = 800;
    int height = 600;
    InitWindow(width, height, "gip");

    while (!WindowShouldClose())
    {

        BeginDrawing();

            ClearBackground(RAYWHITE);

            EndDrawing();
    }

    CloseWindow();
    
    return 0;
}