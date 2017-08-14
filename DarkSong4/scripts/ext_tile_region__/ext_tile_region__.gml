/// @description  ext_tile_region__(amount,data[tile|left1|left2|top1|top2|width1|width2|height1|height2])
/// @function  ext_tile_region__
/// @param amount
/// @param data[tile|left1|left2|top1|top2|width1|width2|height1|height2]

var _data = argument1;
tile_set_region(_data[0], lerp(_data[1], _data[2], argument0), lerp(_data[3], _data[4], argument1), lerp(_data[5], _data[6], argument0), lerp(_data[7], _data[8], argument0));

