fun filterq p Nil         = Nil 
 |  filterq p (Cons(x,xf)) = 
      if p x 
      then Cons(x, fn() => filterq p (xf()))
      else filterq p (xf());