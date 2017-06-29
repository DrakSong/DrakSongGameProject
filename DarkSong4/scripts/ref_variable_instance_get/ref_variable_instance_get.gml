/// @description  ref_variable_instance_get(context, name)
/// @function  ref_variable_instance_get
/// @param context
/// @param  name
var q = argument0, s = argument1;
with (q) return variable_instance_get(id, s);
if (q < 100000) {
    lua_show_error("Couldn't find any instances of " + string(q) + " (" + object_get_name(q) + ")");
} else lua_show_error("Couldn't find instance " + string(q));
return undefined;
