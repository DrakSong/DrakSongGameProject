var d = keyboard_check(vk_right) - keyboard_check(vk_left);
if (d != 0) {
    var i = global.chat_input_shift;
    if (i == 0 || i >= 5 && (i % 3 == 0)) {
        global.chat_input_pos += d;
        global.chat_beam = current_time - 200;
    }
    global.chat_input_shift = i + 1;
} else global.chat_input_shift = 0;
var n = string_length(keyboard_string);
if (keyboard_check(vk_home)) global.chat_input_pos = 0;
if (keyboard_check(vk_end)) global.chat_input_pos = n;
global.chat_input_pos = clamp(global.chat_input_pos, 0, n);
