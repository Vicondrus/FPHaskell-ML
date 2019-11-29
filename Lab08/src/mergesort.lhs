\begin{code}
merge [] ys = ys
merge xs [] = xs
merge (x:xs) (y:ys) 
    | x <= y    = x:merge xs (y:ys)
    | otherwise = y:merge (x:xs) ys 

ms []  = []
ms [x] = [x] 
ms (x:xs) = merge (ms left) (ms right)
	      where
	        half  = length (x:xs) `div` 2 
	        left  = take half (x:xs)
	        right = drop half (x:xs)
\end{code}