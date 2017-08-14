/// @description  ext_background_hvspeed__(amount,data[bg|h1|h2|v1|v2])
/// @function  ext_background_hvspeed__
/// @param amount
/// @param data[bg|h1|h2|v1|v2]

var _data = argument1;
var _bgIndex = _data[0];

__background_set( e__BG.HSpeed, _bgIndex, lerp(_data[1], _data[2], argument0 ));
__background_set( e__BG.VSpeed, _bgIndex, lerp(_data[3], _data[4], argument0 ));

