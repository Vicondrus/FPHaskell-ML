fun replist n x =
  if n = 0 then []
  else x::replist (n-1) x;
 
