/// @description  chat_draw_item(x, y, text, color, alpha, width)
/// @function  chat_draw_item
/// @param x
/// @param  y
/// @param  text
/// @param  color
/// @param  alpha
/// @param  width
var _x = argument0;
var _y = argument1;
var s = argument2;
var c = argument3;
var a = argument4;
var w = argument5;
var m = 0; if (w < 0) { w = -w; m = 1; }
//
if (s != "") {
    var sh = string_height_ext(string_hash_to_newline(s), -1, w - 2) + 2;
    var sw = string_width_ext(string_hash_to_newline(s), -1, w - 2);
    _x -= (m * w) div 2;
    _y -= sh;
    //
    var rw = sw + 6;
    if (string_ord_at(s, string_length(s)) == 8203) rw += 1;
    draw_rect_ext(_x - 1, _y, rw, sh, c_black, a * a);
    if (c >= 0) draw_rect_ext(_x - 0, _y, 1, sh, c, a * a);
    //
    draw_set_alpha(a);
    draw_text_ext(_x + 2, _y, string_hash_to_newline(s), -1, w - 2);
    //
} else _y -= string_height_ext(string_hash_to_newline("Q"), -1, w) + 2;
return _y;
