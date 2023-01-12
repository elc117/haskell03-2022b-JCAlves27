
add10toall :: [Int] -> [Int]
add10toall list1 = [x+10 | x <- list1]


multN :: Int -> [Int] -> [Int]
multN x list2 = [ x*y | y <- list2]


multN' :: Int -> [Int] -> [Int]
multN' x list = map (*x) list

applyExpr :: [Int] -> [Int]
applyExpr list = [ x*3+2 | x <- list]
