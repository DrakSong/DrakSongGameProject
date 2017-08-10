///TrueWater_draw_water()
/*
USAGE:
  This script is intended to be called from the Post Draw or DrawGUI Event of obj_TrueWater_controller.
  No arguments required.
*/

TrueWater_surface_check();

draw_surface(application_surface,0,0);

shader_set(TrueWater_water);   
    shader_set_uniform_f(uni_camera_pos, camera_pos_x * aspect_ratio_x, camera_pos_y * aspect_ratio_y, var_resolution_x * aspect_ratio_x, var_resolution_y * aspect_ratio_y);
    gpu_set_texrepeat_ext(samp_normal_map, true);
    gpu_set_texrepeat_ext(samp_diffuse_tex, true);
    
//For each light object, create the shadows within its range
for (i=0; i<ds_grid_height(TrueWater_water_grid); i+=1)
  {
    var object = TrueWater_water_grid[# 0, i];
    
     if instance_exists(object)
     {
        //Get each objects variables from the grid
        var pos_x = (object.x - camera_get_view_x(view_get_camera(TrueWater_room_view))) * aspect_ratio_x;
        var pos_y = (object.y - camera_get_view_y(view_get_camera(TrueWater_room_view))) * aspect_ratio_y;       
        var spr_width = TrueWater_water_grid[# 1, i] * aspect_ratio_x;
        var spr_height = TrueWater_water_grid[# 2, i] * aspect_ratio_y;
        var xspeed = object._water_tick_x;
        var yspeed = object._water_tick_y;
        var spr_index = object.sprite_index;
        var img_index = object.image_index;
        var normalmap = object._water_normal;
        var normalmap_repeat = object._water_normal_repeat;
        var refraction_amount = object._water_refraction_amount;
        var perspective = object._water_perspective;
        var spr_coords = sprite_get_uvs(spr_index, img_index);
                
        //Set the correct textures for each object
        texture_set_stage(samp_diffuse_tex, sprite_get_texture(spr_index,img_index));
        texture_set_stage(samp_normal_map, sprite_get_texture(normalmap, -1));
        shader_set_uniform_f(uni_time, xspeed, yspeed);
        shader_set_uniform_f(uni_water_perspective, perspective);
        
        //Set the size, postion, speed and refraction for each object
        shader_set_uniform_f(uni_water_ypos, pos_y);
        shader_set_uniform_f(uni_texture_resolution, spr_width, spr_height);
        shader_set_uniform_f(uni_texture_position, pos_x, pos_y, refraction_amount, normalmap_repeat);
        shader_set_uniform_f(uni_sprite_coords, spr_coords[0], spr_coords[1], spr_coords[2], spr_coords[3]);
        
        draw_surface_part(application_surface, pos_x, pos_y, spr_width, spr_height, pos_x, pos_y);
      }
    }    
shader_reset();
