/// @description  ext_background_xy__(amount,data[bg|x1|x2|y1|y2])
/// @function  ext_background_xy__
/// @param amount
/// @param data[bg|x1|x2|y1|y2]

var _data = argument1;
var _bgIndex = _data[0];

__background_set( e__BG.X, _bgIndex, lerp(_data[1], _data[2], argument0 ));
__background_set( e__BG.Y, _bgIndex, lerp(_data[3], _data[4], argument0 ));



