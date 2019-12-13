\begin{code}
twos=2:twos
someprimes n = 1 + foldr1 (^) (take n t)

--someprimes n = 1 + foldr1 (^) [2 | 2 <- [1..n]]
\end{code}
