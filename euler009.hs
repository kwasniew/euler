-- optimization trick for a = 1000 - b - c derived from the requirement a + b + c == 1000
main = print $ product $ head [ [a,b,c] | c <- [1..1000], b <- [1..c], a <- [1000 - b - c], a^2 + b^2 == c^2, a + b + c == 1000]
