fun adq (Cons(x,xf), Cons(y,yf)) = 
         Cons(x+y, fn () => adq (xf(), yf()))
 | adq _ :int seq = Nil; 

