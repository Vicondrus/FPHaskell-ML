To be compiled with ghc

Compile with: 
    rm -f factori.exe *.hi *.o 
    ghc factori.lhs -o factori.exe

Run with 
    ./factori.exe
    
See also
    http://www.cs.bu.edu/faculty/kfoury/CVS-Working-Files/CS320-Fall09/Lecture/A-05.getting-started-with-haskell-compilers.pdf



\begin{code}

--declare module
module Main

    where

	import Data.Ratio

	factori n = fact_acc n 1

	fact_acc 0 a = a
	fact_acc n a = fact_acc (n-1) $! (n*a)

	a = 1
	b = 9
	c = 7
	d = 3
	
	n1 = (factori (a+b)) `div` (factori a)
	n2 = (factori (a+c)) `div` (factori c)
	n3 = (factori (b+d)) `div` (factori b)
	n4 = (factori (c+d)) `div` (factori d)
	numer = n1 * n2 * n3 * n4
	denom = factori (a+b+c+d)
	p = (fromIntegral numer) / (fromIntegral denom)

	main = do
		print denom 
		print p
\end{code}
