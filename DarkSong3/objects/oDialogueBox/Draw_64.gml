////绘制
//display_set_gui_size(512,288)


draw_set_colour(c_black);;
draw_set_alpha(0.45)
draw_rectangle(0,96-16-8,256,112,0)
//draw_rectangle(0,96,512,288,0);
draw_set_colour(c_white);
draw_set_alpha(1)
DialogueDraw();;
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

