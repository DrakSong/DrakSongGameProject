///string_max_length(string,maxlength)
//Returns the string cut off at a defined maximum number of characters.
//Useful for name inputs, animating in text etc

if( string_length(argument0)<=argument1 ) return argument0;
else return string_copy(argument0,1,max(argument1,0));
