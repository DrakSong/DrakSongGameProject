//INI = "";\
Text = csv_read(global.Text);
//TE = load_csv("To2.csv")
//ini_open(global.INI);
//window_set_size(512,288);

Next = 0;
//draw_set_font(global.TextFont);


global.i=0;
global.beijing="";
global.lihuil="";
global.lihuir="";
global.textk="";
global.namek="";
global.text="";
global.name="";
global.huanchun="";
global.zishu=0;
global.jishu=0;
//Next = 1// mouse_check_button(mb_left)
//DialogueLoad();
//Next = 0;
var T = Text[|global.i]
	
    global.text=T[?"Text"]//ini_read_string("txt"+string(global.i),"text","");
    global.name=T[?"Name"]
	global.huanchun="";
    global.zishu=string_length(global.text)+1;
    global.jishu=0;
	global.Lihui = T[?"Image"]
action_timeline_set(TextAdd, 0, 0, 1);
