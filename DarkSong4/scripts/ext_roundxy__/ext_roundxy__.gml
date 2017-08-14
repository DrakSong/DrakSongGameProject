/// @description  ext_roundxy__(amount,data[x1|x2|y1|y2],target)
/// @function  ext_roundxy__
/// @param amount
/// @param data[x1|x2|y1|y2]
/// @param target

var _amount = argument0;
var _data = argument1;
var _target = argument2;

_target.x = round(lerp(_data[0], _data[1], _amount));
_target.y = round(lerp(_data[2], _data[3], _amount));

