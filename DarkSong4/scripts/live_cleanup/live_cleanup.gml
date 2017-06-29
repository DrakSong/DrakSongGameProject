/// @description  live_cleanup()
/// @function  live_cleanup
if (live_state >= 0) {
    lua_state_destroy(live_state);
    live_state = -1;
}
