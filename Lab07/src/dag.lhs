\begin{code}
bf [] dag vis = reverse vis
bf (x:xs) dag vis = if (member x vis) then
                (bf xs dag vis)
                else (bf (xs ++ (mysuc x dag)) dag (x:vis))

mysuc x [] = []
mysuc x ((y,z):lp) = if (x==y) then z:(mysuc x lp)
                    else (mysuc x lp)
\end{code}