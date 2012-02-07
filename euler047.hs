import Data.Numbers.Primes
import Data.List

numberWithPrimeFactors number howMany = length (nub $ primeFactors number) == howMany
numberWithConsecutivePrimeFactors number howMany = and $ map (\x -> numberWithPrimeFactors (number + x - 1) howMany) [1..howMany]

main = print $ find (\x -> numberWithConsecutivePrimeFactors x 4) [1..]