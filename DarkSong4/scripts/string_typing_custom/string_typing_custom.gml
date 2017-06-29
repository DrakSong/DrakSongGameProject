/// @description  string_typing_custom(str,count)
/// @function  string_typing_custom
/// @param str
/// @param count
// str = string with commands
// count = count string without commands
// Example: string_typing_custom([$=c_white]Hello World,1) will return "H", not "["
// Example2:
/*
var str;
count += 1
str = "[$=angle(45)]Hello[$=/], [$=a(0.5)]World!"
draw_text_custom(10,10,string_typing_custom(str,count),1)
*/

var str, count, _strab;

str = argument0;
count = min(argument1,string_length(str));
temp_count = count;
_strab = str;

var i;
i = 0

while(count > i){
    if string_copy(str,i+1,3)= "[$="{
        var length;
        length = string_copy(str,i+4,string_pos("]",str)-i-4)

        str = string_replace(str,"[$=","|||")
        str = string_replace(str,"]","|")
        
        i += string_length(length)+4
        count += string_length(length)+4
        
    }   
    i = min(i+1,string_length(str))    
    if i >= string_length(str){
        break;
    }
}

return string_copy(_strab,0,count);
