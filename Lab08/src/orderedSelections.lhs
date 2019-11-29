\begin{code}
elim _ [] = [] 
elim e (x:xs) | e == x 	  = elim e xs
              | otherwise = x:elim e xs 

perm [] = [[]]
perm xs = [ a:p | a<-xs,  p<-perm (elim a xs)]

powerset s = pwrs s []
  where
    pwrs [] base     = [base] 
    pwrs (x:xs) base = pwrs xs base ++ pwrs xs (x:base)		  

apN xss = [x | xs <- xss, x <- xs]

ors s = apN (map perm (powerset s))
\end{code}
