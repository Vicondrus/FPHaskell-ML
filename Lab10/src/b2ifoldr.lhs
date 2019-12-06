\begin{code}
f :: [Integer] -> Integer
f l = foldr (\ x y -> x+2*y) 0 (reverse l)
\end{code}