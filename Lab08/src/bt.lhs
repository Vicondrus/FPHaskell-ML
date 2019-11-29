\begin{code}
data Tree = Empty
          | Leaf Int
          | Node Tree Int Tree
  
t1 :: Tree
t1 = Node (Node (Leaf 1) 2 (Leaf 3))
          4
	  (Node (Leaf 5) 6 (Leaf 9))	  	 

t2 :: Tree
t2 = Node Empty 1 (Leaf 2)


sumTree :: Tree -> Int

sumTree Empty	     = 0
sumTree (Leaf v)     = v
sumTree (Node l v r) = sumTree l + v + sumTree r


data TreeP a = EmptyP
             | LeafP a
             | NodeP (TreeP a) a (TreeP a)

--sumTreeP :: TreeP Integer -> Integer

sumTreeP EmptyP	       = 0
sumTreeP (LeafP v)     = v
sumTreeP (NodeP l v r) = sumTreeP l + v + sumTreeP r

--t5 :: TreeP String
t5 = NodeP EmptyP "1" (LeafP "2")




occurs'		      :: Int -> Tree -> Bool
occurs' m (Leaf n)     = m==n
occurs' m (Node l n r) = m==n
			|| occurs' m l
			|| occurs' m r   

occurs		      :: Int -> Tree -> Bool
occurs m (Leaf n)     = m==n
occurs m (Node l n r) | m==n = True
		      | m<n  = occurs m l
		      | m>n  = occurs m r   

flatten              :: Tree -> [Int]
flatten (Leaf n)     = [n]
flatten (Node l n r) = flatten l ++ 
                       [n] ++ 
		       flatten r 



t3P = NodeP (NodeP (LeafP 1) 2 (LeafP 3))
            4
            (NodeP (LeafP 5) 6 (LeafP 9))	  	 
t4P = NodeP (NodeP (LeafP 11.0) 2.0 (LeafP 3.0))
            4.0
            (NodeP (LeafP 5.0) 6.0 (LeafP 9.0))	  	 
\end{code}

\begin{code}

t3 = NodeP (NodeP (LeafP 1) 2 (LeafP 3))
           4
	   (NodeP (LeafP 5) 6 (LeafP 9))	  	 

--t4 :: TreeP String
t4 = NodeP EmptyP "1" (LeafP "2")

--t5 :: TreeP Double
t5 = NodeP (NodeP (LeafP 1.0) 2.0 (LeafP 3.0))
           4.0
	   (NodeP (LeafP 5.0) 6.0 (LeafP 9.0))	  	 


\end{code}		       