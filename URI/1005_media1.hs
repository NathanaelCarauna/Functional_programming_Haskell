import Text.Printf

p1 = 3.5
p2 = 7.5

toDouble :: [Char] -> Double
toDouble n = read n :: Double

media :: Double -> Double ->Double
media n1 n2 = (n1 * p1 + n2*p2) / (p1 + p2)

main :: IO()
main = do
    n1 <- getLine
    n2 <- getLine
    putStrLn ( printf "MEDIA = %.5f" (media (toDouble n1) (toDouble n2)))