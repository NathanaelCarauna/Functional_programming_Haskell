import Text.Printf
    
pi' = 3.14159
circuloArea r = pi' * r**2
numero n = read n :: Double

main :: IO()
main = do
    r <- getLine    
    putStrLn (printf "A=%.4f" (circuloArea (numero r)))