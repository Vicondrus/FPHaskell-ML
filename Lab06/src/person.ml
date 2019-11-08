datatype sex = m | f; 

type person = string * int * sex * string;

val a1 : person = ("Brad", 45, m, "L. A."); 

val n = #1 a1;
