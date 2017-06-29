/// @description Insert description here
// You can write your code in this editor

var Select;
Select[0] = global.MeunSelectMap[?"BGM音量"]+"  "+string(global.BGMvolume)
Select[1] = global.MeunSelectMap[?"SE音量"]+ "  "+string(global.SEvolume)
Select[2] = global.MeunSelectMap[?"返回"]
var i;

for (i=0; i<3; i+=1)
{
    draw_text_button(0,i*16*(32/8),Select[i],Post==i)
};
