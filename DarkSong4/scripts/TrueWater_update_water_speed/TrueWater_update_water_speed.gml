///TrueWater_update_water_speed();
/*
USAGE:
  This script is called from the step event of every water object. eg: obj_water_body
  No arguments required.
*/

_water_tick_x +=_water_xspeed;
_water_tick_y +=_water_yspeed;
