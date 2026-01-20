is_even :: Int -> Bool
is_even num = num `mod` 2 == 0

main :: IO ()
main = do
    input <- getLine
    let num = read input :: Int
    putStrLn(show (is_even num))