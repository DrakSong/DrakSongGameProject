///修改游戏标题
window_set_caption("DarkSong")

///第一次打开游戏
var p_map = ds_map_secure_load("GameInfo.fuck");
ShowMessage(p_map)
if p_map < 0 //or true//强制初化
{

global. GameInfo = json_decode(GameInfoString())
//载入初步的键盘信息；
var V=global.GameInfo[?"设置"];
var K = V[?"键盘信息"];

 K[?"上"] = vk_up;
 K[?"下"] = vk_down;
 K[?"左"] = vk_left;
 K[?"右"] = vk_right;
 K[?"A"] = ord("X");
 K[?"B"] = ord("Z");
 K[?"L"] = ord("A");
 K[?"R"] = ord("C");
 K[?"P"] = ord("P");
 
 ds_map_secure_save(global.GameInfo,"GameInfo.fuck")
 ShowMessage("第一次打开信息初化")
}
else 
{
global.GameInfo = p_map;
ShowMessage("读取")
}



///默认不修改部分
//游戏设置部分
gml_release_mode(false);//跳过错误
display_set_windows_alternate_sync(true);//垂直同步
display_set_windows_vertex_buffer_method(vbm_compatible);//几何顶点的缓冲抹杀
texture_set_blending(true);//使用混色和透明变化
texture_set_interpolation(false);//插值开启关闭
show_debug_overlay(true);
Debug = false;


//绘制画面部分
GuiSet(1);//调整gui比例

var W = global.GameInfo[?"设置"]
W= W[?"窗口倍数"]
WinSet(W);//调整窗口比例;

ViewSet(0,true,1,-1);//调整视野
PauseBG = 0//surface_create(512,256);
FontAdd();

//音乐部分
MKFICreate();//创建获取麦克风音量器


