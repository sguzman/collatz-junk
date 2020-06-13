#!/usr/bin/env wolframscript
(* ::Package:: *)

(* ::Input:: *)
(*\!\( *)
(*\*UnderoverscriptBox[\(\[Sum]\), \(k = 0\), \(\[Infinity]\)]\(Binomial[n, 4  k]\)\)*)


(* ::Input:: *)
(* NestList[#/2&,n,10]*)


(* ::Input:: *)
(* recurse[f,x,n]:=Nest[f,x,n]*)


(* ::Input:: *)
(*div2[x,n]==(x/2)^2*)


(* ::Input:: *)
(* Nest[#/2&,n,k]*)


(* ::Input:: *)
(*f[n]/2*)


(* ::Input:: *)
(* Nest[#/2&,n,1]*)


(* ::Input:: *)
(* Nest[#/2&,n,2]*)


(* ::Input:: *)
(*f[x,n]==x/2^n*)


(* ::Input:: *)
(*tick[n_Real/;n\[Element]PositiveReals]:=(1+Cos[\[Pi] n])/2*)


(* ::Input:: *)
(*tock[n_Real/;n\[Element]PositiveReals]:=1-tick[n]*)


(* ::Input:: *)
(*even[n_Real/;n\[Element]PositiveReals]:=n/2*)


(* ::Input:: *)
(*oddStrict[n_Real/;n\[Element]PositiveReals]:=3n+1*)


(* ::Input:: *)
(*tickStrict[n_Real/;n\[Element]PositiveReals]:=(1+Cos[\[Pi] n])/2*)
(*tockStrict[n_Real/;n\[Element]PositiveReals]:=1-tickStrict[n]*)
(*evenStrict[n_Real/;n\[Element]PositiveReals]:=n/2*)
(*oddStrict[n_Real/;n\[Element]PositiveReals]:=3n+1*)


(* ::Input:: *)
(*evenRecurseRealStrict[x_Real/;x\[Element]PositiveReals,n_Integer/;n\[Element]PositiveIntegers]:=x/2^n*)


(* ::Input:: *)
(*oddRecurseRealStrict[x_Real/;x\[Element]PositiveReals,n_Integer/;n\[Element]PositiveIntegers] 1/2 (-1+3^n)+3^n x*)


(* ::Input:: *)
(*\[Alpha]^n x+(\[Alpha]^n-1)/(\[Alpha]-1) \[Beta]*)


(* ::Input:: *)
(*\[Alpha]^n x+(\[Alpha]^n-1)/(\[Alpha]-1) \[Beta]/.{\[Alpha]->3,\[Beta]->1}*)


(* ::Input:: *)
(*odd[n]:=3n+1*)
(*tick[n]:=(1+Cos[\[Pi] n])/2*)
(*tock[n]:=1-tick[n]*)
(*even[n]:=n/2*)
(*evenRecurseReal[x,n]:=x/2^n*)
(*oddRecurseReal[x,n]:=1/2 (-1+3^n)+3^n x*)
(**)
