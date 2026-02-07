calcLen :: [Int] -> Int 
calcLen [] = 0
calcLen [_] = 1
calcLen (_:l) = 1 + calcLen l

main :: IO ()
main = do
  xs <- readLn :: IO [Int]
  print (calcLen xs)
