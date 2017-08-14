/// @description  TGMS_Final()
/// @function  TGMS_Final
/*
    !DO NOT CALL THIS!
    Automatically called by the extension.
*/

with(obj_SharedTweener) instance_destroy(); // Destroy shared tweener
ds_map_destroy(global.TGMS_MAP_TWEEN);      // Destroy global tween id map

