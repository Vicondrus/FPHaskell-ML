fun factacc n a = if n = 0 then a 
                  else factacc (n-1) (n*a);
