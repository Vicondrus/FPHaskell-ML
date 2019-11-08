\begin{code}
gcd1 m n = if m == 0 then n 
           else gcd1 (n `mod` m) m
\end{code}