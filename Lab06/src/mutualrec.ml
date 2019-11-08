fun pos (d:real) = neg (d-2.0) + 1.0/d
and neg (d:real) = if d>0.0
                   then pos (d-2.0) - 1.0/d 
                   else 0.0;