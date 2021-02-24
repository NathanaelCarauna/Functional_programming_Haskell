import Text.Printf

p1 = 2
p2 = 3
p3 = 5

toDouble :: [Char] -> Double
toDouble n = read n :: Double

media :: Double -> Double ->Double -> Double
media n1 n2 n3 = (n1 * p1 + n2*p2 + n3*p3) / (p1 + p2 + p3)

main :: IO()
main = do
    n1 <- getLine
    n2 <- getLine
    n3 <- getLine
    putStrLn ( printf "MEDIA = %.1f" (media (toDouble n1) (toDouble n2) (toDouble n3)))