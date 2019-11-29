fun sucres (sucr,[]) = (rev sucr, []:real list)
 |  sucres (sucr as s::_, x::xs) = 
      if x < s then (rev sucr, x::xs)
      else sucres (x::sucr,xs); 
	