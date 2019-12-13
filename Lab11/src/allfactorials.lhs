\begin{code}

numbersFrom x = x:(numbersFrom (x + 1))

multlist [] [] = []
multlist (x:xs) (y:ys) = (x * y):(multlist xs ys)

allfact = 1:1:(multlist (numbersFrom 2) (tail allfact))

\end{code}