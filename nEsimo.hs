getN :: [a] -> Int -> Int -> a
getN l current target
    | current == target = head l
    | otherwise = getN (tail l) (current+1) target

main :: IO ()
main = do
  xs <- readLn :: IO [Int]
  target <- readLn :: IO Int
  print (getN xs 1 target)
