\begin{code}
powerset :: Set a -> Set a -> [Set a]
powerset [] base     = [base]
powerset (x:xs) base = powerset xs base ++
                       powerset xs (x:base)
\end{code}