GameGuiSetSize(1)
draw_set_font(Font)
draw_set_alpha(1)
draw_set_color(c_white)
draw_text(1100,0,"FPS"+string(fps));
live_call("draw");
chat_draw();


