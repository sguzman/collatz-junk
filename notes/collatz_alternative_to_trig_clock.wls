#!/usr/bin/env wolframscript
(* ::Package:: *)

(* ::Input:: *)
(*scene2=GeometricScene[{a,b,c,h,l,p},{Triangle[{a,b,c}],l\[Element]AngleBisector[{a,b,c}],h==TriangleConstruct[{a,b,c},"Orthocenter"],p==Midpoint[{a,c}]}]*)


(* ::Input:: *)
(*RandomInstance[scene2,RandomSeeding->23]*)


(* ::Input:: *)
(*RandomInstance[scene2,RandomSeeding->23]*)


(* ::Input:: *)
(*RandomInstance[scene2]*)


(* ::Input:: *)
(*FindGeometricConjectures@RandomInstance[scene2]*)


(* ::Input:: *)
(**)


(* ::Input:: *)
(*3^(3I)*)


(* ::Input:: *)
(*N[3^(3 I)]*)


(* ::Input:: *)
(*f[x_]:=(1-(1+Cos[\[Pi] x])/2*)


(* ::Input:: *)
(*(1+Cos[\[Pi] x])/2*)


(* ::Input:: *)
(*Plot[1/2 (1+Cos[\[Pi] x]),{x,-6.24,6.24}]*)


(* ::Input:: *)
(*f[x_]:=(1-(1+Cos[\[Pi] x])/2)(x/2)+((1+Cos[\[Pi] x])/2)(3x+1)*)


(* ::Input:: *)
(*f[x]*)


(* ::Input:: *)
(*ComplexPlot[f[z],{z,-3-3I,3+3I}]*)


(* ::Input:: *)
(*Manipulate[*)
(*ComplexPlot[*)
(*Nest[f,z,a],*)
(*{z,-3-3I,3+3I}*)
(*],{a,1,10,1}]*)


(* ::Input:: *)
(*TrigToExp[f[z]]*)


(* ::Input:: *)
(*co[z_]:=1/2+1/4 E^(-I \[Pi] z)+1/4 E^(I \[Pi] z)+(7 z)/4+5/8 E^(-I \[Pi] z) z+5/8 E^(I \[Pi] z) z*)


(* ::Input:: *)
(*co[z]*)


(* ::Input:: *)
(*Manipulate[*)
(*ComplexPlot[*)
(*Nest[co,z,a],*)
(*{z,-3-3I,3+3I}*)
(*,ColorFunction->"CyclicLogAbsArg"],*)
(*{a,1,10,1}]*)


(* ::Input:: *)
(*Nest[f,x,2]*)


(* ::Input:: *)
(*FullSimplify[*)
(*1/2 (1/2 x (1+1/2 (-1-Cos[\[Pi] x]))+1/2 (1+3 x) (1+Cos[\[Pi] x])) (1+1/2 (-1-Cos[\[Pi] (1/2 x (1+1/2 (-1-Cos[\[Pi] x]))+1/2 (1+3 x) (1+Cos[\[Pi] x]))]))+1/2 (1+3 (1/2 x (1+1/2 (-1-Cos[\[Pi] x]))+1/2 (1+3 x) (1+Cos[\[Pi] x]))) (1+Cos[\[Pi] (1/2 x (1+1/2 (-1-Cos[\[Pi] x]))+1/2 (1+3 x) (1+Cos[\[Pi] x]))])*)
(*,x\[Element]PositiveIntegers]*)


(* ::Input:: *)
(*FullSimplify[*)
(*1/2 (1/2 x (1+1/2 (-1-Cos[\[Pi] x]))+1/2 (1+3 x) (1+Cos[\[Pi] x])) (1+1/2 (-1-Cos[\[Pi] (1/2 x (1+1/2 (-1-Cos[\[Pi] x]))+1/2 (1+3 x) (1+Cos[\[Pi] x]))]))+1/2 (1+3 (1/2 x (1+1/2 (-1-Cos[\[Pi] x]))+1/2 (1+3 x) (1+Cos[\[Pi] x]))) (1+Cos[\[Pi] (1/2 x (1+1/2 (-1-Cos[\[Pi] x]))+1/2 (1+3 x) (1+Cos[\[Pi] x]))])*)
(*,x\[Element]Reals]*)


(* ::Input:: *)
(*FullSimplify[*)
(*1/2 (1/2 x (1+1/2 (-1-Cos[\[Pi] x]))+1/2 (1+3 x) (1+Cos[\[Pi] x])) (1+1/2 (-1-Cos[\[Pi] (1/2 x (1+1/2 (-1-Cos[\[Pi] x]))+1/2 (1+3 x) (1+Cos[\[Pi] x]))]))+1/2 (1+3 (1/2 x (1+1/2 (-1-Cos[\[Pi] x]))+1/2 (1+3 x) (1+Cos[\[Pi] x]))) (1+Cos[\[Pi] (1/2 x (1+1/2 (-1-Cos[\[Pi] x]))+1/2 (1+3 x) (1+Cos[\[Pi] x]))])*)
(*,x\[Element]Complexes]*)


(* ::Input:: *)
(*1/16 (22+49 x+7 (-1)^x (2+5 x)+(18+35 x+5 (-1)^x (2+5 x)) Cos[1/4 \[Pi] (2+7 x+(-1)^x (2+5 x))])*)


(* ::Input:: *)
(*TrigReduce[1/16 (22+49 x+7 (-1)^x (2+5 x)+(18+35 x+5 (-1)^x (2+5 x)) Cos[1/4 \[Pi] (2+7 x+(-1)^x (2+5 x))])]*)


(* ::Input:: *)
(*TreeForm[*)
(*1/16 (22+49 x+7 (-1)^x (2+5 x)+(18+35 x+5 (-1)^x (2+5 x)) Cos[1/4 \[Pi] (2+7 x+(-1)^x (2+5 x))])*)
(*]*)


(* ::Input:: *)
(*1/16 (22+49 x+7 (-1)^x a+(18+35 x+5 (-1)^x a) Cos[1/4 \[Pi] (2+7 x+(-1)^x a)])*)


(* ::Input:: *)
(*DiscretePlot[(-1)^n,{n,1,10,1}]*)


(* ::Input:: *)
(*DiscretePlot[(-1)^(n-1),{n,1,10,1}]*)


(* ::Input:: *)
(*DiscretePlot[{*)
(*(-1)^(n-1),*)
(*(1+Cos[\[Pi] x])/2*)
(*},{n,1,10,1}]*)


(* ::Input:: *)
(*DiscretePlot[{*)
(*(-1)^(n-1),*)
(*(1+Cos[\[Pi] n])/2*)
(*},{n,1,10,1}]*)


(* ::Input:: *)
(*DiscretePlot[{*)
(*(-1)^n,*)
(*(1+Cos[\[Pi] n])/2*)
(*},{n,1,10,1}]*)


(* ::Input:: *)
(*DiscretePlot[{*)
(*(-(1/2))^n,*)
(*(1+Cos[\[Pi] n])/2*)
(*},{n,1,10,1}]*)


(* ::Input:: *)
(*DiscretePlot[{*)
(*(-1)^n/2,*)
(*(1+Cos[\[Pi] n])/2*)
(*},{n,1,10,1}]*)


(* ::Input:: *)
(*DiscretePlot[{*)
(*(-1)^n/2+1,*)
(*(1+Cos[\[Pi] n])/2*)
(*},{n,1,10,1}]*)


(* ::Input:: *)
(*DiscretePlot[{*)
(*(1+(-1)^n)/2,*)
(*(1+Cos[\[Pi] n])/2*)
(*},{n,1,10,1}]*)


(* ::Input:: *)
(*Apply[*)
(*Equal,{*)
(*(1+(-1)^n)/2,*)
(*(1+Cos[\[Pi] n])/2*)
(*}]*)


(* ::Input:: *)
(*Reduce[1/2 (1+(-1)^n)==1/2 (1+Cos[n \[Pi]]),n,PositiveIntegers]*)


(* ::Input:: *)
(*FullSimplify[1/2 (1+(-1)^n)==1/2 (1+Cos[n \[Pi]]),n\[Element]PositiveIntegers]*)


(* ::Input:: *)
(*(1+(-1)^n)/2*)


(* ::Input:: *)
(*DiscretePlot[1/2 (1+(-1)^n),{n,1,20}]*)


(* ::Input:: *)
(*D[(1+(-1)^n)/2,n]*)


(* ::Input:: *)
(*NestList[(1+(-1)^#)/2&,n,5]*)


(* ::Input:: *)
(*FullSimplify[#,n\[Element]PositiveIntegers]&/@NestList[(1+(-1)^#)/2&,n,5]*)


(* ::Input:: *)
(*FullSimplify[1/2 (1+I^(1+(-1)^n)),n\[Element]PositiveIntegers]*)


(* ::Input:: *)
(*FullSimplify[1/2 (1+I^(1+I^(1+(-1)^n))),n\[Element]PositiveIntegers]*)


(* ::Input:: *)
(*I^(-1)^n*)


(* ::Input:: *)
(*FunctionExpand[I^(-1)^n]*)


(* ::Input:: *)
(*ExpToTrig[E^(1/2 I (-1)^n \[Pi])]*)


(* ::Input:: *)
(*Table[E^(1/2 I (-1)^n \[Pi]),{n,1,10,1}]*)


(* ::Input:: *)
(*Reduce[E^(1/2 I (-1)^n \[Pi])==(-1)^n I,n,PositiveIntegers]*)


(* ::Input:: *)
(*Reduce[E^(1/2 I (-1)^n \[Pi])==(-1)^n I,n]*)


(* ::Input:: *)
(*FullSimplify[E^(1/2 I (-1)^n \[Pi])==(-1)^n I,n\[Element]PositiveIntegers]*)


(* ::Input:: *)
(*FunctionExpand[1/2 (1+I^(1+I^(1+(-1)^n)))]*)


(* ::InheritFromParent:: *)
(*Table[1/2 (1+I E^(-(1/2) E^(1/2 I (-1)^n \[Pi]) \[Pi])),{n,1,10,1}]*)


(* ::Input:: *)
(**)


(* ::Input:: *)
(*Grid@*)
(*Table[*)
(*Splice@*)
(*Table[*)
(*{i,j,(i/.n->j)},*)
(*{j,1,10,1}]*)
(*,{i,NestList[(1+(-1)^#)/2&,n,5]}*)
(*]*)


(* ::Input:: *)
(*1/2 (1+I^(1+I^(1+I^(1+I^(1+(-1)^n)))))*)


(* ::Input:: *)
(*FullSimplify[1/2 (1+I^(1+I^(1+I^(1+I^(1+(-1)^n)))))]*)


(* ::Input:: *)
(*FullSimplify[1/2 (1+I^(1+I^(1+I^(1+I^(1+(-1)^n))))),n\[Element]PositiveIntegers]*)


(* ::Input:: *)
(**)
