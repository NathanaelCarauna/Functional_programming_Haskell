import Text.Printf

toDouble :: [Char] -> Double
toDouble n = read n :: Double

consumo :: Double -> Double -> Double
consumo km l = km/ l
main :: IO()
main = do
    km <- getLine
    l <- getLine
    putStrLn $ printf "%.3f km/l" (consumo (toDouble km) (toDouble l))