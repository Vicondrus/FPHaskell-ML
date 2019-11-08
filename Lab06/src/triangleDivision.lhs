\begin{code}
trgls n 
 | n <=3     = 1 
 | otherwise = sum $ [(trgls i)*(trgls (n+1-i))
                       | i <- [2..(n-1)] ]
\end{code}
