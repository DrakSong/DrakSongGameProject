///TrueWater_shader_uniforms();
/*
USAGE:
  This script is called from TrueWater_init().
  No user action is required.
  No arguments required.
*/

//Get shader uinforms
uni_time = shader_get_uniform(TrueWater_water, "u_time");
uni_resolution = shader_get_uniform(TrueWater_water, "u_resolution");
uni_texture_resolution = shader_get_uniform(TrueWater_water, "u_textureRes");
uni_texture_position = shader_get_uniform(TrueWater_water, "u_texturePos");
uni_water_ypos = shader_get_uniform(TrueWater_water, "u_water_ypos");
uni_camera_pos = shader_get_uniform(TrueWater_water, "u_camera_pos");
uni_water_perspective = shader_get_uniform(TrueWater_water, "u_perspective");
uni_sprite_coords = shader_get_uniform(TrueWater_water, "u_sprite_coords");

//Get sampler indexes
samp_normal_map = shader_get_sampler_index(TrueWater_water, "s_normalMap");
samp_diffuse_tex = shader_get_sampler_index(TrueWater_water, "s_diffuseTex");
gpu_set_texrepeat_ext(samp_normal_map, true);
gpu_set_texrepeat_ext(samp_diffuse_tex, true);

//Set variables
camera_pos_x = camera_get_view_x(0) + view_wport[TrueWater_room_view]/2;
camera_pos_y = camera_get_view_y(0) + view_hport[TrueWater_room_view]/2;
var_resolution_x = TrueWater_game_width;
var_resolution_y = TrueWater_game_height;
