
draw_set_font(Font)
draw_set_color(c_white);


var Select;
Select[0] = global.MeunSelectMap[?"新游戏"]
Select[1] = global.MeunSelectMap[?"继续游戏"]
Select[2] = global.MeunSelectMap[?"游戏设置"]
Select[3] = global.MeunSelectMap[?"退出"]
var i;

for (i=0; i<4; i+=1)
{
    draw_text_button(0,i*16*(32/8),Select[i],Post==i)
};
