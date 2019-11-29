\begin{code}
-- a more effificient version of qs
qs :: Ord a => [a] -> [a]

qs []	  = []
qs (x:xs) = qs smalls ++ [x] ++ qs bigs 
             where 
              (smalls,bigs) = my_split x xs [] []

my_split _ [] smalls bigs = (smalls,bigs)
my_split x (y:ys) smalls bigs 
    | y < x =  my_split x ys (y:smalls) bigs
    | otherwise =  my_split x ys smalls (y:bigs)
\end{code}    