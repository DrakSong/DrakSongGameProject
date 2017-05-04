//INI = "";\

Text = csv_read(global.Text);
//TE = load_csv("To2.csv")
//ini_open(global.INI);
//window_set_size(512,288);

Next = 0;
//draw_set_font(global.TextFont);


i=0;
beijing="";
lihuil="";
lihuir="";
textk="";
namek="";
text="";
name="";
huanchun="";
zishu=0;
jishu=0;
//Next = 1// mouse_check_button(mb_left)
//DialogueLoad();
//Next = 0;
var T = Text[|i]
text=T[?"Text"]//ini_read_string("txt"+string(global.i),"text","");
name=T[?"Name"]
huanchun="";
zishu=string_length(text)+1;
jishu=0;
Lihui = T[?"Image"]
action_timeline_set(TextAdd, 0, 0, 1);
