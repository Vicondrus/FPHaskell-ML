fun sieve (Cons(p,nf)) = 
   Cons(p, fn()=>sieve(sievePrc p (nf())));
