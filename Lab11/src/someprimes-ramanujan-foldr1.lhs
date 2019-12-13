\begin{code}
module Main where
 pow m n | n==0 && m==0 = error "0 at 0 undef."
         | m==0         = 0
         | n==0         = 1
         | even n       = pow m (n `div` 2) *
                          pow m (n `div` 2)
         | otherwise    = m *
                          pow m (n `div` 2) *
                          pow m (n `div` 2)
 twos = 2:twos
 someprimes n = 1 + foldr1 (pow) (take n twos)
 main = do
         print (someprimes 2)
         print (someprimes 3)
\end{code}
