///ViewSet(编号,使用,Size倍数,跟随obj)
var ID = argument0;
var Use = argument1;

var VG,Width,Height;
VG = global.GameInfo[?"游戏固定设置"]
Width = VG[?"游戏原始宽度"]
Height = VG[?"游戏原始高度"]
//display_set_gui_size(Width*argument0,Height*argument0);

__view_set( e__VW.Visible, ID, Use );
view_enabled = Use;
__view_set( e__VW.WPort, ID, Width*argument2 );
__view_set( e__VW.HPort, ID, Height*argument2 );
__view_set( e__VW.WView, ID, Width*argument2 );
__view_set( e__VW.HView, ID, Height*argument2 );
__view_set( e__VW.XPort, ID, 0 ); 
__view_set( e__VW.YPort, ID, 0 );
__view_set( e__VW.HBorder, ID, 512*(1-0.618)/2 );
__view_set( e__VW.VBorder, ID, 112*(1-0.618) );
__view_set( e__VW.Object, ID, argument3 )
