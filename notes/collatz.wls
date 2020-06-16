collatz[1] = 1

collatz[n_Integer /; And[n > 1, OddQ[n]]] := collatz[n] = 3 n + 1
collatz[n_Integer /; And[n > 1, EvenQ[n]]] := collatz[n] = n / 2
