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
(*collatzseq[93571393692802302];*)
(**)
(*map[n_Integer/;OddQ[n]]=o*)
(*map[n_Integer/;EvenQ[n]]=e*)
(**)
(*c=Map[map,collatzseq[93571393692802302]]; *)
(**)
(*seqrules={{e,o,e,o,e}:>\[Alpha],{e,o,e}:>\[Beta],{\[Alpha],o}:>\[Gamma],{e,e}:>\[Delta],{\[Beta],\[Beta]}:>\[Zeta],{e,\[Gamma]}:>A,{e,\[Alpha]}:>B,{e,\[Beta]}:>F,{e,\[Zeta]}:>G,{\[Delta],e,o}:>T}*)
(*oseqrules={{e,o,e,o,e}:>\[Alpha],{e,o,e}:>\[Beta],{\[Alpha],o}:>\[Gamma]}*)
(**)
(*seqfuncs=Apply[RightComposition,Map[SequenceReplace,seqrules]]*)
(*oseqfuncs=Apply[RightComposition,Map[SequenceReplace,oseqrules]]*)


(* ::Input:: *)
(*c*)


(* ::Input:: *)
(*oseqfuncs[c]*)


(* ::Input:: *)
(*Tally[%34]*)


(* ::Input:: *)
(*Grid@*)
(*Table[*)
(*{i,oseqfuncs[Map[map,collatzseq[i]]]}*)
(*,{i,1,10,1}*)
(*]*)


(* ::Input:: *)
(*Grid@*)
(*Table[{*)
(*i,*)
(*Tally@*)
(*oseqfuncs@*)
(*Map[map,collatzseq@i]*)
(*},{i,1,100,1}*)
(*]*)


(* ::Input:: *)
(*Grid@*)
(*Table[{*)
(*i,*)
(*SortBy[*)
(*Tally@*)
(*oseqfuncs@*)
(*Map[map,collatzseq@i]*)
(*,Last]*)
(*},{i,1,100,1}*)
(*]*)


(* ::Input:: *)
(*Grid@*)
(*Table[{*)
(*i,*)
(*SortBy[*)
(*Tally@*)
(*Map[map,collatzseq@i]*)
(*,Last]*)
(*},{i,1,100,1}*)
(*]*)


(* ::Input:: *)
(*Grid@*)
(*Table[{*)
(*i,*)
(*SortBy[*)
(*Tally@*)
(*Map[map,collatzseq@i]*)
(*,Last],*)
(*Fold[Divide,1,*)
(*},{i,1,100,1}*)


(* ::Input:: *)
(*Association[Tally@c]*)


(* ::Input:: *)
(*Tally@c*)


(* ::Input:: *)
(*Association[Splice@Tally@c]*)


(* ::Input:: *)
(*Association[First@#->Last@#&/@Tally@c]*)


(* ::Input:: *)
(* *)


(* ::Input:: *)
(*Grid@*)
(*Table[*)
(*With[{tally=Tally@Map[map,collatzseq@i]},*)
(*With[{assoc=Association[First@#->Last@#&/@tally]},*)
(*{*)
(*i,*)
(*SortBy[*)
(*tally*)
(*,Last],*)
(*assoc[e]/assoc[o]*)
(*}]],{i,1,100,1}*)
(*]*)


(* ::Input:: *)
(*Grid@*)
(*Table[*)
(*With[{tally=Tally@Map[map,collatzseq@i]},*)
(*With[{assoc=Association[First@#->Last@#&/@tally]},*)
(*{*)
(*i,*)
(*SortBy[*)
(*tally*)
(*,Last],*)
(*N@(assoc[e]/assoc[o])*)
(*}]],{i,2,100,1}*)
(*]*)


(* ::Input:: *)
(*Tally@Map[map,collatzseq[98]]*)


(* ::Input:: *)
(*Tally@Map[map,collatzseq[99]]*)


(* ::Input:: *)
(*Tally@Map[map,collatzseq[100]]*)


(* ::Input:: *)
(*Table[*)
(*With[{tally=Tally@Map[map,collatzseq@i]},*)
(*With[{assoc=Association[First@#->Last@#&/@tally]},*)
(*{*)
(*i,*)
(*N@(assoc[e]/assoc[o])*)
(*}]],{i,2,100,1}*)
(*]*)


(* ::Input:: *)
(*ListPlot[%53,Joined->True]*)


(* ::Input:: *)
(*ListPlot[*)
(*Table[*)
(*With[{tally=Tally@Map[map,collatzseq@i]},*)
(*With[{assoc=Association[First@#->Last@#&/@tally]},*)
(*{*)
(*i,*)
(*N@(assoc[e]/assoc[o])*)
(*}]],{i,2,500,1}*)
(*],Joined->False]*)


(* ::Input:: *)
(*ListLogPlot[*)
(*Table[*)
(*With[{tally=Tally@Map[map,collatzseq@i]},*)
(*With[{assoc=Association[First@#->Last@#&/@tally]},*)
(*{*)
(*i,*)
(*N@(assoc[e]/assoc[o])*)
(*}]],{i,2,500,1}*)
(*],Joined->False]*)


(* ::Input:: *)
(*Grid@*)
(*TakeLargestBy[*)
(*Table[*)
(*With[{tally=Tally@Map[map,collatzseq@i]},*)
(*With[{assoc=Association[First@#->Last@#&/@tally]},*)
(*{*)
(*i,*)
(*N@(assoc[e]/assoc[o])*)
(*}]],{i,2,1000,1}*)
(*],Last,10]*)


(* ::Input:: *)
(*Grid@*)
(*TakeLargestBy[*)
(*Table[*)
(*With[{tally=Tally@Map[map,collatzseq@i]},*)
(*With[{assoc=Association[First@#->Last@#&/@tally]},*)
(*{*)
(*i,*)
(*N@(assoc[e]/assoc[o])*)
(*}]],{i,2,10000,1}*)
(*],Last,10]*)


(* ::Input:: *)
(*Tally@c*)


(* ::Input:: *)
(*BarChart[Apply[Labeled,Reverse[{{e,1304},{o,788}},2],{1}]]*)


(* ::Input:: *)
(*MatrixForm@{{e,1304},{o,788}}*)


(* ::Input:: *)
(*Transpose@{{e,1304},{o,788}}*)


(* ::Input:: *)
(*1304/788*)


(* ::Input:: *)
(*N[326/197]*)


(* ::Input:: *)
(*3/2*)


(* ::Input:: *)
(*N[3/2]*)


(* ::Input:: *)
(*Grid@*)
(*TakeSmallestBy[*)
(*Table[*)
(*With[{tally=Tally@Map[map,collatzseq@i]},*)
(*With[{assoc=Association[First@#->Last@#&/@tally]},*)
(*{*)
(*i,*)
(*N@(assoc[e]/assoc[o])*)
(*}]],{i,2,10000,1}*)
(*],Last,10]*)


(* ::Input:: *)
(*Grid@*)
(*TakeSmallestBy[*)
(*Table[*)
(*With[{tally=Tally@Map[map,collatzseq@i]},*)
(*With[{assoc=Association[First@#->Last@#&/@tally]},*)
(*{*)
(*i,*)
(*Length@collatzseq@i,*)
(*N@(assoc[e]/assoc[o])*)
(*}]],{i,2,10000,1}*)
(*],Last,10]*)


(* ::Input:: *)
(*Grid@*)
(*TakeLargestBy[*)
(*Table[*)
(*With[{tally=Tally@Map[map,collatzseq@i]},*)
(*With[{assoc=Association[First@#->Last@#&/@tally]},*)
(*{*)
(*i,*)
(*Length@collatzseq@i,*)
(*N@(assoc[e]/assoc[o])*)
(*}]],{i,2,10000,1}*)
(*],Last,10]*)
