///MinMax(var,varMin,varMax);
var Var = argument0;
var VarMin = argument1
var VarMax = argument2;


if Var < VarMin
{
Var = VarMin
}
Var = min(VarMax,Var);
Var = max(0,Var);

return Var;
