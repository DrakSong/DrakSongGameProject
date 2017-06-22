///GuiSize(倍数);
var G,Width,Height;
G = global.GameInfo[?'游戏固定设置']
Width = G[?'游戏原始宽度']
Height = G[?'游戏原始高度']
window_set_size(Width*argument0,Height*argument0);

