\begin{code}
stdDevAux [] sum sq_sum n = sqrt ((sq_sum / n) - ((sum / n) ** 2))
stdDevAux (x:xs) sum sq_sum n = stdDevAux xs (sum + x) (sq_sum + (x * x)) (n + 1)

stdDev xs = stdDevAux xs 0 0 0
\end{code}