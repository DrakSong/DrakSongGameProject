/// @description  instance_nearest_m(x, y, ...objects)
/// @function  instance_nearest_m
/// @param x
/// @param  y
/// @param  ...objects
var _x = argument[0];
var _y = argument[1];
var r = noone, rd;
var i = 2;
repeat (argument_count - 2) {
    var q = instance_nearest(_x, _y, argument[i++]);
    if (q == noone) continue;
    var qd = point_distance(_x, _y, q.x, q.y);
    if (r == noone || qd < rd) {
        rd = qd;
        r = q;
    }
}
return r;
