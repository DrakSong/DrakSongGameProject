GameGuiSetSize(1)
shader_set(sh_CRT_HTML5);
  shader_set_uniform_f(uni_crt_sizes, surface_width, surface_height,crt_surface_width, crt_surface_height);
  shader_set_uniform_f(distortion, var_distortion_ammount);
  draw_surface_part_ext(application_surface, 0, 0, view_wport[0], view_hport[0], 0, 0, crt_surface_scale, crt_surface_scale, c_white, 1);
shader_reset();


draw_set_color(c_white);
draw_text(2,2,string_hash_to_newline(string(fps_real)));
draw_text(2,15,string_hash_to_newline("SCALE = " + string(crt_surface_scale) +" press 3,4,5,6 to change"));
draw_text(2,30,string_hash_to_newline("Distortion amount = " + string(var_distortion_ammount) +" press W/S to change"));
draw_set_color(c_white);

