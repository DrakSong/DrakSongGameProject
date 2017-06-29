/// @description Insert description here
// You can write your code in this editor
if (Post = PostMax ) {
    Post = 0
}
if (Post = - 1) {
    Post = PostMax - 1
}
if ! instance_exists(oControlsChangeKey)
{
    if (keyboard_check_pressed(vk_up) or keyboard_check_pressed(global.kUp)) {
        Post--;
		SoundPlay(snd_button)
    }
    if (keyboard_check_pressed(vk_down) or keyboard_check_pressed(global.kDown) ) {
        Post++;
		SoundPlay(snd_button)
    }
    if Post != 8
    {
        if (keyboard_check_pressed(vk_enter) or keyboard_check_pressed(global.kAttack)) {
		SoundPlay(snd_button2)
            var CK = instance_create_depth(x, y,0, oControlsChangeKey);
            CK.Post = Post;
        }
    }
	else
	{
	 if (keyboard_check_pressed(vk_enter) or keyboard_check_pressed(global.kAttack)) {
	 SoundPlay(snd_button2)
	 instance_change(oOptionMeun,true)
	 }
	}
	if keyboard_check_pressed(vk_backspace)
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
if keyboard_check_pressed(vk_escape)or keyboard_check_pressed(global.kJump)
{
SoundPlay(snd_button2)
instance_change(oOptionMeun,true)};
