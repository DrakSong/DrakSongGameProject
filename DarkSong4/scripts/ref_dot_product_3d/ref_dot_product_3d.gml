/// @description  dot_product_3d(x1:number, y1:number, z1:number, x2:number, y2:number, z2:number)
/// @function  dot_product_3d
/// @param x1:number
/// @param  y1:number
/// @param  z1:number
/// @param  x2:number
/// @param  y2:number
/// @param  z2:number
if (argument_count != 6) return lua_show_error("dot_product_3d: Expected 6 arguments, got " + string(argument_count));
if !(is_real(argument0) || is_int64(argument0)) return lua_show_error("dot_product_3d: Expected a number for argument0 (x1:number), got " + lua_print_value(argument0));
if !(is_real(argument1) || is_int64(argument1)) return lua_show_error("dot_product_3d: Expected a number for argument1 (y1:number), got " + lua_print_value(argument1));
if !(is_real(argument2) || is_int64(argument2)) return lua_show_error("dot_product_3d: Expected a number for argument2 (z1:number), got " + lua_print_value(argument2));
if !(is_real(argument3) || is_int64(argument3)) return lua_show_error("dot_product_3d: Expected a number for argument3 (x2:number), got " + lua_print_value(argument3));
if !(is_real(argument4) || is_int64(argument4)) return lua_show_error("dot_product_3d: Expected a number for argument4 (y2:number), got " + lua_print_value(argument4));
if !(is_real(argument5) || is_int64(argument5)) return lua_show_error("dot_product_3d: Expected a number for argument5 (z2:number), got " + lua_print_value(argument5));
return dot_product_3d(argument0, argument1, argument2, argument3, argument4, argument5);

