\begin{code}
bf [] dag vis = reverse vis
bf (x:xs) dag vis = if (member x vis) then
                (bf xs dag vis)
                else (bf (xs ++ (mysuc x dag)) dag (x:vis))

df [] dag vis = reverse vis
df (x:xs) dag vis = if (member x vis) then
                (df xs dag vis) 
                else (df ((mysuc x dag) ++ xs) dag (x:vis))

mysuc x [] = []
mysuc x ((y,z):lp) = if (x==y) then z:(mysuc x lp)
                    else (mysuc x lp)

member _ [] = False
member x (y:ys) 
    | y==x = True 
    | otherwise = member x ys

\end{code}