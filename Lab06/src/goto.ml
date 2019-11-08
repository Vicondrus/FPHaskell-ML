fun F (x, y, z) = G (x+1, y, z)
and G (x, y, z) = if y < z then F (x, y, z) else H (x, x+y, z)
and H (x, y, z) = if z > 0 then F (x, y, z-x) else (x, y, z);
 