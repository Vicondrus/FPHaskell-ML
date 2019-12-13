datatype 'a seq = Nil 
                | Cons of 'a * (unit -> 'a seq)

fun headq (Cons(x,_)) = x;

fun tailq (Cons(_,xf)) = xf ();

fun consq (x,xq) = Cons(x, fn () => xq);

fun startq k =  Cons(k, fn() => startq(k+1));

fun takeq (0,xq)        = []
 | takeq (n,Nil)        = []
 | takeq (n,Cons(x,xf)) = x :: takeq (n-1, xf()); 

fun adq (Cons(x,xf), Cons(y,yf)) = 
         Cons(x+y, fn () => adq (xf(), yf()))
 | adq _ :int seq = Nil; 


fun mapq f Nil         = Nil 
 | mapq f (Cons(x,xf)) = Cons(f x, fn() => mapq f (xf ())); 
 
fun odd n = if n mod 2 = 0 then false
            else true;


fun filterq p Nil         = Nil 
 | filterq p (Cons(x,xf)) = if p x then Cons(x, fn() => filterq p (xf()))
                            else filterq p (xf()); 
 
fun sievePrc p = filterq (fn n => n mod p <> 0);

fun sieve (Cons(p,nf)) = 
           Cons(p,fn() => sieve(sievePrc p (nf())));
	   
fun genPrimes n = takeq (n, sieve (startq 2));


fun iter f x = Cons(x, fn() => iter f (f x));
 
fun nextap a x = (a / x + x) / 2.0; 


fun absdif (eps:real) (Cons (x,xf)) = 
   let 
      val Cons(y,yf) = xf()
   in 
      if abs (x-y) <= eps then y
      else absdif eps (Cons (y,yf))
   end;

fun aproxSqrt a = absdif 1E~6 (iter (nextap a) 1.0);



(*

fun upto i j = if i>j then [] 
               else i::upto (i+1) j;

fun member e [] = false
 | member e (x::xs) = if (e=x) then true 
                      else member e xs;

fun sure queens qn =
   let fun noattack (i,[]) = true
        | noattack (i,q::qs) = abs (qn-q) <> i 
	                      andalso  
                              noattack(i+1,qs)
   in noattack(1,queens)
   end;      

fun nextqueen n qs = 
   map (secr op::qs) 
       (filterq (sure qs) (upto (1,n)));

fun complete n qs = (length qs = n); 

*)