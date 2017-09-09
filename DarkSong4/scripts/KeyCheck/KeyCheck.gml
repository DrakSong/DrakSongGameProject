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

if ds_map_exists(global.KeyMap,argument0)
{
if argument1 = "松开"
if keyboard_check_released(global.KeyMap[?argument0]) return true

if argument1 = "按下"
if keyboard_check_pressed(global.KeyMap[?argument0]) return true

if argument1 = "按住"
if keyboard_check(global.KeyMap[?argument0]) return true
}




