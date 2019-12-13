fun sure queens qn =
   let fun noattack (i,[]) = true
        | noattack (i,q::qs) = abs (qn-q) <> i 
	                      andalso  
                              noattack(i+1,qs)
   in noattack(1,queens)
   end;      
