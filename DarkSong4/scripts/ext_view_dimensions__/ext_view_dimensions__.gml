/// @description  ext_view_dimensions__(amount,data[view|w1|w2|h1|h2])
/// @function  ext_view_dimensions__
/// @param amount
/// @param data[view|w1|w2|h1|h2]

var _data = argument1;
var _viewIndex = _data[0];

__view_set( e__VW.WView, _viewIndex, lerp(_data[1], _data[2], argument0 ));
__view_set( e__VW.HView, _viewIndex, lerp(_data[3], _data[4], argument0 ));

