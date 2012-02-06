import Data.Numbers.Primes
-- cabal install primes

sqrt' = floor . sqrt . fromIntegral

largestPrimeFactor n = head [ x | x <- [sqrt' n, sqrt' n - 1 .. 1], n `mod` x == 0, isPrime x]

main = print $ largestPrimeFactor 600851475143