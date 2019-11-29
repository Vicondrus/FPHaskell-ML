\begin{code}
siGen :: Int -> Int -> [Int]
siGen m n | n < m      = [] 
          | otherwise  = m:siGen (m+1) n 
\end{code}