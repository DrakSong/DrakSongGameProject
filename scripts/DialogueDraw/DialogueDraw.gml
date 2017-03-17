var I = 64/8
GuiSet(I)
draw_text(24*I,75*I,string_hash_to_newline(global.name));
draw_text(24*I,95*I,string_hash_to_newline(string_copy(global.huanchun,1,min(global.jishu,20))))
if(global.jishu>20) draw_text(24*I,110*I,string_hash_to_newline(string_copy(global.huanchun,20,min(global.jishu-20,20))))
if(global.jishu>40) draw_text(24*I,125*I,string_hash_to_newline(string_copy(global.huanchun,40,min(global.jishu-40,20))))
GuiSet(1)