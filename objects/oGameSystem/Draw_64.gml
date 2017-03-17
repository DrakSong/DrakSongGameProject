///debug信息
if Debug{
draw_set_valign(fa_top);
draw_set_halign(fa_left);
draw_set_font(fWindow)
texture_set_interpolation(true);
draw_set_colour(c_red)
display_set_gui_size(window_get_width(),window_get_height())
draw_text(20,20,string_hash_to_newline("RAM installed: "+string(ram_installed()/1024/1024)+" MB"));
draw_text(20,40,string_hash_to_newline("RAM used: "+string(ram_used()/1024/1024)+" MB"));
draw_text(20,60,string_hash_to_newline("RAM available: "+string(ram_available()/1024/1024)+" MB"));
draw_text(20,80,string_hash_to_newline("RAM used by this application: "+string(ram_application()/1024/1024)+" MB"));
draw_text(20,100,string_hash_to_newline("CPU Usage: "+string(cpu_usage())+"%"));
draw_text(20,120,string_hash_to_newline("MKF volume"+string(microphone_volume/250)+"%"));
draw_text(20,140,string_hash_to_newline("FPS :"+string(fps)));
draw_text(20,160,string_hash_to_newline("FPS_REAL :"+string(fps_real)));
draw_text(20,180,string_hash_to_newline("场上有多少怪物： "+string(instance_number(oParEnemy))))
draw_text(20,200,string_hash_to_newline("弹幕数量： "+string(instance_number(oParBarrage)+instance_number(oParBarrageE))))
//draw_text_outline(20,180,"draw text outline",2,c_fuchsia,12)
//draw_text_button(20,200,"draw text button ",2,c_white,c_fuchsia)
texture_set_interpolation(false);




GuiSet(1);
}
//show_debug_overlay(Debug);
if keyboard_check_pressed(vk_f1) Debug^=true;


texture_set_interpolation(false);





var ww = ds_grid_width (file_grid);
var hh = ds_grid_height (file_grid);
var xx = 32;
var yy = 32;
for (var i = 0; i < ww; i++;)
    {
    for (var j = 0; j < hh; j++;)
        {
        draw_text(xx, yy, string(file_grid[# i, j]));
        yy += 32;
        }
    yy = 32;
    xx += 32;
    }