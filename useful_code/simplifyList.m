simplifyList[simplify_][list_] := Module[{count}, 
    count = 1; 
    apply[expr_] := Module[{time, temp}, 
        time = SessionTime[]; 
        temp = simplify[expr]; 
        Print[{count++, SessionTime[] - time}]; 
        temp
    ]; 
    Parallelize[Map[apply, list, {Length[Dimensions[list]]}]]
]; 
