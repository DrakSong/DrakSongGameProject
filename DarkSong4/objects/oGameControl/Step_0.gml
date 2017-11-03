
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


#endregion
//chat_update();
//live_update();

