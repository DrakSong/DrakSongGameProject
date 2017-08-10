///TrueWater_create_grid();
/*
USAGE:
  This script is called from TrueWater_init().
  No user action is required.
  No arguments required.
*/

TrueWater_water_grid = ds_grid_create(3, instance_number(TrueWater_water_parent));

for (i=0; i<instance_number(TrueWater_water_parent); i+=1)
  {  
     var object = instance_find(TrueWater_water_parent, i);
     TrueWater_water_grid[# 0, i] = object;
     TrueWater_water_grid[# 1, i] = sprite_get_width(object.sprite_index) * object.image_xscale;
     TrueWater_water_grid[# 2, i] = sprite_get_height(object.sprite_index) * object.image_yscale;
//     TrueWater_water_grid[# 3, i] = object._water_normal;
}
