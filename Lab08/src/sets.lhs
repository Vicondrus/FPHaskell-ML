\begin{code}
type Set a = [a]

listToSet :: Ord a => [a] -> Set a
listToSet []     = [] 
listToSet (x:xs) = adElem x (listToSet xs)

card :: Set a -> Int
card s = length s

inSet :: Eq a => a -> Set a -> Bool
inSet e []                 = False
inSet e (x:xs) | e == x    = True
               | otherwise = inSet e xs

adElem :: Ord a => a -> Set a -> Set a
adElem e []                = [e] 
adElem e (a:x) | e < a     = e:a:x
    	       | e == a    = a:x
               | otherwise = a:adElem e x
       
delElem :: Ord a => a -> Set a -> Set a
delElem e []                = [] 
delElem e (a:x) | e < a     = a:x
                | e == a    = x
                | otherwise = a:delElem e x

union :: Ord a => Set a -> Set a -> Set a
union [] t    = t
union s []    = s
union (a:s) (b:t)
  | a == b    = a:union s t
  | a < b     = a:union s (b:t)
  | otherwise = b:union (a:s) t

inters :: Ord a => Set a -> Set a -> Set a
inters [] _   = []
inters _ []   = []
inters (a:s) (b:t) 
  | a == b    = a:inters s t
  | a < b     = inters s (b:t)
  | otherwise = inters (a:s) t

dif :: Ord a => Set a -> Set a -> Set a
dif [] _      = []
dif s []      = s
dif (a:s) (b:t) 
  | a == b    = dif s t
  | a < b     = a:dif s (b:t)
  | otherwise = dif (a:s) t

subset :: Ord a => Set a -> Set a -> Bool
subset [] _   = True
subset _ []   = False
subset (a:s) (b:t) 
  | a == b    = subset s t
  | a < b     = False
  | otherwise = subset (a:s) t

eqset :: Ord a => Set a -> Set a -> Bool
eqset xs ys = if subset xs ys then subset ys xs 
              else False

powerset :: Set a -> Set a -> [Set a]
powerset [] base     = [base]
powerset (x:xs) base = powerset xs base ++
                       powerset xs (x:base)
			  
cartprod :: Set a -> Set b -> [(a,b)] 
cartprod [] ys = [] 
cartprod (x:xs) ys = perx ys
  where
    perx [] = cartprod xs ys
    perx (y:ys) = (x,y):(perx ys)
\end{code}
