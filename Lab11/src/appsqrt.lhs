\begin{code}

iter x f = x : (iter (f x) f)

nextapp x y = ((x / y) + y)/2

absdif eps (y1:y2:ys) = if abs (y2 - y1) < eps then y2 else absdif eps (y2:ys)

appsqrt x = absdif (1/(10^20)) (iter 1 (nextapp x))

\end{code}