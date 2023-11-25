module Main where

import Math

main :: IO ()
main = do
    let vector1 = [1, 2, 3, 5]
    let vector2 = [4, 5, 6]
    let sumVector = vectorAdd vector1 vector2

    print sumVector
    putStrLn "Hello, Haskell!"
