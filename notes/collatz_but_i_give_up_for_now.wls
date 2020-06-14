#!/usr/bin/env wolframscript
(* ::Package:: *)

(* ::Input:: *)
(*$RecursionLimit=Infinity*)
(**)
(*collatz[1]=1*)
(**)
(*collatz[n_Integer/;And[n>1,OddQ[n]]]:=collatz[n]=3 n+1*)
(*collatz[n_Integer/;And[n>1,EvenQ[n]]]:=collatz[n]=n/2*)
(**)
(*collatzseq[1]={1}*)
(*collatzseq[n_Integer/;n>1]:=collatzseq[n]={n,Splice@collatzseq@collatz@n}*)
(**)
(*collatzseq[9780657630];*)
(**)
(*map[n_Integer/;OddQ[n]]:=o*)
(*map[n_Integer/;EvenQ[n]]:=e*)
(**)
(*oddStrict[n_Real/;n\[Element]PositiveReals]:=3 n+1*)
(*tickStrict[n_Real/;n\[Element]PositiveReals]:=(1+Cos[\[Pi] n])/2*)
(**)
(*tockStrict[n_Real/;n\[Element]PositiveReals]:=1-tickStrict[n]*)
(**)
(*evenStrict[n_Real/;n\[Element]PositiveReals]:=n/2*)
(**)
(*oddStrict[n_Real/;n\[Element]PositiveReals]:=3 n+1*)
(**)
(*evenRecurseRealStrict[x_Real/;x\[Element]PositiveReals,n_Integer/;n\[Element]PositiveIntegers]:=x/2^n*)
(**)
(*oddRecurseRealStrict[x_Real/;x\[Element]PositiveReals,n_Integer/;n\[Element]PositiveIntegers]:=1/2 (-1+3^n)+3^n x*)
(**)
(*odd[n]:=3 n+1*)
(*tick[n]:=(1+Cos[\[Pi] n])/2*)
(*tock[n]:=1-tick[n]*)
(*even[n]:=n/2*)
(*evenRecurseReal[x,n]:=x/2^n*)
(*oddRecurseReal[x,n]:=1/2 (-1+3^n)+3^n x*)
(**)


(* ::Input:: *)
(*Grid@*)
(*Table[*)
(*{i,Map[Splice@*)
(*ConstantArray[First@#,Last@#]*)
(*&,FactorInteger[i]]},*)
(*{i,collatzseq[27]}]*)


(* ::Input:: *)
(*Table[*)
(*With[{val=N@Log[2 ,Apply[Times,Select[*)
(*Map[Splice@*)
(*ConstantArray[First@#,Last@#]*)
(*&,FactorInteger[i]]*)
(*,2!=#&]]]},*)
(*val-Floor[val]*)
(*],*)
(*{i,collatzseq@27}]*)


(* ::Input:: *)
(*ListPlot[%24]*)


(* ::Input:: *)
(*9780657630*)


(* ::Input:: *)
(*ListPlot@*)
(*Table[*)
(*With[{val=N@Log[2 ,Apply[Times,Select[*)
(*Map[Splice@*)
(*ConstantArray[First@#,Last@#]*)
(*&,FactorInteger[i]]*)
(*,2!=#&]]]},*)
(*val-Floor[val]*)
(*],*)
(*{i,collatzseq@9780657630}]*)


(* ::Input:: *)
(*With[{list=%24},*)
(*Manipulate[*)
(*ListPlot[list[[;;i]],PlotRange->{{0,100},{0,1}}]*)
(*,{i,1,100,1}]*)
(*]*)


(* ::Input:: *)
(*With[{list=%24},*)
(*Manipulate[*)
(*ListPlot[list[[;;i]],PlotRange->{{0,100},{0,1}},Joined->True]*)
(*,{i,1,100,1}]*)
(*]*)


(* ::Input:: *)
(*Differences@Out[24]*)


(* ::Input:: *)
(*Ceiling[-.94]*)


(* ::Input:: *)
(*(a b c)*)


(* ::Input:: *)
(*(3(a b c))+1*)


(* ::Input:: *)
(* *)


(* ::Input:: *)
(*Out[30]/.x_/;x<0->down*)


(* ::Input:: *)
(*Out[30]/.{x_/;x<0->down,x_/;x>0->up,x_/;x==0->line}*)


(* ::Input:: *)
(*Tally[%35]*)


(* ::Input:: *)
(*Log[2,n]*)


(* ::Input:: *)
(*Log[2,n/2]*)


(* ::Input:: *)
(*FullSimplify[Log[n/2]/Log[2]]*)


(* ::Input:: *)
(*Out[30]/.{x_/;x<0->down,x_/;x>0->up,x_/;x==0->Nothing}*)


(* ::Input:: *)
(*Abs[*)
(*Table[*)
(*With[{val=N@Log[2 ,Apply[Times,Select[*)
(*Map[Splice@*)
(*ConstantArray[First@#,Last@#]*)
(*&,FactorInteger[i]]*)
(*,2!=#&]]]},*)
(*val-Floor[val]*)
(*],*)
(*{i,collatzseq@27}]-1]*)


(* ::Input:: *)
(*ListPlot[%41]*)


(* ::Input:: *)
(*ListPlot[{*)
(*Abs[*)
(*Table[*)
(*With[{val=N@Log[2 ,Apply[Times,Select[*)
(*Map[Splice@*)
(*ConstantArray[First@#,Last@#]*)
(*&,FactorInteger[i]]*)
(*,2!=#&]]]},*)
(*val-Floor[val]*)
(*],*)
(*{i,collatzseq@27}]-1],*)
(*Table[*)
(*With[{val=N@Log[2 ,Apply[Times,Select[*)
(*Map[Splice@*)
(*ConstantArray[First@#,Last@#]*)
(*&,FactorInteger[i]]*)
(*,2!=#&]]]},*)
(*val-Floor[val]*)
(*],*)
(*{i,collatzseq@27}]*)
(*}]*)


(* ::Input:: *)
(**)


(* ::Input:: *)
(*Tally@*)
(*Map[map,*)
(*collatzseq@9780657630]*)


(* ::Input:: *)
(*Tally@*)
(*Partition[*)
(*Map[map,*)
(*collatzseq@9780657630]*)
(*,2,1]*)


(* ::Input:: *)
(*Tally@*)
(*Partition[*)
(*Map[map,*)
(*collatzseq@9780657630]*)
(*,3,1]*)


(* ::Input:: *)
(*Tally@*)
(*Partition[*)
(*Map[map,*)
(*collatzseq@9780657630]*)
(*,4,1]*)


(* ::Input:: *)
(*Tally@*)
(*Partition[*)
(*Map[map,*)
(*collatzseq@9780657630]*)
(*,5,1]*)


(* ::Input:: *)
(*Tally@*)
(*Map[map,*)
(*collatzseq@11]*)


(* ::Input:: *)
(*Tally@*)
(*Map[map,*)
(*collatzseq@27]*)


(* ::Input:: *)
(*Tally@*)
(*Map[map,*)
(*collatzseq@11]*)


(* ::Input:: *)
(*evenRecurseReal[x,10]*)


(* ::Input:: *)
(*evenRecurseReal[x,10]\[And]x PositiveIntegers*)


(* ::Input:: *)
(*FullSimplify[evenRecurseReal[x,10],x PositiveIntegers\[And]EvenQ[x]]*)


(* ::Input:: *)
(**)


(* ::Input:: *)
(*FullSimplify[evenRecurseReal[x,10]]*)


(* ::Input:: *)
(*\!\( *)
(*\*SubscriptBox[\(\[PartialD]\), \(x\)]\(evenRecurseReal[x, 10]\)\)*)


(* ::Input:: *)
(*n/2^10*)


(* ::Input:: *)
(*Nest[#/2&,n,10]*)


(* ::Input:: *)
(*Nest[3#+1&,n,10]*)


(* ::Input:: *)
(*FullSimplify[Nest[3#+1&,n,5],n\[Element]PositiveIntegers\[And]EvenQ[n]]*)


(* ::Input:: *)
(*FullSimplify[Nest[3#+1&,n,5],n\[Element]PositiveIntegers\[And]OddQ[n]]*)


(* ::Input:: *)
(*FullSimplify[Nest[3#+1&,n,5],n\[Element]PositiveIntegers]*)


(* ::Input:: *)
(*Plot[{121+243 n,n/1024},{n,1,30}]*)
