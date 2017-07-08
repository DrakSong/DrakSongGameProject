/// @description dm(prop,value,...)
/// @function dm
/// @param prop
/// @param value
/// @param ...
//creates and returns a map with the specified values
var a = ds_map_create();
for (var i = 0; i < argument_count; i += 2)
    a[? argument[i]] = argument[i + 1];
return a;



