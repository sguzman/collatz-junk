$RecursionLimit = Infinity

collatz[1] = 1

collatz[n_Integer /; And[n > 1, OddQ[n]]] := collatz[n] = 3 n + 1
collatz[n_Integer /; And[n > 1, EvenQ[n]]] := collatz[n] = n/2

collatzseq[1] = {1}
collatzseq[n_Integer /; n > 1] := 
 collatzseq[n] = {n, Splice@collatzseq@collatz@n}

collatzseq[93571393692802302];

map[n_Integer /; OddQ[n]] = C[1]
map[n_Integer /; EvenQ[n]] = C[2]

c = Map[map, collatzseq[93571393692802302]];

With[{
  junk = None,
  c = Map[map, collatzseq[93571393692802302]],
  cardinalList = {e -> 1, o -> 1},
  carg = 1
  },
 With[{
   cardinal = Association[{e -> 1, o -> 1}]
   },
  With[{
    data = Select[
      Table[
       With[{
         list = Tally@Partition[c, i, 1]
         },
        Splice@
         Table[{
           First@j,
           Total@
             Map[cardinal, First@j] Last@j,
           i Last@j,
           Last@j},
          {j, list}]],
       {i, 1, 100, 1}],
      And[
        Last@# != 1,
        Length@First@# != 1]
       &]
    },
   With[{
     first = First@
       First@
        TakeLargestBy[data
         , #[[2]] &, 1],
     rankedData = TakeLargestBy[data
       , #[[2]] &, 10]
     },
    With[{
      grid = Grid@
        Prepend[
         rankedData,
         {"Pattern", "Strength", "Letters", "Freq"}
         ]
      },
     {
      grid,
      SequenceReplace[c,
       first :> C[carg]],
      Prepend[cardinalList, C[carg] -> Length@first],
      carg + 1
      }
     ]]]]]

collatzcount[1]=0
collatzcount[n_Integer /; n > 1] :=
 collatzcount[n] = collatzcount[collatz[n]] + 1
