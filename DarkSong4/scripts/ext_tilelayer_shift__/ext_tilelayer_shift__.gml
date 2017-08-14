/// @description  ext_tilelayer_shift__(amount,data[depth,x,y,offset])
/// @function  ext_tilelayer_shift__
/// @param amount
/// @param data[depth
/// @param x
/// @param y
/// @param offset]

var _amount = argument0;
var _data = argument1;
var _depth = _data[0];
var _xShift = _data[1];
var _yShift = _data[2];
var _oldAmount = _data[3];
var _useAmount = _amount-_oldAmount;

_data[@ 3] = _amount;
tile_layer_shift(_depth, lerp(0, _xShift, _useAmount), lerp(0, _yShift, _useAmount));


