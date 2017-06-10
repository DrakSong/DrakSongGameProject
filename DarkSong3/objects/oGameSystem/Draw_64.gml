///debug信息
if Debug{
//GuiSet(16);

draw_set_valign(fa_top);
draw_set_halign(fa_left);
draw_set_font(fWindow)
texture_set_interpolation(true);
draw_set_colour(c_red)
display_set_gui_size(window_get_width()*6,window_get_height()*6)
var i = 64
draw_text(20,0*i,string_hash_to_newline("RAM installed: "+string(ram_installed()/1024/1024)+" MB"));
draw_text(20,i,string_hash_to_newline("RAM used: "+string(ram_used()/1024/1024)+" MB"));
draw_text(20,i*2,string_hash_to_newline("RAM available: "+string(ram_available()/1024/1024)+" MB"));
draw_text(20,i*3,string_hash_to_newline("RAM used by this application: "+string(ram_application()/1024/1024)+" MB"));
draw_text(20,i*4,string_hash_to_newline("CPU Usage: "+string(cpu_usage())+"%"));
draw_text(20,i*5,string_hash_to_newline("MKF volume"+string(microphone_volume/250)+"%"));
draw_text(20,i*6,string_hash_to_newline("FPS :"+string(fps)));
draw_text(20,i*7,string_hash_to_newline("FPS_REAL :"+string(fps_real)));
draw_text(20,i*8,string_hash_to_newline("场上有多少怪物： "+string(instance_number(oParEnemy))))
draw_text(20,i*9,string_hash_to_newline("弹幕数量： "+string(instance_number(oParPlayerBarrage)+instance_number(oParEnemyBarrage))))
//draw_text_outline(20,180,"draw text outline",2,c_fuchsia,12)
//draw_text_button(20,200,"draw text button ",2,c_white,c_fuchsia)
texture_set_interpolation(false);
GuiSet(1);
}
//show_debug_overlay(Debug);


show_debug_overlay(Debug)
texture_set_interpolation(false);

