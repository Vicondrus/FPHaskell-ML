\begin{frame}[fragile]\frametitle{Well-founded definitions}
    \begin{Example}[Some circular definitions are well founded...]
\begin{code}
mgood = 1:head (tail (tail mgood)):mgood
\end{code}
\pause
\begin{verbatim}
Main> take 10 mgood
[1,1,1,1,1,1,1,1,1,1]
\end{verbatim}
    \end{Example}

\pause
    \begin{Example}[...but some others are not]
\begin{code}
mbad = 1:head (tail (tail (tail mbad))):mbad
\end{code}
\pause
\begin{verbatim}
Main> take 10 mbad
[1,      {Interrupted!}
\end{verbatim}
    \end{Example}

\end{frame}

