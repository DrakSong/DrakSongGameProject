///TrueWater_add_water_body(xspeed, yspeed, normalmap_texture, normal_repeat, refraction_amount, perspective);
/*
USAGE:
  This script is called from the Create Event or Creation Code of every water object. eg: obj_water_body.
  
ARGUMENTS:
  xspeed = the speed the water moves on the x plane, + and - values are allowed.
  yspeed = the speed the water moves on the y plane, + and - values are allowed.
  normalmap_texture = the sprite used for the normal map.
  normal_repeat = the number of times the normalmap_texture is repeated.
  refraction_amount = the strength of the normalmap_texture. Higher = more distorted.
  perspective = if the water has a perspective with the top of the water looking further away from the camera. Can either be True or Flase (1 or 0)
*/

_water_xspeed = argument0/10000;
_water_yspeed = argument1/10000;
_water_normal = argument2;
_water_normal_repeat = argument3;
_water_refraction_amount = argument4/100;
_water_perspective = argument5;

_water_tick_x = 0;
_water_tick_y = 0;
