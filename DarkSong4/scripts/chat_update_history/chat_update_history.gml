var d = keyboard_check_pressed(vk_up) - keyboard_check_pressed(vk_down);
if (d != 0 && !ds_list_empty(global.chat_sent)) {
    var i = ds_list_find_index(global.chat_sent, keyboard_string);
    var n = ds_list_size(global.chat_sent);
    if (i < 0) {
        if (d < 0) i = n - 1; else i = 0;
    } else i += d;
    var s = global.chat_sent[|i];
    if (is_undefined(s)) s = "";
    keyboard_string = s;
    global.chat_input_pos = string_length(s);
    global.chat_input_last = s;
}


