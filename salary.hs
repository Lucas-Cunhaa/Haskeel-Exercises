salary_bonus :: Int -> Float

salary_bonus points
    | points >= 41 = 500 
    | points >= 31 = 400 
    | points >= 21 = 300 
    | points >= 11 = 200 
    | points >= 1 = 100 
    | otherwise = 0

main :: IO ()
main = do 
    input <- getLine
    let n = read input :: Int
    putStrLn("Bonus: " ++ show (salary_bonus n))
