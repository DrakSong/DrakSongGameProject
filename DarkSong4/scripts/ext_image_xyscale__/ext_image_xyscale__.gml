/// @description  ext_image_xyscale__(amount,data[x1|x2|y1|y2],target)
/// @function  ext_image_xyscale__
/// @param amount
/// @param data[x1|x2|y1|y2]
/// @param target

var _amount = argument0;
var _data = argument1;
var _target = argument2;

_target.image_xscale = lerp(_data[0], _data[1], _amount);
_target.image_yscale = lerp(_data[2], _data[3], _amount);

