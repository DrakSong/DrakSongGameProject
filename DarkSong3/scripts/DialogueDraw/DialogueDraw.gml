var I = 64/8
var X =32
var Y = -16*8
GuiSet(I)
draw_text(X*I,Y+88*I,string_hash_to_newline(global.name)+":");
draw_text(X*I,+Y+1+96*I,string_hash_to_newline(string_copy(global.huanchun,1,min(global.jishu,19))))
if(global.jishu>20) draw_text(X*I,Y+1+(96+8)*I,string_hash_to_newline(string_copy(global.huanchun,20,min(global.jishu-20,20))))
if(global.jishu>40) draw_text(X*I,+Y+1+(96+16)*I,string_hash_to_newline(string_copy(global.huanchun,40,min(global.jishu-40,20))))
GuiSet(1)