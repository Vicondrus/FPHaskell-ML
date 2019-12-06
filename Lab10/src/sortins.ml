fun myinser (x,[], _)        = [x]
 |  myinser (x,y::ys,ordrel) = 
      if ordrel(x,y) then x::y::ys
      else y::myinser(x,ys,ordrel); 
fun mysortins ([],_)         = []
 |  mysortins (x::xs,ordrel) =
      myinser (x,mysortins(xs,ordrel),ordrel);
