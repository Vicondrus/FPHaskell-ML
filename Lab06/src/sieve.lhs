\begin{code}
era(p:ns) = p:era [ n | n <- ns, n `mod` p > 0]
\end{code}