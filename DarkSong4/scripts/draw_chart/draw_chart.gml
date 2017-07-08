/// @description draw_chart(data,xmin,xmax,ymin,ymax,x,y,w,h,settings)
/// @function draw_chart
/// @param data
/// @param xmin
/// @param xmax
/// @param ymin
/// @param ymax
/// @param x
/// @param y
/// @param w
/// @param h
/// @param settings

var data = argument[0], xmin = argument[1], xmax = argument[2],
    ymin = argument[3], ymax = argument[4], ox = argument[5],
    oy = argument[6], w = argument[7], h = argument[8],
    settings = argument[9], i, _xx = 0, _yy = 0, point,
    s = ds_list_size(data), xx, yy,
    r_c = isset_default(settings[? "point_colour"], c_red),
    r = isset_default(settings[? "point_size"], 3),
    lines = isset_default(settings[? "point_connect"], false),
    line_colour = isset_default(settings[? "line_colour"], c_black),
    line_thick = isset_default(settings[? "line_thick"], 1),
    xmag = abs(xmin - xmax), ymag = abs(ymin - ymax);
    
draw_set_colour(isset_default(settings[? "border_colour"], c_black));
draw_rectangle(ox, oy, ox + w, oy + h, false);

draw_set_circle_precision(100);
display_reset( display_aa, false);
    
draw_set_colour(line_colour);
if (lines) for (i = 0; i < s; ++i) {
    point = data[| i];
    xx = ox + w * (real(point[? "X"]) - xmin)/xmag;
    yy = oy + h * (real(point[? "Y"]) - ymin)/ymag;
    
    if (i > 0) {
        draw_line_width(_xx, _yy, xx, yy, line_thick);
    }

    _xx = xx;
    _yy = yy;
}

for (i = 0; i < s; ++i) {
    point = data[| i];
    xx = ox + w * (real(point[? "X"]) - xmin)/xmag;
    yy = oy + h * (real(point[? "Y"]) - ymin)/ymag;
    
    draw_set_colour(r_c);
    draw_circle(xx, yy, r, 0);

    _xx = xx;
    _yy = yy;
}


