/// @description Insert description here
// You can write your code in this editor
/*
if keyboard_check_pressed(vk_anykey) and !(keyboard_check_pressed(vk_enter) or keyboard_check_pressed(vk_escape))
{

SoundPlay(snd_button2)
switch (Post)
{
    case 0:  global.kUp = keyboard_lastkey ;break;
	case 1: global.kDown =  keyboard_lastkey;break;
	case 2: global.kLeft =  keyboard_lastkey;break;
	case 3: global.kRight =  keyboard_lastkey ;break;
	case 4:  global.kAttack=  keyboard_lastkey;break;
	case 5:  global.kJump=  keyboard_lastkey;break;
	case 6:  global.kChange=  keyboard_lastkey ;break;
	case 7:  global.kRoll =  keyboard_lastkey;break;
	
}
with(oControlsMeun)
{
visible = true;
}
 instance_destroy();
}

if keyboard_check_pressed(vk_escape)or keyboard_check_pressed(global.kJump)
{
SoundPlay(snd_button2)
instance_change(oOptionMeun,true)};