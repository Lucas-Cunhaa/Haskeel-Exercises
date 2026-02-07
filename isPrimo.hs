nextDivisor :: Int -> Int ->Int
nextDivisor current i
    | mod current i == 0 = i
    | otherwise = nextDivisor current (i+1)

isPrimo :: Int -> Bool
isPrimo num 
    | num == 1 = False
    | nextDivisor num 2 == num = True 
    | otherwise = False 


main :: IO ()
main = do 
    input <- getLine
    let n = read input :: Int 
    print(isPrimo n)
