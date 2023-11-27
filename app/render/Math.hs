module Math where 

--Note, calls to "length" and other such things should be avoided
--It is best if stick to knowing what we have beforehand
vectorAdd :: [Int] -> [Int] -> [Int]
vectorAdd v1 v2 = [x + y | (x , y) <- zip v1 v2]

a_Mean :: [Float] -> Int -> Float
a_Mean x i = sum x /
    fromIntegral i :: Float




