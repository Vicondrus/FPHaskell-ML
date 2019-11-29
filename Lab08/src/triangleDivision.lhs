\begin{code}
t1 n | n <=3     = 1 
     | otherwise = sum $ [(t1 i)*(t1 (n+1-i))
                           | i <- [2..(n-1)] ]
\end{code}
