\begin{code}
isLeapYear x = if (x `mod` 4 == 0) then
               if (x `mod` 100 == 0) then
               if (x `mod` 400 == 0) then True
               else False
               else True

leapYears [] = []
leapYears (x:xs) = if (isLeapYear x) then x:leapYears xs
                   else leapYears xs
\end{code}