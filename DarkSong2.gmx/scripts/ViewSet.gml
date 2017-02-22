///ViewSet(编号,使用,Size倍数,跟随obj)
var ID = argument0;
var Use = argument1;

var G,Width,Height;
G = global.GameInfo[?'游戏固定设置']
Width = G[?'游戏原始宽度']
Height = G[?'游戏原始高度']
//display_set_gui_size(Width*argument0,Height*argument0);

view_visible[ID] = Use;
view_enabled = Use;
view_wport[ID] = Width*argument2;
view_hport[ID] = Height*argument2;
view_wview[ID] = Width*argument2;
view_hview[ID] = Height*argument2;
view_xport[ID] = 0; 
view_yport[ID] = 0;
view_hborder[ID] = 512/2*(1-0.618);
view_vborder[ID] = 144*(1-0.618)
view_object[ID] = argument3
