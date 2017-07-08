/// @description ds_list_implode(list[,seperator])
/// @function ds_list_implode
/// @param list[
/// @param seperator]
var l = argument[0], i, s=ds_list_size(l), sep = ",", str = "";
if (argument_count > 1)
    sep = argument[1];
    
for (i=0;i<s;++i) {
    str += string(l[|i]);
}

return str;


