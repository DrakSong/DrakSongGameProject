///TrueWater_cleanup();
/*
USAGE:
  This script is called from the Game End Event of obj_TrueWater_controller.
  No arguments required.
*/

if ds_exists(TrueWater_water_grid, ds_type_grid) ds_grid_destroy(TrueWater_water_grid);
