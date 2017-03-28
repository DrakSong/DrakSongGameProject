//INI = "";\
Text = csv_read("To2.csv");
ini_open(global.INI);
//window_set_size(512,288);
DialogueCreate();
Next = 0;
//draw_set_font(global.TextFont);


//Next = 1// mouse_check_button(mb_left)
//DialogueLoad();
//Next = 0;
var T = Text[|global.i]
	
    global.text=T[?"Text"]//ini_read_string("txt"+string(global.i),"text","");
    global.name=T[?"Name"]
	global.huanchun="";
    global.zishu=string_length(global.text)+1;
    global.jishu=0;
action_timeline_set(TextAdd, 0, 0, 1);
