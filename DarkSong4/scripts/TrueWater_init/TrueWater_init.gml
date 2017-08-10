///TrueWater_init(water_parent, room_view)
/*
USAGE:
  This script is intended to be called from the Create Event of obj_TrueWater_controller.

ARGUMENTS:
  water_parent = the parent object used by the water sources eg: par_TrueWater_water.
  room_view = the view in the room you wish to use. 0 - 7 or -1 to not use views.

  TrueWater2D created by xygthop3 - September 2014
  Michael Brown
  GMC: http://gmc.yoyogames.com/index.php?showuser=42927
  Twitter: @xygthop3
  
  Project started 3rd August 2014 - First public release September 2014
*/

TrueWater_water_parent = argument0;
TrueWater_room_view = argument1;
TrueWater_game_width = view_wport[TrueWater_room_view];
TrueWater_game_height = view_hport[TrueWater_room_view];
aspect_ratio_x = TrueWater_game_width / view_wport[TrueWater_room_view];
aspect_ratio_y = TrueWater_game_height / view_hport[TrueWater_room_view];

///Setup game
draw_texture_flush();
draw_set_color(c_white);
application_surface_draw_enable(false);

//It's go time
TrueWater_shader_uniforms();
TrueWater_create_grid();
