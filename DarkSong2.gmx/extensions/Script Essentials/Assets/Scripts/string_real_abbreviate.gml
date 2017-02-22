///string_real_abbreviate(real,decimals)
///Returns argument0 abbreviated with a k, m etc
///eg 1344003 might become 1.34m
///Works up to sextillions
///Created by Andrew McCluskey

var Rea=floor(real(argument0)); Dec=floor(real(argument1));
var Add=""; Div=0; Eva=0;

if( Rea>=1000000000000000000000 )
{
    Add="sx";
    Div=power(10,21);
}
if( Rea>=1000000000000000000 )
{
    Add="qt";
    Div=power(10,18);
}
if( Rea>=1000000000000000 )
{
    Add="qd";
    Div=power(10,15);
}
else if( Rea>=1000000000000 )
{
    Add="t";
    Div=power(10,12);
}
else if( Rea>=1000000000 )
{
    Add="b";
    Div=power(10,9);
}
else if( Rea>=1000000 )
{
    Add="m";
    Div=power(10,6);
}
else if( Rea>=1000 )
{
    Add="k";
    Div=power(10,3);
}

if( Div>0 ) Rea/=Div;

Eva=string_format(Rea,string_length(string(Rea)),Dec);

return string(Eva)+Add; 
