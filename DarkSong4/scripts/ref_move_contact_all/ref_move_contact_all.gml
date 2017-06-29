/// @description  move_contact_all(self, dir:number, maxdist:number)
/// @function  move_contact_all
/// @param self
/// @param  dir:number
/// @param  maxdist:number
if (argument_count != 3) return lua_show_error("move_contact_all: Expected 3 arguments, got " + string(argument_count));
if !(is_real(argument1) || is_int64(argument1)) return lua_show_error("move_contact_all: Expected a number for argument1 (dir:number), got " + lua_print_value(argument1));
if !(is_real(argument2) || is_int64(argument2)) return lua_show_error("move_contact_all: Expected a number for argument2 (maxdist:number), got " + lua_print_value(argument2));
with (argument0) move_contact_all(argument1, argument2);

