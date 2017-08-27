

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
 /***************************************************
 global.kUp =  ini_read_real("Controls","UP",vk_up);
  global.kLeft =  ini_read_real("Controls","Left",vk_left);
  global.kDown =  ini_read_real("Controls","Down",vk_down);
  global.kRight =  ini_read_real("Controls","Right",vk_right);

  global.kAttack =  ini_read_real("Controls","Attack",ord("Z"));
  global.kJump = ini_read_real("Controls","Jump",ord("X"));
  global.kRoll =  ini_read_real("Controls","Roll",ord("C"))
  global.kChange = ini_read_real("Controls","Change",vk_space)
  
  **************************************************/
 kUp =  ini_read_real("Controls","UP",vk_up);
  kLeft =  ini_read_real("Controls","Left",vk_left);
  kDown =  ini_read_real("Controls","Down",vk_down);
  kRight =  ini_read_real("Controls","Right",vk_right);

  kAttack =  ini_read_real("Controls","Attack",ord("Z"));
 kJump = ini_read_real("Controls","Jump",ord("X"));
  kRoll =  ini_read_real("Controls","Roll",ord("C"))
  kChange = ini_read_real("Controls","Change",vk_space)
  
  //检测输入
global.KeyChenckMap = ds_map_create();
var KeyList = ds_list_create();
ds_list_add(KeyList,"上" ,"下", "左", "右", "攻击", "跳跃" ,"切换武器" ,"特殊键","菜单确认","菜单返回")
for (i=0; i<ds_list_size(KeyList); i+=1)
{
    var Map = ds_map_create()
ds_map_add(Map,"按下",0)
ds_map_add(Map,"按住",0)
ds_map_add(Map,"松开",0)

ds_map_add(global.KeyChenckMap,KeyList[|i],Map)
};

global.PadChenckMap = ds_map_create();
var KeyList = ds_list_create();
ds_list_add(KeyList,"上" ,"下", "左", "右", "攻击", "跳跃" ,"切换武器" ,"特殊键","菜单确认","菜单返回")
for (i=0; i<ds_list_size(KeyList); i+=1)
{
    var Map = ds_map_create()
ds_map_add(Map,"按下",0)
ds_map_add(Map,"按住",0)
ds_map_add(Map,"松开",0)

ds_map_add(global.PadChenckMap,KeyList[|i],Map)
};
#endregion

 
//   kPause = ini_read_real("Controls","Pause",ord("P"))s
ini_close()

display_set_gui_size(1280,720)

global.Text = "";//记录对话框读取的对话id
global.DialogueBox = 0;//记录对话框

#endregion




BGMPlay(SouTitle);

	chat_init();
live_init("ui.lua");





   
   