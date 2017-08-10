first_pass_surface = surface_create(camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]) );
surface_width = surface_get_width(first_pass_surface);
surface_height = surface_get_height(first_pass_surface);

var_Density = 0.98;
var_Weight = 0.27;
var_Decay = 0.97;
var_Exposure = 0.40;

light_pos = shader_get_uniform(shdr_god_rays, "lightPositionOnScreen");
surface_size = shader_get_uniform(shdr_god_rays, "surfaceSize");
Density = shader_get_uniform(shdr_god_rays, "Density");
Weight = shader_get_uniform(shdr_god_rays, "Weight");
Decay = shader_get_uniform(shdr_god_rays, "Decay");
Exposure = shader_get_uniform(shdr_god_rays, "Exposure");