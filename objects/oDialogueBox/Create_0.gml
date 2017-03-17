//INI = "";
ini_open(global.INI);
//window_set_size(512,288);
DialogueCreate();
Next = 0;
//draw_set_font(global.TextFont);


Next = 1// mouse_check_button(mb_left)
DialogueLoad();
Next = 0;

action_timeline_set(TextAdd, 0, 0, 1);
