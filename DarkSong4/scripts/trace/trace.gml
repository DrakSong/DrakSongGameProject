/// @description  trace(...)
/// @function  trace
/// @param ...
var r = "", i = -1, s;
repeat (argument_count) r += string(argument[++i]) + " ";
i = string_pos(chr(13), r);
while (i > 0) {
    s = string_copy(r, 1, i - 1);
    show_debug_message(s);
    if (string_ord_at(r, i + 1) == 10) i += 1;
    r = string_copy(r, i + 1, string_length(r) - i);
    i = string_pos(chr(13), r);
}
show_debug_message(r);
chat_add(r);
