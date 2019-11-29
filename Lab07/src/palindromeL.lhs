\begin{code}
concatenate [] = []
concatenate (x:xs) = x ++ (concatenate xs)

elimSpaces x = filter (/=' ') x

palindromeL x = elimSpaces (concatenate x) == reverse (elimSpaces (concatenate x))
\end{code}