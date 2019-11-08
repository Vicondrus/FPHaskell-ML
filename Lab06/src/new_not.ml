(* redefining not *)
datatype new_bool = new_true | new_false ; 
    
fun new_not new_true = new_false 
 |  new_not new_false = new_true; 
