var s = argument0;
var c = -1;
var n = min(4, ds_list_size(global.chat_lines));
for (var i = 0; i < n; i++) {
    var m = global.chat_lines[|i];
    if (m[chat_col.text] == s) {
        m[@chat_col.count] += 1;
        m[@chat_col.time] = current_time + global.chat_decay * 1000;
        exit;
    }
}
s = string_replace_all(s, "#", "\\#");
var m = array_create(chat_col.sizeof);
m[chat_col.color] = c;
m[chat_col.text] = s;
m[chat_col.time] = current_time + global.chat_decay * 1000;
m[chat_col.count] = 1;
ds_list_delete(global.chat_lines, global.chat_size - 1);
ds_list_insert(global.chat_lines, 0, m);
if (global.chat_offset > 0) global.chat_offset = min(global.chat_offset + 1, global.chat_size - 18);
