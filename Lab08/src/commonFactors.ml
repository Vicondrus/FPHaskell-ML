fun commonFactorsAux m n a = if ((a = m) orelse (a = n)) then nil
                            else 
                            if (((m mod a) = 0) andalso ((n mod a) = 0)) then a::(commonFactorsAux m n (a + 1)) 
                            else commonFactorsAux m n (a + 1);

fun commonFactors m n = commonFactorsAux m n 1;