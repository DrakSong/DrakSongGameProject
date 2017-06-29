var vx = 0;
var vy = 0;
var vw = display_get_gui_width();
var vh = display_get_gui_height();
var s, c;
draw_set_halign(fa_left);
draw_set_valign(fa_top);
//draw_set_font(fnt_test);
draw_set_color(c_white);
//
var _x = vx + 5;
var _y = vy + vh - 5;
var w = vw - 10, h; // max. size
var n = ds_list_size(global.chat_lines);
//
var open = global.chat_open;
var a = 1;
if (open) {
    s = string_replace_all(keyboard_string, "#", "\\#");
    if ((current_time - global.chat_beam) % 700 < 350) c = chr(9014); else c = chr(8203);
    s = string_insert(c, s, global.chat_input_pos + 1);
    s += chr(8203);
    s = "> " + s;
} else s = "";
_y = chat_draw_item(_x, _y, s, -1, 1, w);
//
var am;
if (!open) {
    am = 0.85;
} else am = 0.95;
//
for (var i = global.chat_offset; i < n; i += 1) {
    var m = global.chat_lines[|i];
    if (!open) {
        a = (m[chat_col.time] - current_time) / 3000;
        a = clamp(a, 0, 1);
        a *= clamp(1.0 - (i - global.chat_offset) * 0.25, 0.1, 1);
        if (a <= 0) break;
    } else a = 1;
    s = m[chat_col.text];
    c = m[chat_col.count];
    if (c > 1) s = "[" + string(c) + "] " + s;
    _y = chat_draw_item(_x, _y, s, m[chat_col.color], a * am, w);
    if (_y < vy + 16) break;
}
draw_set_alpha(1);
if (open && _y < vy + 16) {
    h = string_height(string_hash_to_newline("Q"));
    _y = vy + vh - 10 - h;
    h *= 18;
    _y -= global.chat_offset / (n - 18) * (h - (18 / n) * h);
    draw_rectangle(_x - 4, _y - 18 / n * h, _x - 2, _y, false);
}
//
draw_set_color(c_white);
draw_set_alpha(1);



