/// @description  ext_background_xyscale__(amount,data[bg|x1|x2|y1|y2])
/// @function  ext_background_xyscale__
/// @param amount
/// @param data[bg|x1|x2|y1|y2]

var _data = argument1;
var _bgIndex = _data[0];

__background_set( e__BG.XScale, _bgIndex, lerp(_data[1], _data[2], argument0 ));
__background_set( e__BG.YScale, _bgIndex, lerp(_data[3], _data[4], argument0 ));

