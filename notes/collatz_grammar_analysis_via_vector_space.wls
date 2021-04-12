#!/usr/bin/env wolframscript
(* ::Package:: *)

(* ::Input:: *)
(*Block[{},*)
(*$RecursionLimit=Infinity;*)
(**)
(*collatz[1]=1;*)
(*collatz[n_Integer/;And[n>1,OddQ[n]]]:=collatz[n]=3 n+1;collatz[n_Integer/;And[n>1,EvenQ[n]]]:=collatz[n]=n/2;*)
(**)
(*even[n_Integer/;And[n>1,EvenQ[n]]]:=n/2;*)
(*odd[n_Integer/;And[n>1,OddQ[n]]]:=3 n+1;*)
(**)
(*e[n_]:=n/2;*)
(*o[n_]:=3n+1;*)
(**)
(*collatzseq[1]={1};collatzseq[n_Integer/;n>1]:=collatzseq[n]={n,Splice@collatzseq@collatz@n};*)
(*collatzseq[93571393692802302];*)
(**)
(*map[n_Integer/;OddQ[n]]=o;*)
(*map[n_Integer/;EvenQ[n]]=e;*)
(**)
(*c=Map[map,collatzseq[93571393692802302]];*)
(**)
(*seqrules={*)
(*{e,o,e,o,e}:>\[Alpha],*)
(*{e,o,e}:>\[Beta],*)
(*{\[Alpha],o}:>\[Gamma],*)
(*{e,e}:>\[Delta],*)
(*{\[Beta],\[Beta]}:>\[Zeta],*)
(*{e,\[Gamma]}:>A,*)
(*{e,\[Alpha]}:>B,*)
(*{e,\[Beta]}:>F,*)
(*{e,\[Zeta]}:>G,*)
(*{\[Delta],e,o}:>T*)
(*};*)
(*oseqrules={*)
(*{e,o,e,o,e}:>\[Alpha],*)
(*{e,o,e}:>\[Beta],*)
(*{\[Alpha],o}:>\[Gamma]*)
(*};*)
(**)
(*seqfuncs=Apply[RightComposition,Map[SequenceReplace,seqrules]];oseqfuncs=Apply[RightComposition,Map[SequenceReplace,oseqrules]];*)
(**)
(*party[c_,i_]:=party[c,i]=Partition[c,i,1];*)
(*spliced[c_]:=*)
(*spliced[c]=*)
(*Table[*)
(*Splice@*)
(*party[c,i],*)
(*{i,2,Length@c/2,1}*)
(*];*)
(**)
(*tallied[c_]:=*)
(*tallied[c]=*)
(*Tally@spliced[c];*)
(**)
(*data[a_]:=*)
(*data[a]={*)
(*First@a,*)
(*Last@a,*)
(*Length@First@a Last@a,*)
(*(Length@First@a-1) Last@a*)
(*};*)
(**)
(*filter[item_]:=*)
(*filter[item]=*)
(*And[*)
(*Length@*)
(*First@item!=1,*)
(*Extract[item,2]!=1*)
(*];*)
(**)
(*select[c_]:=select[c]=Select[Map[data,tallied[c]],filter];*)
(*largest[c_]:=*)
(*largest[c]=*)
(*TakeLargestBy[*)
(*select[c],*)
(*Last,15];*)
(*]*)


(* ::Input:: *)
(*Grid@*)
(*Prepend[*)
(*largest[c],*)
(*{"Lexeme","Frequency","Freq * Length","(Length - 1)* Freq"}*)
(*]*)


(* ::Input:: *)
(*even[f]*)


(* ::Input:: *)
(*even[4]*)


(* ::Input:: *)
(*Composition[even,odd,even]*)


(* ::Input:: *)
(*Composition[even,odd,even][x]*)


(* ::Input:: *)
(*Composition[even,odd,even][x]*)


(* ::Input:: *)
(**)


(* ::Input:: *)
(*Composition[e,o,e][x]*)


(* ::Input:: *)
(*Simplify[1/2 (1+(3 x)/2)]*)


(* ::Input:: *)
(*Composition[e,o,e,o,e][x]*)


(* ::Input:: *)
(*Simplify[1/2 (1+3/2 (1+(3 x)/2))]*)


(* ::Input:: *)
(*Plot[5/4+(9 x)/8,{x,-1.66667,1.66667}]*)


(* ::Input:: *)
(*oseqrules*)


(* ::Input:: *)
(*{Composition[e,o,e,o,e][x],Composition[e,o,e][x],Composition[e,o,e,o,e,o][x]}*)


(* ::Input:: *)
(*Simplify@{1/2 (1+3/2 (1+(3 x)/2)),1/2 (1+(3 x)/2),1/2 (1+3/2 (1+3/2 (1+3 x)))}*)


(* ::Input:: *)
(*Expand@{1/2 (1+3/2 (1+(3 x)/2)),1/2 (1+(3 x)/2),1/2 (1+3/2 (1+3/2 (1+3 x)))}*)


(* ::Input:: *)
(*Range[1,21,2]*)


(* ::Input:: *)
(*Map[FactorInteger,Range[1,21,2]]*)


(* ::Input:: *)
(*Grid@*)
(*Map[FactorInteger,Range[1,21,2]]*)


(* ::Input:: *)
(*Grid@*)
(*Table[{i,*)
(*FactorInteger[odd[i]],*)
(*IntegerExponent[odd[i],2],*)
(*Divisors[i],*)
(*Select[Divisors[i][[2;;]],OddQ],*)
(*AllTrue[Select[Divisors[i][[2;;]],OddQ],LessEqualThan[i]]*)
(*},{i,3,21,2}*)
(*]*)


(* ::Input:: *)
(*Grid@*)
(*Table[{i,*)
(*FactorInteger[odd[i]],*)
(*IntegerExponent[odd[i],2],*)
(*Divisors[odd[i]],*)
(*Select[Divisors[odd[i]][[2;;]],OddQ],*)
(*AllTrue[Select[Divisors[odd[i]][[2;;]],OddQ],LessEqualThan[i]]*)
(*},{i,3,51,2}*)
(*]*)


(* ::Input:: *)
(*Grid@*)
(*Table[{i,*)
(*FactorInteger[odd[i]],*)
(*IntegerExponent[odd[i],2],*)
(*Divisors[odd[i]],*)
(*Select[Divisors[odd[i]][[2;;]],OddQ],*)
(*AllTrue[Select[Divisors[odd[i]][[2;;]],OddQ],LessEqualThan[i]]*)
(*},{i,3,51,4}*)
(*]*)


(* ::Input:: *)
(*Grid@*)
(*Table[{i,*)
(*FactorInteger[odd[i]],*)
(*IntegerExponent[odd[i],2],*)
(*Divisors[odd[i]],*)
(*Select[Divisors[odd[i]][[2;;]],OddQ],*)
(*AllTrue[Select[Divisors[odd[i]][[2;;]],OddQ],LessEqualThan[i]]*)
(*},{i,5,51,4}*)
(*]*)


(* ::Input:: *)
(*Grid@*)
(*Table[*)
(*With[{a=collatz[i],b=collatz[collatz[i]]},{*)
(*i,*)
(*a,*)
(*b,*)
(*FactorInteger[a],*)
(*IntegerExponent[a,2],*)
(*Divisors[a],*)
(*Select[Divisors[a][[2;;]],OddQ],*)
(*AllTrue[Select[Divisors[a][[2;;]],OddQ],LessEqualThan[i]]*)
(*}],{i,3,51,2}*)
(*]*)


(* ::Input:: *)
(*Grid@*)
(*Table[*)
(*With[{a=collatz[i],b=Nest[collatz,i,3]},{*)
(*i,*)
(*a,*)
(*b,*)
(*FactorInteger[b],*)
(*IntegerExponent[b,2],*)
(*Divisors[b],*)
(*Select[Divisors[b][[2;;]],OddQ],*)
(*AllTrue[Select[Divisors[b][[2;;]],OddQ],LessEqualThan[i]]*)
(*}],{i,3,51,2}*)
(*]*)


(* ::Input:: *)
(*Select[Range[100],*)
(*And[*)
(*OddQ[#],*)
(*EvenQ[collatz[collatz[#]]],*)
(*#<collatz[#]*)
(*]&*)
(*]*)


(* ::Input:: *)
(*ListPlot[{5,9,13,17,21,25,29,33,37,41,45,49,53,57,61,65,69,73,77,81,85,89,93,97}]*)


(* ::Input:: *)
(*collatzseq[5]*)


(* ::Input:: *)
(**)


(* ::Input:: *)
(*Map[map,collatzseq[5]]*)


(* ::Input:: *)
(*2^n (3 n/2+1)^n 4*)


(* ::Input:: *)
(*DiscretePlot[2^(2+n) (1+(3 n)/2)^n,{n,1,20}]*)


(* ::Input:: *)
(*2^m (3 a/2+1)^n 4*)


(* ::Input:: *)
(*2^m (2+1)^n 4*)


(* ::Input:: *)
(*DiscretePlot3D[2^(2+m) 3^n,{m,1,20},{n,1,20}]*)


(* ::Input:: *)
(*2^m ((2+1)(2))^n 4*)


(* ::Input:: *)
(*Expand@{4,4even[n],4odd[even[n]]}*)


(* ::Input:: *)
(*Expand@{4,4even[n],4odd[even[n]]}*)


(* ::Input:: *)
(*Expand@{4,4e[n],4o[e[n]]}*)


(* ::Input:: *)
(*{4,2 n,4+6 n}*)


(* ::Input:: *)
(*6(3)+4*)
