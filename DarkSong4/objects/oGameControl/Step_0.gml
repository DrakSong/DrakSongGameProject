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
if keyboard_check_pressed(vk_anykey)
{
	SoundPlay(snd_button2);
	room_goto_next();
}
}


chat_update();
live_update();

