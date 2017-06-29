/// @description  scr_player_eyes_offset(sprite, subimg)
/// @function  scr_player_eyes_offset
/// @param sprite
/// @param  subimg
var q = argument0;
var i = floor(argument1 % sprite_get_number(q));
switch (q) {
    case spr_player_walk:
        switch (i) {
            case 0: return 3;
            case 1: return 5;
        }; break
    case spr_player_jump: return 3;
    default: return 0;
}
