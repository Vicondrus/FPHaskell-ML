\begin{code}
apN :: [[a]] -> [a]
apN xss = [x | xs <- xss, x <- xs]
\end{code}