shader_set(shdr_god_rays);
shader_set_uniform_f(light_pos, obj_light_source.x, obj_light_source.y);
shader_set_uniform_f(surface_size, surface_width, surface_height);
shader_set_uniform_f(Density, var_Density);
shader_set_uniform_f(Weight, var_Weight);
shader_set_uniform_f(Decay, var_Decay);
shader_set_uniform_f(Exposure, var_Exposure);
draw_surface(first_pass_surface,0,0);
shader_reset();

draw_set_color(c_white);
draw_text(0,0,string_hash_to_newline("[Q] - [A] to change Density = " + string(var_Density)));
draw_text(0,12,string_hash_to_newline("[W] - [S] to change Weight = " + string(var_Weight)));
draw_text(0,24,string_hash_to_newline("[E] - [D] to change Decay = " + string(var_Decay)));
draw_text(0,36,string_hash_to_newline("[R] - [F] to change Exposure = " + string(var_Exposure)));
draw_text(0,48,string_hash_to_newline("Mouse to move light source"));
draw_text(0,60,string_hash_to_newline("ESC to Exit"));

