\begin{code}
queens 0 = [[]]
queens n = [d:t | t <- queens (n-1),
                  d <- [1..8],
                  sure d t 1] 

sure d []     disth = True
sure d (x:xs) disth 
   | d == x       = False 
   | d-disth == x = False
   | d+disth == x = False
   | otherwise    = sure d xs (disth+1)		  
\end{code}
