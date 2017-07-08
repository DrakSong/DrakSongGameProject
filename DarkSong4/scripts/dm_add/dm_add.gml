/// @description dm_add(map,prop,value,...)
/// @function dm_add
/// @param map
/// @param prop
/// @param value
/// @param ...
//adds specified values to a map
var a = argument[0];
for (var i = 1; i < argument_count; i += 2)
    a[? argument[i]] = argument[i + 1];
return a;

