fun mapq f Nil         = Nil 
 | mapq f (Cons(x,xf)) = Cons(f x, fn() => mapq f (xf ())); 
 
