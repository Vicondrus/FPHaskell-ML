\begin{code}

listFromNumberRev 0 = []
listFromNumberRev x = [(x `mod` 10)]++(listFromNumberRev (x `div` 10))

\end{code}