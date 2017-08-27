/// @function KeyCheck(键位, 键位情况检测)
/// @arg 建.
/// @arg 情况.
/*
enum Key
{
up = "上",
down = "下",
right = "左",
left ="右",
attack = "攻击",
jump = "跳跃",
change = "切换武器",
roll = "特殊键"
};
enum KeyMode
{
keep = "按住",
pressed = "按下",
released = "松开"
};
*/


if keyboard_check(vk_anykey) or keyboard_check_pressed(vk_anykey) or keyboard_check_released(vk_anykey)  or  true
{
var K = global.KeyChenckMap ;
var K = K[?argument0]
var KC = K[?argument1]

//if KC {show_debug_message(current_second)}

//if KC = false
{
var P = global.PadChenckMap ;
var P = P[?argument0]
var PC = P[?argument1]

}

return KC or PC
//return false
}

