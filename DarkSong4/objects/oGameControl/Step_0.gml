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
else
{

if keyboard_check_pressed(ord("P")) and!  instance_exists(oPause)
{
instance_create_depth(x,y,self.depth,oPause)


}
}

#region 检测按钮的部分
//if keyboard_check(vk_anykey) or keyboard_check_pressed(vk_anykey) or keyboard_check_released(vk_anykey) or true
{
var KeyList = ds_list_create();
ds_list_add(KeyList,kUp,kDown,kLeft,kRight,kAttack,kJump,kChange,kRoll,vk_enter,vk_escape)
var PadList = ds_list_create();
ds_list_add(PadList,gp_padu, gp_padd,gp_padl,gp_padr)//4方向
ds_list_add(PadList,gp_face1,gp_face2,gp_face3,gp_face4)
ds_list_add(PadList,gp_face1,gp_face2)
var KeyListName = ds_list_create();
ds_list_add(KeyListName,"上" ,"下", "左", "右", "攻击", "跳跃" ,"切换武器" ,"特殊键","菜单确认","菜单返回")

for (var i=0; i<ds_list_size(KeyList); i+=1)
{
 var Map = global.KeyChenckMap[?KeyListName[|i]];
 var Key = KeyList[|i];
Map[?"按下"]  = keyboard_check_pressed(Key);
Map[?"按住"] = keyboard_check(Key)
Map[?"松开"] = keyboard_check_released(Key)

 var Map = global.PadChenckMap[?KeyListName[|i]];
 var Key = PadList[|i];
Map[?"按下"]  =  gamepad_button_check_pressed(0,Key,);
Map[?"按住"] =  gamepad_button_check(0,Key);
Map[?"松开"] =  gamepad_button_check_released(0,Key)

};
}


#endregion
chat_update();
live_update();

