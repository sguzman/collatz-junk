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
(*1*)


(* ::Input:: *)
(*collatz2[n_Integer/;And[n>1,n==4]]:=collatz2[n]=4;*)
(*collatz2[n_Integer/;And[n>1,OddQ[n]]]:=collatz2[n]=n/6-4;*)
(*collatz2[n_Integer/;And[n>1,EvenQ[n]]]:=collatz2[n]=n/2;*)


(* ::Input:: *)
(*collatz2[3]*)


(* ::Input:: *)
(*Table[4+6i,{i,1,10,1}]*)


(* ::Input:: *)
(*func[n_]:=\!\(\**)
(*TagBox[GridBox[{*)
(*{"\[Piecewise]", GridBox[{*)
(*{"4", *)
(*RowBox[{"n", "==", "4"}]},*)
(*{*)
(*RowBox[{"2", "n"}], *)
(*RowBox[{"EvenQ", "[", "n", "]"}]},*)
(*{*)
(*RowBox[{*)
(*RowBox[{"6", "n"}], "+", "4"}], "True"}*)
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
(*NestList[func,3,10]*)


(* ::Input:: *)
(*collatz3[n_Integer/;And[n>= 1,n<=4]]:=collatz3[n]=n;*)
(*collatz3[n_Integer/;And[n>=1,Divisible[n,6]]]:=collatz3[n]=n/6-4;*)
(*collatz3[n_Integer/;And[n>=1,EvenQ[n]]]:=collatz3[n]=n/2;*)


(* ::Input:: *)
(*collatz3[1]*)


(* ::Input:: *)
(*collatz3[1]*)


(* ::Input:: *)
(*collatz3[2]*)


(* ::Input:: *)
(*collatz3[2]*)


(* ::Input:: *)
(*collatzseq[3]*)


(* ::Input:: *)
(*collatz3[4]*)


(* ::Input:: *)
(*collatz3[5]*)


(* ::Input:: *)
(*collatz3[6]*)


(* ::Input:: *)
(*Table[,{i,1,51,2}]*)


(* ::Input:: *)
(*Map[map,{3,10,5,16,8,4,2,1}]*)


(* ::Input:: *)
(*Grid@*)
(*Table[*)
(*{i,Map[map,collatzseq[i]]}*)
(*,{i,1,10,1}]*)


(* ::Input:: *)
(*Grid@*)
(*Table[*)
(*{i,Map[map,collatzseq[i]]}*)
(*,{i,1,50,1}]*)


(* ::Input:: *)
(*Grid@*)
(*Table[*)
(*{i,Tally@Map[map,collatzseq[i]]}*)
(*,{i,1,50,1}]*)


(* ::Input:: *)
(*Grid@*)
(*Table[*)
(*{i,Length@Select[Map[map,collatzseq[i]],EqualTo[e]]}*)
(*,{i,1,50,1}]*)


(* ::Input:: *)
(**)


(* ::Input:: *)
(*collatz4[n_Integer/;And[n>= 1,n==1]]:=1;*)
(*collatz4[n_Integer/;And[n>= 1,n==2]]:=2;*)
(*collatz4[n_Integer/;And[n>=1,Element[Log[n,2],PositiveIntegers]]]:=n/2;*)
(*collatz4[n_Integer/;And[n>=1,EvenQ[n]]]:=n/2;*)


(* ::Input:: *)
(*{"o","ee*o","e(oe)*ee*o"}*)


(* ::Input:: *)
(*{"o","eo","ee*o","e(oe)*ee*o"}*)


(* ::Input:: *)
(*{"o","ee*o","e(oe)*ee*o"}*)


(* ::Input:: *)
(*{1,2^(m-1),2(3 2)^n 2^(n-1)}*)


(* ::Input:: *)
(*"(e(eo)*e*)?o"*)


(* ::Input:: *)
(*"e(eo)*e*"*)


(* ::Input:: *)
(*"(eo)*e*e"*)


(* ::Input:: *)
(*Split*)


(* ::Input:: *)
(*Grid@*)
(*Table[*)
(*{i,SequenceSplit[Map[map,collatzseq[i]],{o,_}]}*)
(*,{i,1,50,1}]*)


(* ::Input:: *)
(*Grid@*)
(*Table[*)
(*{i,Map[Length,SequenceSplit[Map[map,collatzseq[i]],{o,_}]]}*)
(*,{i,1,50,1}]*)


(* ::Input:: *)
(*Grid@*)
(*Table[*)
(*{i,Map[Length,SequenceSplit[Map[map,collatzseq[i]],{o,_}]]}*)
(*,{i,1,100,1}]*)


(* ::Input:: *)
(*Grid@*)
(*Table[{*)
(*i,*)
(*Map[map,collatzseq[i]],*)
(*Length@SequenceSplit[Map[map,collatzseq[i]],{o,_}],*)
(*Map[Length,SequenceSplit[Map[map,collatzseq[i]],{o,_}]]*)
(*},{i,1,100,1}]*)


(* ::Input:: *)
(*Grid@*)
(*Table[*)
(*With[{str=StringJoin@Map[ToString,Map[map,collatzseq[i]]]},{*)
(*i,*)
(*str,*)
(*StringSplit[str,"o"],*)
(*Map[StringLength,StringSplit[str,"o"]]*)
(*}]*)
(*,{i,1,100,1}]*)


(* ::Input:: *)
(**)


(* ::Input:: *)
(*Map[StringLength,StringSplit[StringJoin@Map[ToString,c],"o"]]*)


(* ::Input:: *)
(*Tally[%49]*)


(* ::Input:: *)
(*ListPlot[%49]*)


(* ::Input:: *)
(*Histogram[%49]*)


(* ::Input:: *)
(*Grid@largest[c]*)


(* ::Input:: *)
(*Grid@largest[Out[49]]*)


(* ::Input:: *)
(*Apply[*)
(*RightComposition,*)
(*Map[*)
(*SequenceReplace,{*)
(*{1,1,1}:>a*)
(*}]][Out[49]]*)


(* ::Input:: *)
(*Grid@largest[Out[62]]*)


(* ::Input:: *)
(*Apply[*)
(*RightComposition,*)
(*Map[*)
(*SequenceReplace,{*)
(*{1,2}:>b*)
(*}]][Out[62]]*)


(* ::Input:: *)
(*Grid@largest[Out[49]]*)


(* ::Input:: *)
(*Apply[*)
(*RightComposition,*)
(*Map[*)
(*SequenceReplace,{*)
(*{1,1,1}:>a,*)
(*{1,2}:>b*)
(*}]][Out[49]]*)


(* ::Input:: *)
(*Grid@largest[Out[66]]*)


(* ::Input:: *)
(*Apply[*)
(*RightComposition,*)
(*Map[*)
(*SequenceReplace,{*)
(*{1,1,1}:>a,*)
(*{1,2}:>b,*)
(*{1,b}:>d*)
(*}]][Out[49]]*)


(* ::Input:: *)
(*Grid@largest[Out[70]]*)


(* ::Input:: *)
(*Apply[*)
(*RightComposition,*)
(*Map[*)
(*SequenceReplace,{*)
(*{1,1,1}:>a,*)
(*{1,2}:>b,*)
(*{1,b}:>d,*)
(*{1,3}:>f*)
(*}]][Out[49]]*)


(* ::Input:: *)
(*Tally[%72]*)


(* ::Input:: *)
(*SortBy[{{a,81},{b,66},{2,104},{d,39},{f,35},{1,37},{6,3},{4,32},{3,41},{9,1},{5,6},{7,2}},Last]*)


(* ::Input:: *)
(*Length[%72]*)


(* ::Input:: *)
(*Length@c*)


(* ::Input:: *)
(*Grid@largest[Out[72]]*)


(* ::Input:: *)
(*Apply[*)
(*RightComposition,*)
(*Map[*)
(*SequenceReplace,{*)
(*{1,1,1}:>a,*)
(*{1,2}:>b,*)
(*{1,b}:>d,*)
(*{1,3}:>f,*)
(*{2,2}:>g*)
(*}]][Out[49]]*)


(* ::Input:: *)
(*Grid@largest[Out[78]]*)


(* ::Input:: *)
(*Apply[*)
(*RightComposition,*)
(*Map[*)
(*SequenceReplace,{*)
(*{1,1,1}:>a,*)
(*{1,2}:>b,*)
(*{1,b}:>d,*)
(*{1,3}:>f,*)
(*{2,2}:>g,*)
(*{b,2}:>h*)
(*}]][Out[49]]*)


(* ::Input:: *)
(*Grid@largest[Out[80]]*)


(* ::Input:: *)
(*Apply[*)
(*RightComposition,*)
(*Map[*)
(*SequenceReplace,{*)
(*{1,1,1}:>a,*)
(*{1,2}:>b,*)
(*{1,b}:>d,*)
(*{1,3}:>f,*)
(*{2,2}:>g,*)
(*{b,2}:>h,*)
(*{1,4}:>i*)
(*}]][Out[49]]*)


(* ::Input:: *)
(*Length[%82]*)


(* ::Input:: *)
(*Grid@largest@Out@82*)


(* ::Input:: *)
(*Apply[*)
(*RightComposition,*)
(*Map[*)
(*SequenceReplace,{*)
(*{1,1,1}:>a,*)
(*{1,2}:>b,*)
(*{1,b}:>d,*)
(*{1,3}:>f,*)
(*{2,2}:>g,*)
(*{b,2}:>h,*)
(*{1,4}:>i,*)
(*{2,a}:>j*)
(*}]][Out[49]]*)


(* ::Input:: *)
(*Grid@largest[c]*)


(* ::Input:: *)
(*Apply[*)
(*RightComposition,*)
(*Map[*)
(*SequenceReplace,{*)
(*{e,o,e,o,e}:>a*)
(*}]][c]*)


(* ::Input:: *)
(*Grid@largest[Out[87]]*)


(* ::Input:: *)
(*Apply[*)
(*RightComposition,*)
(*Map[*)
(*SequenceReplace,{*)
(*{e,o,e,o,e}:>a,*)
(*{o,e}:>b*)
(*}]][c]*)


(* ::Input:: *)
(*MemoryInUse[]*)


(* ::Input:: *)
(*Grid@largest[Out[92]]*)


(* ::Input:: *)
(*Apply[*)
(*RightComposition,*)
(*Map[*)
(*SequenceReplace,{*)
(*{e,o,e,o,e}:>a,*)
(*{o,e}:>b,*)
(*{e,b,e}:>d*)
(*}]][c]*)


(* ::Input:: *)
(*Grid@largest[Out[94]]*)


(* ::Input:: *)
(*Apply[*)
(*RightComposition,*)
(*Map[*)
(*SequenceReplace,{*)
(*{e,o,e,o,e}:>a,*)
(*{o,e}:>b,*)
(*{e,b,e}:>d,*)
(*{e,e}:>f*)
(*}]][c]*)


(* ::Input:: *)
(*Grid@largest[Out[92]]*)


(* ::Input:: *)
(*Apply[*)
(*RightComposition,*)
(*Map[*)
(*SequenceReplace,{*)
(*{e,o,e,o,e}:>a,*)
(*{o,e}:>b,*)
(*{e,b,e}:>d,*)
(*{e,e}:>f,*)
(*{e,e}:>g*)
(*}]][c]*)


(* ::Input:: *)
(*Grid@largest[Out[98]]*)


(* ::Input:: *)
(*Apply[*)
(*RightComposition,*)
(*Map[*)
(*SequenceReplace,{*)
(*{e,o,e,o,e}:>a,*)
(*{o,e}:>b,*)
(*{e,b,e}:>d,*)
(*{e,e}:>f,*)
(*{e,e}:>g*)
(*}]][c]*)
