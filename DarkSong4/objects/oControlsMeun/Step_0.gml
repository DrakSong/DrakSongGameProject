/// @description Insert description here
// You can write your code in this editor
/*
if (Post = PostMax ) {
    Post = 0
}
if (Post = - 1) {
    Post = PostMax - 1
}
if ! instance_exists(oControlsChangeKey)
{
    if ( KeyCheck("上","按下") ) {
        Post--;
		SoundPlay(snd_button)
    }
    if ( KeyCheck("下","按下")  ) {
        Post++;
		SoundPlay(snd_button)
    }
    if Post != 8
    {
        if ( KeyCheck("菜单确认","按下")) {
		SoundPlay(snd_button2)
            var CK = instance_create_depth(x, y,0, oControlsChangeKey);
            CK.Post = Post;
        }
    }
	else
	{
	 if (KeyCheck("菜单确定","按下") ) {
	 SoundPlay(snd_button2)
	 instance_change(oOptionMeun,true)
	 }
	}
	if keyboard_check_pressed(vk_home)
	{
	  global.kUp = vk_up ;
	 global.kDown =  vk_down;
	 global.kLeft =  vk_left;
	 global.kRight =  vk_right ;
	  global.kAttack=  ord("Z");
	  global.kJump=  ord("X");
	 global.kChange=  vk_space ;
	  global.kRoll = ord("C")
	}
	
}
if  KeyCheck("菜单返回","按下") 
{
SoundPlay(snd_button2)
instance_change(oOptionMeun,true)};
