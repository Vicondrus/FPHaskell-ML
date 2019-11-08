fun flatten [] = []
 |  flatten (x::xs) = x @ flatten xs; 
