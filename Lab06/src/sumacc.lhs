\begin{code}
sumacc a []     = a
sumacc a (x:xs) = sumacc (a+x) xs
\end{code}