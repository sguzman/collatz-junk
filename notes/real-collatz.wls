tick[n_Real/; Element[n,PositiveReals]]:=(1+Cos[Pi n)/2
tock[n_Real/; Element[n,PositiveReals]]:=1-tick[n]

even[n_Real/;And[Element[n,PositiveReals],EvenQ[n]]]:=n/2
odd[n_Real/;And[Element[n,PositiveReals],OddQ[n]]]:=3 n + 1
