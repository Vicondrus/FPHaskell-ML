\begin{code}
isevn n = if (n==0) then True else isodd (n-1)
isodd n = if (n==0) then False else isevn (n-1)
\end{code}