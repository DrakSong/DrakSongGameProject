/// @description  live_init(path)
/// @function  live_init
/// @param path
live_state = lua_state_create();
ref_init(live_state);
live_path = argument0;
live_hash = "";
live_next = -100;
live_update();
