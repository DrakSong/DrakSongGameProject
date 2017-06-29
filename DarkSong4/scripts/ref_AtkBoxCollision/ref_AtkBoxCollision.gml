var state = argument0;


for (i = 0; script_exists(i); i += 1) {
    lua_add_function(state, script_get_name(i), i);
}
