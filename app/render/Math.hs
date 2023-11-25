module Math where 

vectorAdd :: [Int] -> [Int] -> [Int]
vectorAdd v1 v2 = [x + y | (x , y) <- zip v1 v2]
