/// @description 在这里插入描述
// 你可以在这个编辑器中写入代码

/// @description 在这里插入描述
// 你可以在这个编辑器中写入代码

/// @description 在这里插入描述
// 你可以在这个编辑器中写入代码

texture_set_interpolation(false)

var condition = true;
if (condition)
{
var Size = 0
 var vx = (oNPC.x - __view_get( e__VW.XView, 0 ) )*Size
 var vy = (oNPC.y - __view_get( e__VW.YView, 0 )-16-4 )*Size
 draw_set_color(c_white);
//draw_set_font(fWindow16)


msg_dynamic("看一下中文适应程度宽度字体大小如何看一下中文适应程度宽度字体大小如何",vx,vy);
}
else
{
	msg_stop();
}
