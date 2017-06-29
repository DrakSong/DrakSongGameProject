/// @description  live_update()
/// @function  live_update
if (--live_next <= 0) {
    var last_hash = live_hash;
    if (file_exists(live_path)) {
        live_hash = sha1_file(live_path);
    } else {
        chat_add("Couldn't find " + live_path + ".");
        live_hash = "";
    }
    if (live_hash != last_hash) {
        if (live_hash != "") lua_add_file(live_state, live_path);
        if (live_next > -100) {
            var t = date_time_string(date_current_datetime());
            chat_add("[" + t + "] Reloaded " + live_path);
        }
    }
    live_next = 7;
}
