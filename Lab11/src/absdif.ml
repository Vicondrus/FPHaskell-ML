fun absdif (eps:real) (Cons (x,xf)) = 
   let 
      val Cons(y,yf) = xf()
   in 
      if abs (x-y) <= eps then y
      else absdif eps (Cons (y,yf))
   end;
