\begin{code}
data Sex = M | F
type Person = (String, Int, Sex, String)

--let me introduce Brad
a1 :: Person
a1 = ("Brad", 45, M, "L.A.")

--let's learn something about a1
(name, age, sex, location) = a1

printSex :: Sex -> String
printSex s = case s of
                 M -> "Male"
		 F -> "Female"
\end{code}  
