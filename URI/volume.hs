import Text.Printf

pi' = 3.14159

numero m = read m :: Double

volume r = 4.0/3.0 * pi' * r ** 3

main :: IO ()
main = do
       r <- getLine
       putStrLn ("VOLUME = " ++ printf "%.3f" (volume (numero r)))