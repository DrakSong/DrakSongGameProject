/// @description  instance_position(x:number, y:number, obj:index)
/// @function  instance_position
/// @param x:number
/// @param  y:number
/// @param  obj:index
if (argument_count != 3) return lua_show_error("instance_position: Expected 3 arguments, got " + string(argument_count));
if !(is_real(argument0) || is_int64(argument0)) return lua_show_error("instance_position: Expected a number for argument0 (x:number), got " + lua_print_value(argument0));
if !(is_real(argument1) || is_int64(argument1)) return lua_show_error("instance_position: Expected a number for argument1 (y:number), got " + lua_print_value(argument1));
if !(is_real(argument2) || is_int64(argument2)) return lua_show_error("instance_position: Expected a index for argument2 (obj:index), got " + lua_print_value(argument2));
return instance_position(argument0, argument1, argument2);

