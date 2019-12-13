fun takeq (0,xq)        = []
 | takeq (n,Nil)        = []
 | takeq (n,Cons(x,xf)) = x::takeq(n-1,xf());
