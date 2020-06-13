#!/usr/bin/env wolframscript
(* ::Package:: *)

(* ::Input:: *)
(**)


(* ::Input:: *)
(*collatz[1]=1*)
(**)
(*collatz[n_Integer/;And[n>1,OddQ[n]]]:=collatz[n]=3 n+1*)
(*collatz[n_Integer/;And[n>1,EvenQ[n]]]:=collatz[n]=n/2*)
(**)
(*collatzseq[1]={1}*)
(*collatzseq[n_Integer/;n>1]:=collatzseq[n]={n,Splice@collatzseq@collatz@n}*)


(* ::Input:: *)
(*$RecursionLimit*)


(* ::Input:: *)
(*$RecursionLimit=Infinity*)


(* ::Input:: *)
(*$RecursionLimit*)


(* ::Input:: *)
(*collatzseq@9780657630;*)


(* ::Input:: *)
(*map[n_Integer/;n\[Element]PositiveIntegers\[And]OddQ[n]]=o*)


(* ::Input:: *)
(*map[n_Integer/;n\[Element]PositiveIntegers\[And]EvenQ[n]]=e*)


(* ::Input:: *)
(*Tally@*)
(*Map[map,collatzseq@9780657630]*)


(* ::Input:: *)
(**)


(* ::Input:: *)
(*Tally@*)
(*Partition[*)
(*Map[map,collatzseq@9780657630]*)
(*,2,1]*)
(**)


(* ::Input:: *)
(*even[n_Integer/;n\[Element]PositiveIntegers\[And]EvenQ[n]]:=n/2*)


(* ::Input:: *)
(*even[43]*)


(* ::Input:: *)
(*even[44]*)


(* ::Input:: *)
(*NestList[even,n,10]*)


(* ::Input:: *)
(**)


(* ::Input:: *)
(*FullSimplify[NestList[even,n,3]]*)


(* ::Input:: *)
(*FullSimplify[NestList[even,n,3],n\[Element]PositiveIntegers\[And]EvenQ[n]]*)


(* ::Input:: *)
(*FullSimplify[even[n],n\[Element]PositiveIntegers\[And]EvenQ[n]]*)


(* ::Input:: *)
(*FourierSequenceTransform[even[n],n,\[Omega]]*)


(* ::Input:: *)
(*GeneratingFunction[even[n],n,x]*)


(* ::Input:: *)
(*ZTransform[even[n],n,z]*)


(* ::Input:: *)
(*even[n]*)


(* ::Input:: *)
(*even[4]*)


(* ::Input:: *)
(*FunctionExpand@even[n]*)


(* ::Input:: *)
(*Nest[#/2&,n,1]*)


(* ::Input:: *)
(*Nest[#/2&,n,2]*)


(* ::Input:: *)
(*NestList[#/2&,n,10]*)


(* ::Input:: *)
(*recurse[even,k,n]==n/2^n==even[n]/2^(n-1)==even[n/2^(n-1)]*)


(* ::Input:: *)
(*Nest[3#+1&,n,1]*)


(* ::Input:: *)
(*Nest[3#+1&,n,2]*)


(* ::Input:: *)
(*Nest[3#+1&,n,3]*)


(* ::Input:: *)
(*FullSimplify[Nest[3#+1&,n,3],n\[Element]PositiveIntegers\[And]OddQ[n]]*)


(* ::Input:: *)
(*FullSimplify[Nest[3#+1&,n,3],OddQ[n]]*)


(* ::Input:: *)
(*FullSimplify[Nest[3#+1&,n,3]]*)


(* ::Input:: *)
(*FullSimplify[NestList[3#+1&,n,3]]*)


(* ::Input:: *)
(*\[Alpha]^n x+(a^n+1)/(a+1) 1*)


(* ::Input:: *)
(*\[Alpha]^n x+(\[Alpha]^n+1)/(\[Alpha]+1) 1*)


(* ::Input:: *)
(*\[Alpha]^n x+(\[Alpha]^n+1)/(\[Alpha]+1) 1*)


(* ::Input:: *)
(*\[Alpha]^n x+(\[Alpha]^n+1)/(\[Alpha]+1) 1/.\[Alpha]->3*)


(* ::Input:: *)
(*1/4 (1+3^n)+3^n k*)


(* ::Input:: *)
(*DiscretePlot3D[1/4 (1+3^n)+3^n k,{k,1,20},{n,1,20}]*)


(* ::Input:: *)
(*1/4 (1+3^n)+3^n k*)


(* ::Input:: *)
(*{1/4 (1+3^n)+3^n x,m/2^n}*)


(* ::Input:: *)
(*{1/4 (1+3^n)+3^n M,m/2^n}*)


(* ::Input:: *)
(*{1/4 (1+3^n)+3^n m,m/2^n}*)


(* ::Input:: *)
(*Map[Function[m,#]&,{1/4 (1+3^n)+3^n m,2^-n m}]*)


(* ::Input:: *)
(*Apply[RightComposition,Map[Function[m,#]&,{1/4 (1+3^n)+3^n m,2^-n m}]]*)


(* ::Input:: *)
(*Apply[RightComposition,Map[Function[m,#]&,{1/4 (1+3^n)+3^n m,2^-n m}]][x]*)


(* ::Input:: *)
(*FullSimplify[2^-n (1/4 (1+3^n)+3^n x),{n,x}\[Element]PositiveIntegers]*)


(* ::Input:: *)
(*ExpandAll[2^(-2-n) (1+3^n+4 3^n x)]*)


(* ::Input:: *)
(*Manipulate[Plot[2^(-2-n)+2^(-2-n) 3^n+(3/2)^n x,{x,-6.,6.}],{n,-2.91273,2.91273}]*)


(* ::Input:: *)
(*DiscretePlot3D[2^(-2-n)+2^(-2-n) 3^n+(3/2)^n x,{x,1,20},{n,1,20}]*)


(* ::Input:: *)
(*k==2^(-2-n)+2^(-2-n) 3^n+(3/2)^n x*)


(* ::Input:: *)
(*FindInstance[k==2^(-2-n)+2^(-2-n) 3^n+(3/2)^n x,{k,n,x}]*)


(* ::Input:: *)
(*Table[2^(-2-n)+2^(-2-n) 3^n+(3/2)^n x,{n,1,27}]*)


(* ::Input:: *)
(**)


(* ::Input:: *)
(*Table[2^(-2-n)+2^(-2-n) 3^n+(3/2)^n x,{n,1,27}]/.x->27*)


(* ::Input:: *)
(*ListPlot[%57]*)


(* ::Input:: *)
(*Tally@*)
(*Partition[*)
(*Map[map,collatzseq@9780657630]*)
(*,2,1]*)


(* ::Input:: *)
(*{1/4 (1+3^n)+3^n x,m/2^n}*)


(* ::Input:: *)
(*Nest[#/2,n,2]*)


(* ::Input:: *)
(*Nest[#/2&,n,2]*)


(* ::Input:: *)
(*Nest[#/2&,n,3]*)


(* ::Input:: *)
(*Nest[#/2&,n,1]*)


(* ::Input:: *)
(*1/4 (1+3^n)+3^n m*)


(* ::Input:: *)
(*Nest[#/2&,n,426]*)


(* ::Input:: *)
(*1/4 (1+3^n)+3^n m/.n->427*)


(* ::Input:: *)
(*Out@67/.m->n*)


(* ::Input:: *)
(*RightComposition[Identity,3#+1&]*)


(* ::Input:: *)
(*RightComposition[Identity,3#+1&,#/2&,collatz]*)


(* ::Input:: *)
(*RightComposition[Identity,3#+1&,#/2&,collatz][n]*)


(* ::Input:: *)
(*With[{expr=1/2 (1+3 n)},*)
(*((1+Cos[\[Pi] expr])/2)(expr/2)+(1-(1+Cos[\[Pi] expr])/2)(3expr+1)*)
(*]*)


(* ::Input:: *)
(*FullSimplify[(1+3/2 (1+3 n)) (1+1/2 (-1-Cos[1/2 (1+3 n) \[Pi]]))+1/8 (1+3 n) (1+Cos[1/2 (1+3 n) \[Pi]])*)
(*,n\[Element]PositiveIntegers]*)


(* ::Input:: *)
(*DiscretePlot[1/8 (11+21 n+3 (3+5 n) Sin[(3 n \[Pi])/2]),{n,1,20}]*)


(* ::Input:: *)
(*Plot[1/8 (11+21 n+3 (3+5 n) Sin[(3 n \[Pi])/2]),{n,1,20}]*)


(* ::Input:: *)
(*Grid@*)
(*Table[{n,1/8 (11+21 n+3 (3+5 n) Sin[(3 n \[Pi])/2])},{n,1,20,1}]*)


(* ::Input:: *)
(*(1+Cos[\[Pi] x])/2*)


(* ::Input:: *)
(*Plot[1/2 (1+Cos[\[Pi] x]),{x,-6.24,6.24}]*)


(* ::Input:: *)
(*RightComposition[Identity,3#+1&,#/2&,collatz][n]\[And]n\[Element]PositiveIntegers*)


(* ::Input:: *)
(*With[{expr=1/2 (1+3 n)},*)
(*((1+Cos[\[Pi] n])/2)(expr/2)+(1-(1+Cos[\[Pi] n])/2)(3expr+1)*)
(*]*)


(* ::Input:: *)
(*FullSimplify[*)
(*(1+3/2 (1+3 n)) (1+1/2 (-1-Cos[n \[Pi]]))+1/8 (1+3 n) (1+Cos[n \[Pi]])*)
(*,n\[Element]PositiveIntegers]*)


(* ::Input:: *)
(*DiscretePlot[1/8 (11+21 n-3 (-1)^n (3+5 n)),{n,1,20}]*)


(* ::Input:: *)
(*Plot[1/8 (11+21 n-3 (-1)^n (3+5 n)),{n,1,20}]*)


(* ::Input:: *)
(*DiscretePlot[{*)
(*1/8 (11+21 n-3 (-1)^n (3+5 n)),*)
(*((1+Cos[\[Pi] n])/2)(n/2)+(1-(1+Cos[\[Pi] n])/2)(3n+1)*)
(*},{n,1,20}]*)


(* ::Input:: *)
(*DiscretePlot[{*)
(*1/8 (11+21 n-3 (-1)^n (3+5 n)),*)
(*((1+Cos[\[Pi] n])/2)(n/2)+(1-(1+Cos[\[Pi] n])/2)(3n+1),*)
(*(1/8 (11+21 n-3 (-1)^n (3+5 n)))/(((1+Cos[\[Pi] n])/2)(n/2)+(1-(1+Cos[\[Pi] n])/2)(3n+1))*)
(**)
(*},{n,1,20}]*)


(* ::Input:: *)
(*Table[{*)
(*n,*)
(*1/8 (11+21 n-3 (-1)^n (3+5 n)),*)
(*((1+Cos[\[Pi] n])/2)(n/2)+(1-(1+Cos[\[Pi] n])/2)(3n+1),*)
(*(1/8 (11+21 n-3 (-1)^n (3+5 n)))/(((1+Cos[\[Pi] n])/2)(n/2)+(1-(1+Cos[\[Pi] n])/2)(3n+1))*)
(**)
(*},{n,1,20}]*)


(* ::Input:: *)
(*Limit[(1/8 (11+21 n-3 (-1)^n (3+5 n)))/(((1+Cos[\[Pi] n])/2)(n/2)+(1-(1+Cos[\[Pi] n])/2)(3n+1)),n->\[Infinity]]*)


(* ::Input:: *)
(*Grid@*)
(*Table[{n,N@((1/8 (11+21 n-3 (-1)^n (3+5 n)))/(((1+Cos[\[Pi] n])/2)(n/2)+(1-(1+Cos[\[Pi] n])/2)(3n+1)))},{n,1,50}]*)
