\begin{code}
ins x []     = [x]
ins x (y:ys) | x<y       = x:y:ys
             | otherwise = y:ins x ys

sorti []     = []
sorti (x:xs) = ins x (sorti xs)

mymin xs     = head (sorti xs)
\end{code}
