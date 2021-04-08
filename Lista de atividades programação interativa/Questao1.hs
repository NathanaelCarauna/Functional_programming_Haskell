
putStr' :: String -> IO ()
putStr' [] = return ()
putStr' str = sequence_ [putChar char | char <- str]