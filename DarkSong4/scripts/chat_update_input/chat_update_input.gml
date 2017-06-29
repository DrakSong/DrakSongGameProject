var p = global.chat_input_pos;
if (keyboard_string != global.chat_input_last) {
    var i = 1;
    var n = string_length(keyboard_string);
    while (i <= n && string_char_at(keyboard_string, i) == string_char_at(global.chat_input_last, i)) i++;
    //
    var l = string_length(global.chat_input_last);
    if (i <= l) { // remove
        var d = l - i + 1;
        p -= d;
        keyboard_string = string_delete(global.chat_input_last, p + 1, d);
    } else if (i <= n) { // add
        var d = n - i + 1;
        p += d;
        if (p < n) {
            keyboard_string = string_insert(
                string_delete(keyboard_string, 1, i - 1),
                string_copy(keyboard_string, 1, i - 1),
                p + 1 - d);
        }
    }
}
global.chat_input_last = keyboard_string;
global.chat_input_pos = p;


