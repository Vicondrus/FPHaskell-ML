\begin{code}
c []     = [[]] 
c (x:xs) = c xs ++ map (x:) (c xs)
\end{code}
