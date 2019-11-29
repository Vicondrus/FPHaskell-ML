fun listElves []              = ""
 |  listElves ((Elf s) :: xs) = s ^ " " ^ 
                                listElves xs
 |  listElves ((Man _) :: xs) = listElves xs; 
