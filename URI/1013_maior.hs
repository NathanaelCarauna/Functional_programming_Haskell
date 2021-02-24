import Text.Printf

toInt :: [Char] -> Int
toInt n = read n :: Int

maiorAb :: Int -> Int -> Int
maiorAb a b = (a + b + abs(a-b)) `div` 2

maiorAbC :: Int -> Int -> Int -> Int
maiorAbC a b c = (maiorAb a (maiorAb b c))

main :: IO()
main = do
    linha <- getLine
    let (a:b:c:_) = map (read :: String -> Int) $ words linha
    putStrLn (show (maiorAbC a b c) ++ " eh o maior")
    