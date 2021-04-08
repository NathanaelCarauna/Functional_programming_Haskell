import System.IO

obterChar:: IO Char 
obterChar = do hSetEcho stdin False
               x <- getChar
               hSetEcho stdin True
               return x

obterLinha :: IO [Char]
obterLinha = do 
    x <- obterChar
    case x of
        '\n' -> do
            putChar x
            return []
        '\DEL' -> do
            putStr "\b \b"
            return "\DEL"
        _ -> do
            putChar x
            string <- obterLinha
            if string == "\DEL" then do 
                obterLinha
            else do
                return (x:string)

main :: IO ()
main = do
  str <- obterLinha
  putStrLn str