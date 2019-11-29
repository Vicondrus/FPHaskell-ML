\begin{code} 
infix 4 +++ 
[] +++ ys = ys
(x:xs) +++ ys = x:(xs +++ ys)
\end{code}
