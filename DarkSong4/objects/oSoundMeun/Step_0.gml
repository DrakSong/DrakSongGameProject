
//TitleMeun最多4个选项 达到尽头就跳转
if (Post = PostMax ) {
    Post = 0
}
if (Post = - 1) {
    Post = PostMax-1
}
if (keyboard_check_pressed(vk_up) or keyboard_check_pressed(global.kUp)) {
SoundPlay(snd_button)
    Post--;
}
if (keyboard_check_pressed(vk_down) or keyboard_check_pressed(global.kDown) ) {
SoundPlay(snd_button)
    Post++;
}


    switch (Post)
    {
        case (0):
            if (keyboard_check(vk_left) or keyboard_check(global.kLeft)){global.BGMvolume--;}
			if (keyboard_check(vk_right) or keyboard_check(global.kRight)){global.BGMvolume++;}
			global.BGMvolume = min(global.BGMvolume,100);
			global.BGMvolume = max(global.BGMvolume,0);
			//就在这里修改音量
			 audio_sound_gain(global.BGM, global.BGMvolume/100, 0);
            break;
        case (1):
           if (keyboard_check(vk_left) or keyboard_check(global.kLeft)){global.SEvolume--;SoundPlay(snd_button)}
			if (keyboard_check(vk_right) or keyboard_check(global.kRight)){global.SEvolume++;SoundPlay(snd_button)}
			global.SEvolume = min(global.SEvolume,100);
			global.SEvolume = max(global.SEvolume,0);
            break;
        case (2):
		if (keyboard_check_pressed(vk_enter) or keyboard_check_pressed(global.kAttack))
            {
			SoundPlay(snd_button2)
			instance_change(oOptionMeun,true)}
            break;
    }
if keyboard_check_pressed(vk_escape)or keyboard_check_pressed(global.kJump)
{
SoundPlay(snd_button2)
instance_change(oOptionMeun,true)};