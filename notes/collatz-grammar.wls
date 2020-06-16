$RecursionLimit = Infinity

collatz[1] = 1

collatz[n_Integer /; And[n > 1, OddQ[n]]] := collatz[n] = 3 n + 1
collatz[n_Integer /; And[n > 1, EvenQ[n]]] := collatz[n] = n/2

collatzseq[1] = {1}
collatzseq[n_Integer /; n > 1] := 
 collatzseq[n] = {n, Splice@collatzseq@collatz@n}

collatzseq[93571393692802302];

map[n_Integer /; OddQ[n]] := o
map[n_Integer /; EvenQ[n]] := e

c = Map[map, collatzseq[93571393692802302]];

Grid@TakeLargestBy[
  Select[Table[
    With[{list = Tally@Partition[c, i, 1]}, 
     Splice@Table[{First@j, Total@Map[cardinal, First@j] Last@j, 
        i Last@j, Last@j}, {j, list}]], {i, 1, 100, 1}], 
   And[Last@# != 1, Length@First@# != 1] &], #[[2]] &, 10]
