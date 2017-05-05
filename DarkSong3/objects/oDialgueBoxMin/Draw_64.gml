/// @description 在这里插入描述
// 你可以在这个编辑器中写入代码

/// @description 在这里插入描述
// 你可以在这个编辑器中写入代码

/// @description 在这里插入描述
// 你可以在这个编辑器中写入代码
GuiSet(2.5);

var condition = true;
if (condition)
{

 var vx = (oNPC.x - __view_get( e__VW.XView, 0 ) )*2.5 ;
 var vy = (oNPC.y - __view_get( e__VW.YView, 0 )-16-4 )*2.5;
 draw_set_color(c_white);
 
	msg_dynamic("看一下中文适应程度宽度字体大小如何看一下中文适应程度宽度字体大小如何",vx,vy);
}
else
{
	msg_stop();
}
GuiSet(1)