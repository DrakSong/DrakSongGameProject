/*
///ViewSet(编号,使用,Size倍数,跟随obj)
var ID = argument0;
var Use = argument1;

var Width,Height;
//VG = //global.GameInfo[?"游戏固定设置"]
Width =320//256
Height = 180//720*(256/1280) //VG[?"游戏原始高度"]
//display_set_gui_size(Width*argument0,Height*argument0);

__view_set( e__VW.Visible, ID, Use );
view_enabled = Use;
__view_set( e__VW.WPort, ID, floor(Width*argument2) );
__view_set( e__VW.HPort, ID, floor(Height*argument2) );
__view_set( e__VW.WView, ID, floor(Width*argument2 ));
__view_set( e__VW.HView, ID, floor(Height*argument2 ));
__view_set( e__VW.XPort, ID, 0 ); 
__view_set( e__VW.YPort, ID, 0 );
__view_set( e__VW.HBorder, ID, floor(320*2*(1-0.618)/2));
__view_set( e__VW.VBorder, ID, floor(112*(1-0.618)) );
__view_set( e__VW.Object, ID, argument3 )

show_debug_message(string(floor(Width*argument2))+string(floor(Height*argument2)) )
