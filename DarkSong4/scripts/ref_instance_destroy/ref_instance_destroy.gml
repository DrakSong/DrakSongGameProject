/// @description  instance_destroy(self)
/// @function  instance_destroy
/// @param self
if (argument_count != 1) return lua_show_error("instance_destroy: Expected 1 argument, got " + string(argument_count));
with (argument0) instance_destroy();

