/// @description Insert description here
// You can write your code in this editor


var Select;
Select[0] = global.MeunSelectMap[?"全屏"]+"  "+StringONorOFF(global.WindowFullscreen)
Select[1] = global.MeunSelectMap[?"窗口分辨率"]+ "  "+string(global.WindowsSize)+"X"
Select[2] = global.MeunSelectMap[?"Debug模式"]+ "  "+StringONorOFF(debug_mode)
Select[3] = global.MeunSelectMap[?"语言"]+ "  "+string( ds_list_find_value(global.LanguageList,global.Language))
Select[4] = global.MeunSelectMap[?"返回"]
var i;

for (i=0; i<5; i+=1)
{
    draw_text_button(0,i*16*(32/8),Select[i],Post==i)
};
