
add10toall :: [Int] -> [Int]
add10toall list1 = [x+10 | x <- list1]


multN :: Int -> [Int] -> [Int]
multN x list2 = [ x*y | y <- list2]


multN' :: Int -> [Int] -> [Int]
multN' x list = map (*x) list

applyExpr :: [Int] -> [Int]
applyExpr list = [ x*3+2 | x <- list]

applyExpr' :: [Int] -> [Int]
applyExpr' list = map (\x -> 3*x + 2) list

addSuffix :: String -> [String] -> [String]
addSuffix suffix list = [x ++ suffix | x <- list]

selectgt5 :: [Int] -> [Int]
selectgt5 list = [x | x <- list, x > 5]

sumOdds :: [Int] -> Int
sumOdds som = foldl (+) 0 [x | x <- som, odd x]

sumOdds' :: [Int] -> Int
sumOdds' som = foldl (+) 0 (filter (\x -> odd x) som)

selectExpr :: [Int] -> [Int]
selectExpr list = [x | x <- list, even x , x >= 20 , x <= 50]

countShorts :: [String] -> Int
countShorts list = length [x | x <- list, length x < 5]

calcExpr :: [Float] -> [Float]
calcExpr list = [x^2/2 | x <- list, (x^2/2) > 10]

trSpaces :: String -> String
trSpaces str = [if x == ' ' then '-' else x | x <- str]

selectSnd :: [(Int,Int)] -> [Int]
selectSnd tp = [snd t | t <- tp]

dotProd :: [Int] -> [Int] -> Int
dotProd lista lista2 = sum [x*y | (x,y) <- zip lista lista2]
