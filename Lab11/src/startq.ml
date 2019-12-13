fun startq k =  Cons(k, fn() => startq(k+1));
