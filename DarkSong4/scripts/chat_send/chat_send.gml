var s = argument0;
if (true) {
    chat_add("["
        + date_time_string(date_current_datetime())
        + "] " + s);
    with (oGameControl) {
        lua_add_code(live_state, s);
    }
}
