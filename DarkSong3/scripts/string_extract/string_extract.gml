/// @description  string_extract(str,sep,ind)
/// @function  string_extract
/// @param str
/// @param sep
/// @param ind
//example: string_extract("tree,stone,gras",",",2) return gras

var s,se,i,l;
s = argument0;
se = argument1;
i = argument2;
l = string_length(se)-1;
repeat (i){ 
    s = string_delete(s,1,string_pos(se,s)+l);
}
s = string_delete(s,string_pos(se,s),string_length(s));
return s;

