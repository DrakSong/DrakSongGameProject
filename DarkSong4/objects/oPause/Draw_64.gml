
display_set_gui_size(gui_width,gui_height);

var c_last = draw_get_color();;
//Draw semitransparent square
draw_set_color(c_black);
draw_set_alpha(0.5);
draw_rectangle(0,0,__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ),0);
draw_set_alpha(1);
draw_set_color(c_last);

//Draw sprite "Paused"
//draw_sprite(sPaused,0,__view_get( e__VW.WView, 0 )/2, __view_get( e__VW.HView, 0 )/2);
draw_set_color(c_white);
draw_text(1280/2,720*0.68,"Pause")