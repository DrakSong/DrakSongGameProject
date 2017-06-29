
draw_set_font(Font)
draw_set_color(c_white);



var Select;
Select[0] = global.MeunSelectMap[?"设置"]
Select[1] = global.MeunSelectMap[?"声音"]
Select[2] = global.MeunSelectMap[?"键位控制"]
Select[3] = global.MeunSelectMap[?"返回"]
var i;

for (i=0; i<4; i+=1)
{
    draw_text_button(0,i*16*(32/8),Select[i],Post==i)
};
