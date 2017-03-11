////绘制
//display_set_gui_size(512,288)
draw_set_colour(c_black);;
draw_rectangle(24,96-16-8,24+64,96-8,0)
draw_rectangle(0,96,512,288,0);
draw_set_colour(c_white);
DialogueDraw();;
//display_set_gui_size(256,144);

///获取关键词 然后关闭

if global.text = "TextEnd"
    {
    // global.Dialogueing = false;
    instance_destroy()
   }

