/// @description ds_map_keys(map)
/// @function ds_map_keys
/// @param map
//creates and returns a list of keys
var i = iter(argument0, true), l = ds_list_create();

while (iter(i)) {
    ds_list_add(l, iterkey(i));
}

return l;

