exception EverythingIsPossible;
exception Impossible;

fun equality a b = (a<=0.0 andalso a>=0.0);

fun equation a b = if (equality a 0.0) andalso equality b 0.0 then raise EverythingIsPossible
                  else if equality a 0.0 andalso (not (equality b 0.0)) then raise Impossible
                  else (~b) / a;