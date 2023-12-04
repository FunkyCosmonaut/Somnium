module Main where
import Math
import Window
import Keyboard
import qualified SDL
import qualified Graphics.Rendering.OpenGL as GL
import Control.Monad (unless)

isQuitEvent :: SDL.Event -> Bool
isQuitEvent event = case SDL.eventPayload event of
    SDL.QuitEvent -> True
    _ -> False

mainLoop :: SDL.Window -> IO ()
mainLoop window = do
    events <- SDL.pollEvents
    let quit = any (isQuitEvent) events
    unless quit $ do
        GL.clear [GL.ColorBuffer]
        GL.clearColor GL.$= GL.Color4 1 1 0 1
        SDL.glSwapWindow window
        --Game logic here
        mainLoop window

main :: IO ()
main = do

    somnium <- createWindow
    glContext <- SDL.glCreateContext somnium

    mainLoop(somnium)
    SDL.destroyWindow somnium
    SDL.quit

    print result
    print sumVector
    putStrLn "Hello, Haskell!"
