////绘制
//display_set_gui_size(512,288)


draw_set_colour(c_black);;
draw_set_alpha(0.45)
draw_rectangle(0,96-16-8,256,112,0)
//draw_rectangle(0,96,512,288,0);
draw_set_colour(c_white);
draw_set_alpha(1)
var I = 64/8
var X =32
var Y = -16*8
GuiSet(I)
draw_text(X*I,Y+88*I,string_hash_to_newline(global.name)+":");
draw_text(X*I,+Y+1+96*I,string_hash_to_newline(string_copy(global.huanchun,1,min(global.jishu,19))))
if(global.jishu>20) draw_text(X*I,Y+1+(96+8)*I,string_hash_to_newline(string_copy(global.huanchun,20,min(global.jishu-20,20))))
if(global.jishu>40) draw_text(X*I,+Y+1+(96+16)*I,string_hash_to_newline(string_copy(global.huanchun,40,min(global.jishu-40,20))))
GuiSet(1)
//display_set_gui_size(256,112);
GuiSet(2)

draw_sprite(spr2222,real(global.Lihui),0,-2*(144-112))
GuiSet(1);
///获取关键词 然后关闭

if global.text = "TextEnd"
    {
    // global.Dialogueing = false;
    instance_destroy()
   }

