decimalToBianry :: Int -> String
decimalToBianry num
    | (div num 2) == 0 = show (num `mod` 2)
    | mod num 2 == 0 = decimalToBianry (div num 2) ++ "0"
    | otherwise = decimalToBianry (div num 2) ++ "1"

main :: IO ()
main = do 
    input <- getLine
    let n = read input :: Int 
    print(decimalToBianry n)