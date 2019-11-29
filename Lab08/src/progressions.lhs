\begin{code}
--arithmetic
genA :: Int -> Int -> Int -> [Int]
genA inc m n | m > n     = [] 
             | otherwise = m:genA inc (m+inc) n 

--geometric
genG :: Int -> Int -> Int -> [Int]
genG r m n | m > n     = [] 
           | otherwise = m:genG r (m * r) n 

genSi :: Int -> Int -> [Int]
genSi m n = genA 1 m n
\end{code}