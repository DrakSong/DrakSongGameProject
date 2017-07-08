/// @description ds_list_implode_escape(list[,seperator,toEscape])
/// @function ds_list_implode_escape
/// @param list[
/// @param seperator
/// @param toEscape]
var l = argument[0], i, s=ds_list_size(l), sep = ",", str = "", esc = "";
if (argument_count > 1)
    sep = argument[1];
if (argument_count > 2)
    esc = argument[2];
    
for (i=0;i<s;++i) {
    if (esc != "") {
        if (string_count(sep, l[|i]) > 0)
            str += esc + string(l[|i]) + esc;
        else 
            str += string(l[|i]);
    }
    else
        str += string(l[|i]);
        
    if (i < s - 1) str += sep;
}

return str;


