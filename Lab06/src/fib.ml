local
  fun fibit n p c = 
    if n=0 then c
    else fibit (n-1) c (p+c)
in
  fun fib n = fibit n 1 0  
end; 
