///real_sigfigs(value,sigfigs)
///Returns argument0 rounded to (argument1) significant figures
///eg 21952 to 2 significant figures returns 22000
///Created by Andrew McCluskey, use it freely

var numfigs=string_length(string(argument0));

if( numfigs>=argument0 )
{
    return argument0;
}
else
{
    var figstr=string(argument0+(power(10,numfigs-argument1)/2));
    
    numfigs=string_length(figstr)
    
    figstr=string_copy(figstr,1,argument1)
    repeat(numfigs-argument1) figstr+="0"
    
    return real(figstr);
}
