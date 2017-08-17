/// @description Insert description here
// You can write your code in this editor

if global.DebugMode{
if keyboard_check_pressed(ord("R"))
{
	room_restart();
}
if keyboard_check_pressed(ord("T"))
{
	game_restart();
}}


if room = rGameStart
{
if keyboard_check_pressed(vk_anykey) or true
{
	SoundPlay(snd_button2);
	room_goto_next();
}
}


/*
var KeyList = ds_list_create();
ds_list_add(KeyList,kUp,kDown,kLeft,kRight,kAttack,kJump,kChange,kRoll)
var KeyListName = ds_list_create();
ds_list_add(KeyListName,"上" ,"下", "左", "右", "攻击", "跳跃" ,"切换武器" ,"特殊键" )
for (var i=0; i<ds_list_size(KeyList); i+=1)
{

 var Map = global.KeyChenckMap[?KeyListName[|i]];
 var Key = KeyList[|i]
Map[?"按下"]  = keyboard_check_pressed(Key);
Map[?"按住"] = keyboard_check(Key)
Map[?"松开"] = keyboard_check_released(Key)

};
*/
chat_update();
live_update();

