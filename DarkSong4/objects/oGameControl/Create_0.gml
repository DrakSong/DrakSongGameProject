/// @description Insert description here
// You can write your code in this editor


/// @description 进行游戏内容的初化
// You can write your code in this editor


ini_open("GameInfo.ini")//读取设置
/***************************************************
Setting 游戏设置 部分
 ***************************************************/
//*************进行对于选项按钮多语言化后的处理
	global.MeunSelectMap = ds_map_create();//对于读取用的map
	global.Language = ini_read_real("Settings","Language",1); //语言选择
	global.LanguageList = ds_list_create();
	ChangeMeunSelectLanguage();//执行读取

	//*************改变窗口大小
	global.WindowsSize = ini_read_real("Settings","WindowsSize",2);
	GameWindowSize(global.WindowsSize);
	
	global.DebugMode = debug_mode //ini_read_real("Settings","WindowsSize",2);
  //载入拥有中文的字体
  globalvar Font;
  if global.DebugMode
    {Font = font32}
  else
  {
 Font = font_add("msyh.ttc",32,0, 0, 0, 65535)//font32//    
  }
 


	//**************全屏与否
	global.WindowFullscreen = ini_read_real("Settings","WindowsFullscreen",false);
	window_set_fullscreen(global.WindowFullscreen);

/***************************************************
Sound 音量 部分
 ***************************************************/
	global.BGMvolume = ini_read_real("Sound","BGMvolume",80);
	global.SEvolume = ini_read_real("Sound","SEvolume",100);
 /***************************************************
Controls 键位控制部分 
  **************************************************/
  global.kUp =  ini_read_real("Controls","UP",vk_up);
  global.kLeft =  ini_read_real("Controls","Left",vk_left);
  global.kDown =  ini_read_real("Controls","Down",vk_down);
  global.kRight =  ini_read_real("Controls","Right",vk_right);

  global.kAttack =  ini_read_real("Controls","Attack",ord("Z"));
  global.kJump = ini_read_real("Controls","Jump",ord("X"));
  global.kRoll =  ini_read_real("Controls","Roll",ord("C"))
  global.kChange = ini_read_real("Controls","Change",vk_space)
  
  
  
 kUp =  ini_read_real("Controls","UP",vk_up);
  kLeft =  ini_read_real("Controls","Left",vk_left);
  kDown =  ini_read_real("Controls","Down",vk_down);
  kRight =  ini_read_real("Controls","Right",vk_right);

  kAttack =  ini_read_real("Controls","Attack",ord("Z"));
 kJump = ini_read_real("Controls","Jump",ord("X"));
  kRoll =  ini_read_real("Controls","Roll",ord("C"))
  kChange = ini_read_real("Controls","Change",vk_space)
   
//   kPause = ini_read_real("Controls","Pause",ord("P"))s
ini_close()


//检测输入
/*
global.KeyChenckMap = ds_map_create();
var KeyList = ds_list_create();
ds_list_add(KeyList,"上" ,"下", "左", "右", "攻击", "跳跃" ,"切换武器" ,"切换角色","特殊键")
for (i=0; i<ds_list_size(KeyList); i+=1)
{
    var Map = ds_map_create()
ds_map_add(Map,"按下",0)
ds_map_add(Map,"按住",0)
ds_map_add(Map,"松开",0)

ds_map_add(global.KeyChenckMap,KeyList[|i],Map)
};
*/
display_set_gui_size(1280,720)

global.Text = "";//记录对话框读取的对话id
global.DialogueBox = 0;//记录对话框
BGMPlay(SouTitle);

chat_init();
live_init("ui.lua");





   
   