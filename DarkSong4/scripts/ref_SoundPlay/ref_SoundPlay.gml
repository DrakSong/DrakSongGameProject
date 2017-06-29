


/*
if (argument_count != 1) return lua_show_error("SoundPlay: Expected 1 argument, got " + string(argument_count));
if !(is_real(argument0) || is_int64(argument0)) return lua_show_error("SoundPlay: Expected a color for argument0 (col:color), got " + lua_print_value(argument0));
SoundPlay(argument0);