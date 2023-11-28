module Main where

import Math
import Window
import Keyboard
import qualified SDL
import Control.Monad (unless)

mainLoop :: IO ()
mainLoop = do
    quit <- processEvents
    unless quit $ do
        --Game logic here
        mainLoop

main :: IO ()
main = do
    let vector1 = [1, 2, 3, 5]
    let vector2 = [4, 5, 6]
    let result = a_Mean [5.0, 7.2, 8.3] 3
    let sumVector = vectorAdd vector1 vector2

    somnium <- createWindow
    mainLoop
    SDL.destroyWindow somnium
    SDL.quit

    print result
    print sumVector
    putStrLn "Hello, Haskell!"
