Take care to non-exhaustive patterns at list2tree

\begin{code}

data Tree = Empty | Node Tree Int Tree

upto x [] = []
upto y (x:xs) = if x==y then []
                else x:(upto y xs)

startfrom y [] = []
startfrom y (x:xs) = if (x==y) then xs
                        else startfrom y xs

list2tree [] [] = Empty 
list2tree [e] [_] = Node Empty e Empty
list2tree (p:ps) is =   if ll /= [] && lr /= [] then Node (list2tree ((upto (last ll) ps) ++ [(last ll)]) ll) p (list2tree (startfrom (last ll) ps) lr)
                        else
                        if ll == [] then (Node Empty p (list2tree ps lr))
                        else (Node (list2tree ps ll) p Empty) 
                        where
                        lr = startfrom p is
                        ll = upto p is

printIndent 1 = putChar ' ' 
printIndent n = do 
                putChar ' ' 
                printIndent (n-1)

printTree Empty n = do 
                    printIndent n 
                    putStr ".\n"

printTree (Node l v r) n = do
                            printIndent n 
                            print v 
                            printTree l (n+3) 
                            printTree r (n+3) 
                
prettyPrintTree tree = printTree tree 1
\end{code}