$RecursionLimit = Infinity

collatz[1] = 1

collatz[n_Integer /; And[n > 1, OddQ[n]]] := collatz[n] = 3 n + 1
collatz[n_Integer /; And[n > 1, EvenQ[n]]] := collatz[n] = n / 2

collatzseq[1] = {1}
collatzseq[n_Integer /; n > 1] := collatzseq[n] = {n, Splice@collatzseq@collatz@n}

collatzseq[9780657630];
