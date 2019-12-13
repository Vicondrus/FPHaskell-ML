\begin{code}
mynewmember e xs = foldr (||) False 
                   (map ((==) e) xs)
\end{code}

--Sudan's function
\begin{code}
sudan n x y = 
   if n == 0 then x+y
   else if y == 0 then x
        else sudan (n-1) (sudan n x (y-1)) (y+sudan n x (y-1))
\end{code}

\begin{code}
li = [1,2,3, sudan 10 10 10, 4, 5]
\end{code}		   