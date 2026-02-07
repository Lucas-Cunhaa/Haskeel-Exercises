showPairs :: Int -> Int -> [Int]
showPairs current end
    | current >= end-1 = []
    | mod (current+1) 2 == 0 = (current+1) : showPairs (current+1) end
    | otherwise = showPairs (current+1) end


main :: IO ()
main = do 
    input <- getLine
    let n = read input :: Int 
    input2 <- getLine
    let m = read input2 :: Int 
    print(showPairs n m)