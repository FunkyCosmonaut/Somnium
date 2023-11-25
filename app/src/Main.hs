module Main where

import Math
import Window

main :: IO ()
main = do
    let vector1 = [1, 2, 3, 5]
    let vector2 = [4, 5, 6]
    let sumVector = vectorAdd vector1 vector2
    drawWindow

    print sumVector
    putStrLn "Hello, Haskell!"
