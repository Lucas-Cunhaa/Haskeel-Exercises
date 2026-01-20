inverse :: IO ()
inverse = do
    current <- (readLn :: IO Int)
    if current == -1 then return ()
    else do
        inverse 
        print current

main :: IO ()
main = inverse