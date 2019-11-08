fun member (_,[])  = false
| member (x,y::ys) = if x=y then true
                     else member (x,ys);

fun reverse []    = [] 
| reverse (x::xs) = reverse xs @ [x]; 

val dag=[("a","b"),("a","c"),("a","d"), 
         ("b","e"),("c","f"),("d","e"),
         ("e","f"),("e","g")]; 

val dag1=[("a","b"),("b","d"),("d","f"), 
         ("a","c"),("c","e"),("e","f")]; 

fun succ (x, [])      = []
 | succ (x,(y,z)::lp) = if x = y then z::succ(x,lp)
                        else succ(x,lp); 

fun df ([],dag,vis)   = reverse (vis)
 | df (x::xs,dag,vis) = 
      if member (x,vis) then df (xs, dag, vis)
      else df (succ (x,dag)@xs, dag, x::vis); 

 