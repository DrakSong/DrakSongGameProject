/// @description  draw_self(self)
/// @function  draw_self
/// @param self
if (argument_count != 1) return lua_show_error("draw_self: Expected 1 argument, got " + string(argument_count));
with (argument0) draw_self();

