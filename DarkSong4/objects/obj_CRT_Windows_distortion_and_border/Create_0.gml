draw_set_font(font0);

application_surface_draw_enable(false);

shader_to_use = sh_CRT_Windows_distortion_and_border;

crt_surface_scale = 3;

crt_surface_width  = view_wport[0] * crt_surface_scale;
crt_surface_height = view_hport[0] * crt_surface_scale;

uni_crt_sizes = shader_get_uniform(shader_to_use, "u_crt_sizes");
distort = shader_get_uniform(shader_to_use, "distort");
distortion = shader_get_uniform(shader_to_use, "distortion");
border = shader_get_uniform(shader_to_use, "border");

var_distort = true;
var_distortion_ammount = 0.12;
var_border = true;

surface_width  = view_wport[0];
surface_height = view_hport[0];

surface_resize(application_surface, surface_width, surface_height);

