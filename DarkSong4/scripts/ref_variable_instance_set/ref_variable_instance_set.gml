/// @description  ref_variable_instance_set(context, name, value)
/// @function  ref_variable_instance_set
/// @param context
/// @param  name
/// @param  value
var q = argument0, s = argument1, v = argument2, n = 0;
with (q) { variable_instance_set(id, s, v); n++; }
if (n) exit;
if (q < 100000) {
    lua_show_error("Couldn't find any instances of " + string(q) + " (" + object_get_name(q) + ")");
} else lua_show_error("Couldn't find instance " + string(q));
