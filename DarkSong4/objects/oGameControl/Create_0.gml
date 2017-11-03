//file_delete("GameInfo.ini")

ini_open("GameInfo.ini")//读取设置

#region 读取游戏设置并且初化 

#region//多语言部分
	global.MeunSelectMap = ds_map_create();//对于读取用的map
	global.Language = ini_read_real("Settings","Language",0); //语言选择
	global.LanguageList = ds_list_create();
	//ChangeMeunSelectLanguage();//执行读取
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

#region 游戏键位 键位控制部分 

#endregion

 
global.InPut = ds_map_create();
global.OutPut = ds_map_create();

InPutAdd("上","键盘",vk_up)
InPutAdd("上","手柄",gp_padu)

InPutAdd("下","键盘",vk_down)
InPutAdd("下","手柄",gp_padd)

InPutAdd("左","键盘",vk_left)
InPutAdd("左","手柄",gp_padl)

InPutAdd("右","键盘",vk_right)
InPutAdd("右","手柄",gp_padr)

InPutAdd("确认","键盘",vk_enter)
InPutAdd("确认","键盘",ord("Z"))
InPutAdd("确认","手柄",gp_face1)

InPutAdd("取消","键盘",vk_escape)
InPutAdd("取消","键盘",ord("X"))
InPutAdd("取消","手柄",gp_face2)


InPutAdd("攻击","键盘",ord("X"))
InPutAdd("攻击","手柄",gp_face3)

InPutAdd("跳跃","键盘",ord("Z"))
InPutAdd("跳跃","手柄",gp_face1)

InPutAdd("翻滚","键盘",vk_shift)
InPutAdd("翻滚","手柄",gp_face2)

InPutAdd("魔法","键盘",ord("C"))
InPutAdd("魔法","手柄",gp_face4)

ini_close()

display_set_gui_size(1280,720)


global.Map = 0
global.Text = "";//记录对话框读取的对话id
global.DialogueBox = 0;//记录对话框

#endregion




BGMPlay(SouTitle);

//chat_init();
//live_init("ui.lua");

//作死
gml_release_mode(true)



   