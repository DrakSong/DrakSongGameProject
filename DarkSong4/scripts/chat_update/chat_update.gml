var s, i, n, d;
if (true) {
    // triggers:
    if (!global.chat_open) {
        if (keyboard_check_released(vk_f1)) {
            global.chat_open = true;
            global.chat_beam = current_time - 200;
            keyboard_string = "";
            global.chat_input_last = "";
            global.chat_input_pos = 0;
            keyboard_string = "";
        }
    } else {
        // Pasting:
        if (keyboard_check(vk_control) && keyboard_check_pressed(ord("V"))) {
            s = clipboard_get_text();
            if (string_pos(chr(10), s)) {
                s = string_replace_all(s, chr(13)+chr(10), chr(10));
                i = string_pos(chr(10), s);
                while (i > 0) {
                    chat_send(string_copy(s, 1, i - 1));
                    s = string_copy(s, i + 1, string_length(s) - i);
                    i = string_pos(chr(10), s);
                }
                keyboard_string += s;
            } else keyboard_string += s;
        }
        // Input:
        chat_update_input();
        //
        chat_update_pan();
        //
        if (keyboard_check(vk_control)) {
            if (keyboard_check_pressed(ord("C"))) clipboard_set_text(keyboard_string);
        }
        if (global.chat_fill_text != "" && string_ord_at(global.chat_fill_text, 1) == ord("/")) {
            i = 1024;
        } else i = 150;
        if (string_length(keyboard_string) > i) {
            keyboard_string = string_copy(keyboard_string, 1, i);
        }
        //
        chat_update_history();
        //
        d = (keyboard_check_pressed(vk_pageup) - keyboard_check_pressed(vk_pagedown)) * 18;
        d += (mouse_wheel_up() - mouse_wheel_down()) * 3;
        if (d != 0 && keyboard_check(vk_control)) d = sign(d) * ds_list_size(global.chat_lines);
        if (d != 0) {
            global.chat_offset = max(0, min(global.chat_offset + d,
                ds_list_size(global.chat_lines) - 18));
        }
        //
        if (keyboard_check_released(vk_f2)) {
            global.chat_open = false;
            global.chat_fill_text = "";
        } else if (keyboard_check_released(vk_f1)) {
            s = keyboard_string;
            if (s != "") {
                if (true || string_ord_at(s, 1) == ord("/")) {
                    i = ds_list_find_index(global.chat_sent, s);
                    if (i >= 0) ds_list_delete(global.chat_sent, i);
                    ds_list_insert(global.chat_sent, 0, s);
                    i = ds_list_size(global.chat_sent);
                    if (i > 64) ds_list_delete(global.chat_sent, i - 1);
                }
                chat_send(s);
            }
            global.chat_open = false;
        }
    } // if (global.chat_open)
    //
} else if (!global.chat_open) {
    global.chat_open = false;
    global.chat_fill_text = "";
}


