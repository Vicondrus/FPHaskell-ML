\begin{code}
divisors n = [ x | x <- [2..n `div` 2],
                   n `mod` x == 0]
                   
isPrime n = divisors n == []

primesFromTo m n = [x | x <- [m..n],
                        isPrime x]

semiPrimes m n = [ (x*y,(x,y)) | 
                       x <- primesFromTo m n,
                       y <- primesFromTo x n,
                       x*y <= n]
\end{code}