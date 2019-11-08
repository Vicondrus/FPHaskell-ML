\begin{code}
fact 0 = [1]
fact n = prod (fact (n - 1)) n
\end{code}
