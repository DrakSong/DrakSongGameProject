///TrueWater_surface_check();
/*
USAGE:
  This script is called from TrueWater_draw_water().
  No arguments required.
*/

TrueWater_game_width = window_get_width();
TrueWater_game_height = window_get_height();

if surface_get_width(application_surface) !=TrueWater_game_width
{
    surface_resize(application_surface, TrueWater_game_width, TrueWater_game_height);
    aspect_ratio_x = TrueWater_game_width/view_wport[TrueWater_room_view];
    aspect_ratio_y = TrueWater_game_height/view_hport[TrueWater_room_view];
}

if surface_get_height(application_surface) !=TrueWater_game_height
{
    surface_resize(application_surface, TrueWater_game_width, TrueWater_game_height);
    aspect_ratio_x = TrueWater_game_width/view_wport[TrueWater_room_view];
    aspect_ratio_y = TrueWater_game_height/view_hport[TrueWater_room_view]
}
