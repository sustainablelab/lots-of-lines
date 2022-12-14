/* *************DOC***************
 * Instead of just rendering to the default renderer:
 * - set rendering target to a texture
 * - make rendering calls to draw on the texture
 * - set rendering back to the default renderer
 * - copy the texture to present
 * - present renderer to display
 *
 * texR[] : an array of textures to render to (pointers to textures)
 * texIndex : index texR[] with an enum
 * Example: SDL_RenderCopy(ren, texR[texIndex], NULL, NULL);       // Copy texture to default renderer
 * Assign texIndex to selecct which texture gets rendered
 * *******************************/
#include <SDL.h>
#include <stdio.h>
#include "bool.h"
#include "color.h"
#include "line.h"
#include "window_info.h"

int density = 10;

int main(int argc, char* argv[])
{
    for(int i=0; i<argc; i++) puts(argv[i]);

    // Setup
    SDL_Init(SDL_INIT_VIDEO);
    wInfo wI;
    { // Set window location, size, and behavior
        Uint32 window_flags = SDL_WINDOW_ALWAYS_ON_TOP | SDL_WINDOW_BORDERLESS | SDL_WINDOW_INPUT_GRABBED;
        wI.x=50; wI.y=50; wI.w=600; wI.h=400; wI.flags=window_flags;
        if (argc>1) wI.x = atoi(argv[1]);
        if (argc>2) wI.y = atoi(argv[2]);
        if (argc>3) wI.w = atoi(argv[3]);
        if (argc>4) wI.h = atoi(argv[4]);
    }
    SDL_Window *win = SDL_CreateWindow(argv[0], wI.x, wI.y, wI.w, wI.h, wI.flags);
    SDL_Renderer *ren = SDL_CreateRenderer(win, -1, 0);
    // Check if render targets are supported
    if(  !SDL_RenderTargetSupported(ren)  )                             // Cannot render to texture
    { // Notify user and exit.
        printf("SDL_RenderTargetSupported: %s\n", SDL_RenderTargetSupported(ren) ? "true":"false");
        SDL_DestroyRenderer(ren);
        SDL_DestroyWindow(win);
        SDL_Quit();
        return EXIT_FAILURE;
    }
    // Set up for multiple renduring textures
    SDL_Texture *tex1 = SDL_CreateTexture(ren, SDL_PIXELFORMAT_RGBA8888, SDL_TEXTUREACCESS_TARGET, wI.w, wI.h);
    SDL_Texture *tex2 = SDL_CreateTexture(ren, SDL_PIXELFORMAT_RGBA8888, SDL_TEXTUREACCESS_TARGET, wI.w, wI.h);
    // Kick-off pointing to first texture
    SDL_Texture *texR[] = {tex1, tex2};                                 // texR: List of the textures
    enum {TEX1, TEX2} texIndex = TEX1;                                  // texIndex: Index textures by enum name

    // Program animation
    enum {MORE_DENSE, LESS_DENSE} direction = MORE_DENSE;               // Lines getting more or less dense
    bool swap_dir = false;                                              // Swap direction of line density change
    bool swap_tex = false;                                              // Swap which texture to display

    bool quit = false;
    while(quit == false)
    {
        // UI
        SDL_Event e;
        while(  SDL_PollEvent(&e)  )
        { if(e.type == SDL_KEYDOWN) { switch(e.key.keysym.sym) {
            case SDLK_q: quit = true; break;                            // Press q to quit
            case SDLK_SPACE: swap_dir = true; break;                    // Press SPACE to force change
            default: break;
        } /* switch */ } /* if */ } /* while */

        // Render
        // Draw something on each texture using Render API
        // Program animation
        switch(direction)                                               // Line density is inc or dec
        { // Animate changing line density
            case MORE_DENSE: density++; if(density>100) {density=100; swap_dir=true;}                break;
            case LESS_DENSE: density--; if(density<3)   {density=3;   swap_dir=true; swap_tex=true;} break;
            default: break;
        }
        if(swap_dir==true)                                                  // Growing or shrinking
        {
            switch(direction)
            {
                case MORE_DENSE: direction=LESS_DENSE; break;
                case LESS_DENSE: direction=MORE_DENSE; break;
                default: break;
            }
            swap_dir=false;                                             // Reset trigger
        }
        if(swap_tex==true)                                              // Orange or blue
        {
            switch(texIndex)
            {
                case TEX1: texIndex=TEX2; break;
                case TEX2: texIndex=TEX1; break;
                default: break;
            }
            swap_tex=false;                                             // Reset trigger
        }
        { // Render to tex1
            SDL_SetRenderTarget(ren, tex1);                             // Render to texture instead of default
            color bgnd = {.r=200, .g=100, .b=100};                      // Set background color
            SDL_SetRenderDrawColor(ren, bgnd.r, bgnd.b, bgnd.g, 255);   // Draw using background color
            SDL_RenderClear(ren);                                       // Clear to background color
            int N=density;                                              // Number of lines;
            for(int i=0; i<N; i++)
            {
                int X = (i*wI.w)/N; int Y = (i*wI.h)/N;
                { // Lines begin at top left
                    int X_BEG = 0; int Y_BEG = 0;
                    line l = {.x1=X_BEG, .y1=Y_BEG+Y, .x2=X_BEG+X, .y2=wI.h, .c={.r=0,.g=20,.b=20}}; // Define line
                    SDL_SetRenderDrawColor(ren, l.c.r, l.c.b, l.c.g, 255);      // Draw using background color
                    SDL_RenderDrawLine(ren,l.x1,l.y1,l.x2,l.y2);                // Draw line
                }
                { // Lines begin at top center
                    /* int X_BEG = wI.w/2; int Y_BEG = 0; */
                    /* line l = {.x1=X_BEG, .y1=Y_BEG+Y, .x2=X_BEG+X, .y2=wI.h, .c={.r=0,.g=20,.b=20}}; // Define line */
                    /* SDL_SetRenderDrawColor(ren, l.c.r, l.c.b, l.c.g, 255);      // Draw using background color */
                    /* SDL_RenderDrawLine(ren,l.x1,l.y1,l.x2,l.y2);                // Draw line */
                }
            }
        }
        { // Render to tex2
            SDL_SetRenderTarget(ren, tex2);                             // Render to texture instead of default
            color bgnd = {.r=100, .g=200, .b=100};                      // Set background color
            SDL_SetRenderDrawColor(ren, bgnd.r, bgnd.b, bgnd.g, 255);   // Draw using background color
            SDL_RenderClear(ren);                                       // Clear to background color
            int N=density;                                                   // Number of lines
            for(int i=0; i<N; i++)
            {
                int X = (i*wI.w)/N; int Y = (i*wI.h)/N;
                line l = {.x1=wI.w, .y1=0+Y, .x2=wI.w-X, .y2=wI.h, .c={.r=200,.g=200,.b=200}};
                SDL_SetRenderDrawColor(ren, l.c.r, l.c.b, l.c.g, 255);
                SDL_RenderDrawLine(ren, l.x1, l.y1, l.x2, l.y2);
            }
        }
        SDL_SetRenderTarget(ren, NULL);                             // Render to default renderer again
        SDL_RenderCopy(ren, texR[texIndex], NULL, NULL);            // Copy texture to default renderer
        SDL_RenderPresent(ren);                                     // Draw to screen
        SDL_Delay(10);                                              // Time between frames
    }

    // Shutdown
    SDL_DestroyTexture(tex1);
    SDL_DestroyTexture(tex2);
    SDL_DestroyRenderer(ren);
    SDL_DestroyWindow(win);
    SDL_Quit();
    return EXIT_SUCCESS;
}
