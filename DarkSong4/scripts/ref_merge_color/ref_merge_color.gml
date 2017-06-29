/// @description  merge_color(col1, col2, amount:number)
/// @function  merge_color
/// @param col1
/// @param  col2
/// @param  amount:number
if (argument_count != 3) return lua_show_error("merge_color: Expected 3 arguments, got " + string(argument_count));
if !(is_real(argument2) || is_int64(argument2)) return lua_show_error("merge_color: Expected a number for argument2 (amount:number), got " + lua_print_value(argument2));
return merge_color(argument0, argument1, argument2);
