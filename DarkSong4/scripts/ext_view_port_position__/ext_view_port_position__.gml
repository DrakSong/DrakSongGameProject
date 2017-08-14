/// @description  ext_view_port_position__(amount,data[view|x1|x2|y1|y2])
/// @function  ext_view_port_position__
/// @param amount
/// @param data[view|x1|x2|y1|y2]

var _data = argument1;
var _viewIndex = _data[0];

__view_set( e__VW.XPort, _viewIndex, lerp(_data[1], _data[2], argument0 ));
__view_set( e__VW.YPort, _viewIndex, lerp(_data[3], _data[4], argument0 ));


