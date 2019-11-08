\begin{code}
palindrome (x:[]) = True
palindrome [] = True
palindrome (x:xs) = if x==(last xs) && palindrome (lastbut xs) then True
                    else False

--lastbut (x:y:[]) = [x]
lastbut (x:[]) = []
lastbut (x:xs) = x:(lastbut xs)
\end{code}