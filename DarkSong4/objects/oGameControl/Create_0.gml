//file_delete("GameInfo.ini")

ini_open("GameInfo.ini")//读取设置

#region 读取游戏设置并且初化 

#region//多语言部分
	global.MeunSelectMap = ds_map_create();//对于读取用的map
	global.Language = ini_read_real("Settings","Language",0); //语言选择
	global.LanguageList = ds_list_create();
	ChangeMeunSelectLanguage();//执行读取
#endregion

#region//游戏窗口设置

	global.WindowsSize = ini_read_real("Settings","WindowsSize",2);
	GameWindowSize(global.WindowsSize);
	global.WindowFullscreen = ini_read_real("Settings","WindowsFullscreen",false);
	window_set_fullscreen(global.WindowFullscreen);
#endregion

#region debug

	global.DebugMode = debug_mode //ini_read_real("Settings","WindowsSize",2);
#endregion

#region 字体载入
  //载入拥有中文的字体
  globalvar Font;
  
  Font = fontText
  #endregion

#region Sound 音量 部分
	global.BGMvolume = ini_read_real("Sound","BGMvolume",80);
	global.SEvolume = ini_read_real("Sound","SEvolume",100);
#endregion

#region Controls 键位控制部分 
/*
 kUp =  ini_read_real("Controls","UP",vk_up);
  kLeft =  ini_read_real("Controls","Left",vk_left);
  kDown =  ini_read_real("Controls","Down",vk_down);
  kRight =  ini_read_real("Controls","Right",vk_right);
  kAttack =  ini_read_real("Controls","Attack",ord("Z"));
  kAttack2 =  ini_read_real("Controls","Attack",ord("X"));
  kJump = ini_read_real("Controls","Jump",ord("X"));
  kRoll =  ini_read_real("Controls","Roll",ord("C"))
  */
  //var KeyList = ds_list_create();
//ds_list_add(KeyList,"上" ,"下", "左", "右", "攻击", "跳跃" ,"攻击2" ,"翻滚","菜单确认","菜单返回")
 
 global.KeyMap = ds_map_create();
 ds_map_add( global.KeyMap,"上",vk_up)
  ds_map_add( global.KeyMap,"下",vk_down)
   ds_map_add( global.KeyMap,"左",vk_left)
    ds_map_add( global.KeyMap,"右",vk_right)
	 ds_map_add( global.KeyMap,"菜单确认",ord("Z"))
	  ds_map_add( global.KeyMap,"菜单返回",ord("X"))
 
 ds_map_add( global.KeyMap,"攻击",ord("Z"))
 ds_map_add( global.KeyMap,"攻击2",vk_space)
 ds_map_add( global.KeyMap,"翻滚",ord("C"))
 ds_map_add( global.KeyMap,"跳跃",ord("X"))
 
 
  //kChange = ini_read_real("Controls","Change",vk_space)
  
  
  
  
  //检测输入
  /*
global.KeyChenckMap = ds_map_create();
var KeyList = ds_list_create();
ds_list_add(KeyList,"上" ,"下", "左", "右", "攻击", "跳跃" ,"切换武器" ,"特殊键","菜单确认","菜单返回")
ds_map_add_list(global.KeyChenckMap,"键位引索",KeyList)
for (i=0; i<ds_list_size(KeyList); i+=1)
{
    var Map = ds_map_create()
ds_map_add(Map,"按下",0)
ds_map_add(Map,"按住",0)
ds_map_add(Map,"松开",0)

ds_map_add_map(global.KeyChenckMap,KeyList[|i],Map)
};

global.PadChenckMap = ds_map_create();
var KeyList = ds_list_create();
ds_list_add(KeyList,"上" ,"下", "左", "右", "攻击", "跳跃" ,"切换武器" ,"特殊键","菜单确认","菜单返回")
ds_map_add_list(global.KeyChenckMap,"键位引索",KeyList)

for (i=0; i<ds_list_size(KeyList); i+=1)
{
    var Map = ds_map_create()
ds_map_add(Map,"按下",0)
ds_map_add(Map,"按住",0)
ds_map_add(Map,"松开",0)

ds_map_add_map(global.PadChenckMap,KeyList[|i],Map)
};
*/

#endregion

 

ini_close()

display_set_gui_size(1280,720)


global.Map = 0
global.Text = "";//记录对话框读取的对话id
global.DialogueBox = 0;//记录对话框

#endregion




BGMPlay(SouTitle);

chat_init();
live_init("ui.lua");





   