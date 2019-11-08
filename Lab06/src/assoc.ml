val capitals=[("Romania","Bucharest"), 
              ("Poland","Warsaw"), 
              ("Denmark","Copenhagen")]; 
	
fun assoc (x, []) = []
 | assoc (x, (y,z)::lp) = if x = y then [z]
                          else assoc (x, lp); 
						  