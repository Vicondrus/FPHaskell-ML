\begin{code}
f = 0:1:zipWith (+) f (tail f)
\end{code}