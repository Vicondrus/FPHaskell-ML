fun isevn n = if (n=0) then true else isodd (n-1)
and isodd n = if (n=0) then false else isevn (n-1);
