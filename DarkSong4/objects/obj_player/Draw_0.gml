/// @description  draw_self()
/// @function  draw_self
draw_self();
/*
/// dynamic expression
// blink on landing:
var in_air0 = face_in_air;
var in_air1 = !place_meeting(x, y + 1, oParSolid);
if (in_air0 && !in_air1 && random(2) < 1) face_yscale = 0.1;
face_in_air = in_air1;
//
if (face_yscale < 0.99) {
    face_yscale = lerp(face_yscale, 1, 0.15);
    face_blink = irandom_range(200, 400);
} else {
    face_yscale = 1;
    if (--face_blink <= 0) face_yscale = 0.1;
}
//
var sx = image_xscale;
var sy = image_yscale;
var fx = sign(sx);
var dx = x + 3 * sx;
var dy = y - 10 - scr_player_eyes_offset(sprite_index, image_index);
var iq = false//instance_nearest_m(x, y, obj_of_interest, obj_solid_of_interest);
var ix = undefined, iy = undefined;
if (iq != noone) {
    if (iq.object_index == false && distance_to_object(iq) < 20)  {
        ix = dx + fx * 50;
        iy = dy - 50;
    } else if (distance_to_object(iq) < 320) {
        ix = iq.x;
        iy = iq.y;
    }
}
if (is_undefined(ix)) {
    ix = dx + fx * 100;
    iy = dy;
}
var iz = point_direction(dx, dy, ix, iy);
var dz = angle_difference(iz, 90 - fx * 90);
if (abs(dz) < 90) {
    dz = fx * clamp(dz * fx / 1.5, -30, 30);
} else dz = 0;
if (face_xscale != fx) {
    face_xscale = fx;
    face_angle = -face_angle;
}
face_angle += angle_difference(dz, face_angle) * 0.1;
dy += min(0, fx * lengthdir_y(15, face_angle));
dy += max(0, fx * lengthdir_y(5, face_angle));
draw_sprite_ext(spr_player_eyes, 0, dx, dy, sx, sy * face_yscale, face_angle, -1, 1);
draw_sprite_ext(spr_player_eyes, 1, dx, dy, sx, sy, face_angle, -1, 1);

