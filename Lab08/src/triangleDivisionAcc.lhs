\begin{code}
t2 n = tracc n 1 [1]
 where 
  tracc n k cs 
   | k == n-1  = head cs
   | otherwise = tracc n (k+1) (cn:cs)
                  where cn = sum $ (zipWith (*)
                               cs (reverse cs))
\end{code}
