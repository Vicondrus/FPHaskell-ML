\begin{code}
myand []     = True
myand (x:xs) = x && myand xs
\end{code}
