fun iter f x = Cons(x, fn() => iter f (f x));
