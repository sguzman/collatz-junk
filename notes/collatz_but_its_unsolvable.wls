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


(* ::Input:: *)
(*tt[n_Integer/;n\[Element]PositiveIntegers]:=\!\(\**)
(*TagBox[GridBox[{*)
(*{"\[Piecewise]", GridBox[{*)
(*{"1", *)
(*RowBox[{"n", "==", "1"}]},*)
(*{*)
(*FractionBox["n", "2"], *)
(*RowBox[{"EvenQ", "[", "n", "]"}]},*)
(*{*)
(*RowBox[{*)
(*RowBox[{"3", "n"}], "+", "1"}], *)
(*RowBox[{"OddQ", "[", "n", "]"}]}*)
(*},*)
(*AllowedDimensions->{2, Automatic},*)
(*Editable->True,*)
(*GridBoxAlignment->{"Columns" -> {{Left}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, "RowsIndexed" -> {}},*)
(*GridBoxItemSize->{"Columns" -> {{Automatic}}, "ColumnsIndexed" -> {}, "Rows" -> {{1.}}, "RowsIndexed" -> {}},*)
(*GridBoxSpacings->{"Columns" -> {Offset[0.27999999999999997`], {Offset[0.84]}, Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}, "RowsIndexed" -> {}},*)
(*Selectable->True]}*)
(*},*)
(*GridBoxAlignment->{"Columns" -> {{Left}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, "RowsIndexed" -> {}},*)
(*GridBoxItemSize->{"Columns" -> {{Automatic}}, "ColumnsIndexed" -> {}, "Rows" -> {{1.}}, "RowsIndexed" -> {}},*)
(*GridBoxSpacings->{"Columns" -> {Offset[0.27999999999999997`], {Offset[0.35]}, Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}, "RowsIndexed" -> {}}],*)
(*"Piecewise",*)
(*DeleteWithContents->True,*)
(*Editable->False,*)
(*SelectWithContents->True,*)
(*Selectable->False,*)
(*StripWrapperBoxes->True]\)*)


(* ::Input:: *)
(*NestList[tt,n,10]*)


(* ::Input:: *)
(*NestList[tt,27,10]*)


(* ::Input:: *)
(*NestList[tt,27,100]*)


(* ::Input:: *)
(*NestList[tt,27,111]*)


(* ::Input:: *)
(*NestList[tt,27,114]*)


(* ::Input:: *)
(*Tally@*)
(*Map[map,*)
(*collatzseq[9780657630]]*)


(* ::Input:: *)
(*evenRecurseReal[n,707]*)


(* ::Input:: *)
(*n/2^707*)


(* ::Input:: *)
(*Nest[(3#+1)/2&,n,707]*)


(* ::Input:: *)
(*FullSimplify[Nest[(3#+1)/2&,n,707],n\[Element]PositiveIntegers]*)


(* ::Input:: *)
(*TreeForm@Out@34*)


(* ::Input:: *)
(*Plot[Out[34],{n,1,10},PlotRange->Full]*)


(* ::Input:: *)
(*FullSimplify[ArcCurvature[{n,Out[34]},n],n\[Element]PositiveIntegers]*)


(* ::Input:: *)
(**)


(* ::Input:: *)
(*Tally@*)
(*Partition[*)
(*Map[map,*)
(*collatzseq[9780657630]]*)
(*,2,1]*)


(* ::Input:: *)
(**)


(* ::Input:: *)
(*Last/@Tally@*)
(*Partition[*)
(*Map[map,*)
(*collatzseq[9780657630]]*)
(*,2,1]*)


(* ::Input:: *)
(*Out[39]/Total@Out[39]*)


(* ::Input:: *)
(*N@Out[40]*)


(* ::Input:: *)
(*Grid@*)
(*Table[*)
(*With[{count=Tally@*)
(*Partition[*)
(*Map[map,*)
(*collatzseq[i]],2,1]},*)
(*With[{lexeme=First/@count,freq=N[Map[Last,count]/Total@Map[Last,count]]},*)
(*{i,Transpose[lexeme,freq]}*)
(*]]*)
(*,{i,1,1000}]*)


(* ::Input:: *)
(*Grid@*)
(*Table[*)
(*With[{count=Tally@*)
(*Partition[*)
(*Map[map,*)
(*collatzseq[i]],2,1]},*)
(*With[{lexeme=First/@count,freq=N[Map[Last,count]/Total@Map[Last,count]]},*)
(*{i,Transpose[lexeme,freq]}*)
(*]]*)
(*,{i,1,10}]*)


(* ::Input:: *)
(*Transpose[{{o,e},{e,o},{e,e}},{0.2857142857142857`,0.2857142857142857`,0.42857142857142855`}]*)


(* ::Input:: *)
(*Grid@*)
(*Table[*)
(*With[{count=Tally@*)
(*Partition[*)
(*Map[map,*)
(*collatzseq[i]],2,1]},*)
(*With[{lexeme=First/@count,freq=N[Map[Last,count]/Total@Map[Last,count]]},*)
(*{i,Transpose[{lexeme,freq}]}*)
(*]]*)
(*,{i,1,10}]*)


(* ::Input:: *)
(*Grid@*)
(*Table[*)
(*With[{count=Tally@*)
(*Partition[*)
(*Map[map,*)
(*collatzseq[i]],2,1]},*)
(*With[{lexeme=First/@count,freq=N[Map[Last,count]/Total@Map[Last,count]]},*)
(*{i,{lexeme,freq}}*)
(*]]*)
(*,{i,1,10}]*)


(* ::Input:: *)
(*Grid@*)
(*Table[*)
(*With[{count=Tally@*)
(*Partition[*)
(*Map[map,*)
(*collatzseq[i]],2,1]},*)
(*With[{lexeme=First/@count,freq=N[Map[Last,count]/Total@Map[Last,count]]},*)
(*{i,{lexeme,freq}}*)
(*]]*)
(*,{i,2,10}]*)


(* ::Input:: *)
(*Grid@*)
(*Table[*)
(*With[{count=Tally@*)
(*Partition[*)
(*Map[map,*)
(*collatzseq[i]],2,1]},*)
(*With[{lexeme=First/@count,freq=N[Map[Last,count]/Total@Map[Last,count]]},*)
(*{i,{lexeme,freq}}*)
(*]]*)
(*,{i,2,100}]*)


(* ::Input:: *)
(*Grid@*)
(*Table[*)
(*With[{list=Partition[*)
(*Map[map,*)
(*collatzseq[i]],2,1]},*)
(*With[{count=Tally@list},*)
(*With[{lexeme=First/@count,freq=N[Map[Last,count]/Total@Map[Last,count]]},*)
(*{i,{lexeme,freq,Length@list}}*)
(*]]]*)
(*,{i,2,100}]*)


(* ::Input:: *)
(*Grid@*)
(*Table[*)
(*With[{list=Partition[*)
(*Map[map,*)
(*collatzseq[i]],2,1]},*)
(*With[{count=Sort@Tally@list},*)
(*With[{lexeme=First/@count,freq=N[Map[Last,count]/Total@Map[Last,count]]},*)
(*{i,{lexeme,freq,Length@list}}*)
(*]]]*)
(*,{i,2,10}]*)


(* ::Input:: *)
(*Sort@{{e,e},{e,o},{o,e}}*)


(* ::Input:: *)
(*Sort@{{o,e},{e,o},{e,e}}*)


(* ::Input:: *)
(*Grid@*)
(*Table[*)
(*With[{list=Partition[*)
(*Map[map,*)
(*collatzseq[i]],2,1]},*)
(*With[{count=Sort@Tally@list},*)
(*With[{lexeme=First/@count,freq=N[Map[Last,count]/Total@Map[Last,count]]},*)
(*{i,lexeme,freq,Length@list}*)
(*]]]*)
(*,{i,2,10}]*)


(* ::Input:: *)
(*Grid@*)
(*Table[*)
(*With[{list=Partition[*)
(*Map[map,*)
(*collatzseq[i]],2,1]},*)
(*With[{count=Sort@Tally@list},*)
(*With[{lexeme=First/@count,freq=N[Map[Last,count]/Total@Map[Last,count]]},*)
(*{i,lexeme,freq,Length@list}*)
(*]]]*)
(*,{i,2,100}]*)


(* ::Input:: *)
(*27*)


(* ::Input:: *)
(*FactorInteger[27]*)


(* ::Input:: *)
(*collatzseq[27]*)


(* ::Input:: *)
(*Map[*)
(*ConstantArray[First@#,Last@#]*)
(*&,FactorInteger[27]]*)


(* ::Input:: *)
(**)


(* ::Input:: *)
(**)


(* ::Input:: *)
(*Map[*)
(*Splice@ConstantArray[First@#,Last@#]*)
(*&,FactorInteger[27]]*)


(* ::Input:: *)
(*Map[*)
(*Splice@ConstantArray[First@#,Last@#]*)
(*&,FactorInteger[64]]*)


(* ::Input:: *)
(*Table[*)
(*Map[Splice@*)
(*ConstantArray[First@#,Last@#]*)
(*&,FactorInteger[i]],*)
(*{i,collatzseq[27]}]*)


(* ::Input:: *)
(*Grid@*)
(*Table[*)
(*{i,Map[Splice@*)
(*ConstantArray[First@#,Last@#]*)
(*&,FactorInteger[i]]},*)
(*{i,collatzseq[27]}]*)


(* ::Input:: *)
(*Table[2^i,{i,1,10}]*)


(* ::Input:: *)
(**)


(* ::Input:: *)
(*Grid@*)
(*Table[*)
(*{i,*)
(*Select[*)
(*Map[Splice@*)
(*ConstantArray[First@#,Last@#]*)
(*&,FactorInteger[i]]*)
(*,2!=#&]*)
(*},*)
(*{i,collatzseq[27]}]*)


(* ::Input:: *)
(*Grid@*)
(*Table[*)
(*{i,*)
(*Log[2,Apply[Times,Select[*)
(*Map[Splice@*)
(*ConstantArray[First@#,Last@#]*)
(*&,FactorInteger[i]]*)
(*,2!=#&]]]*)
(*},*)
(*{i,collatzseq[27]}]*)


(* ::Input:: *)
(*Grid@*)
(*Table[*)
(*{i,*)
(*N@Log[2,Apply[Times,Select[*)
(*Map[Splice@*)
(*ConstantArray[First@#,Last@#]*)
(*&,FactorInteger[i]]*)
(*,2!=#&]]]*)
(*},*)
(*{i,collatzseq[27]}]*)


(* ::Input:: *)
(*Grid@*)
(*Table[*)
(*{i,*)
(*With[{val=N@Log[2 ,Apply[Times,Select[*)
(*Map[Splice@*)
(*ConstantArray[First@#,Last@#]*)
(*&,FactorInteger[i]]*)
(*,2!=#&]]]},*)
(*val-Floor[val]*)
(*]*)
(*},*)
(*{i,collatzseq[27]}]*)


(* ::Input:: *)
(**)
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
(*ListPlot[%69]*)


(* ::Input:: *)
(*Manipulate[*)
(*With[{list=Out[69][[;;i]]},*)
(*ListPlot[list,PlotRange->Full]*)
(*],{i,1,Length@Out[69]}*)
(*]*)


(* ::Input:: *)
(*Manipulate[*)
(*With[{list=Out[69][[;;i]]},*)
(*ListPlot[list,PlotRange->Full]*)
(*],{i,1,Length@Out[69],1}*)
(*]*)


(* ::Input:: *)
(*Manipulate[*)
(*With[{list=Out[69][[;;i]]},*)
(*ListPlot[list,PlotRange->Full,ImageSize->Large]*)
(*],{i,1,Length@Out[69],1}*)
(*]*)


(* ::Input:: *)
(*Grid@*)
(*Table[*)
(*{i,Map[Splice@*)
(*ConstantArray[First@#,Last@#]*)
(*&,FactorInteger[i]]},*)
(*{i,collatzseq@9780657630}]*)


(* ::Input:: *)
(*Manipulate[*)
(*With[{list=Out[69][[;;i]]},*)
(*ListPlot[list,PlotRange->{1200,1}]*)
(*],{i,1,Length@Out[69]}*)
(*]*)


(* ::Input:: *)
(*Manipulate[*)
(*With[{list=Out[69][[;;i]]},*)
(*ListPlot[list,PlotRange->{1200,1},ImageSize->Large]*)
(*],{i,1,Length@Out[69],1}*)
(*]*)


(* ::Input:: *)
(*Manipulate[*)
(*With[{list=Out[69][[;;i]]},*)
(*ListPlot[list,PlotRange->{1,1200},ImageSize->Large]*)
(*],{i,1,Length@Out[69],1}*)
(*]*)


(* ::Input:: *)
(*Manipulate[*)
(*With[{list=Out[69][[;;i]]},*)
(*ListPlot[list,PlotRange->{{0,1200},{0,1}},ImageSize->Large]*)
(*],{i,1,Length@Out[69],1}*)
(*]*)


(* ::Input:: *)
(*Manipulate[*)
(*With[{list=Out[69][[;;i]]},*)
(*Histogram[list,PlotRange->Full,ImageSize->Large]*)
(*],{i,1,Length@Out[69],1}*)
(*]*)
