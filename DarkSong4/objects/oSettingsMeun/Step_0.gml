
if (Post = PostMax ) {
    Post = 0
}
if (Post = - 1) {
    Post = PostMax - 1
}
if (keyboard_check_pressed(vk_up) or keyboard_check_pressed(global.kUp)) {
    Post--;
	SoundPlay(snd_button)
}
if (keyboard_check_pressed(vk_down) or keyboard_check_pressed(global.kDown) ) {
    Post++;
	SoundPlay(snd_button)
}
switch (Post) 
{
    case (0):
        if (keyboard_check_pressed(vk_enter) or keyboard_check_pressed(global.kAttack)) {
            global.WindowFullscreen ^= true;
            window_set_fullscreen(global.WindowFullscreen);
			SoundPlay(snd_button2)
        }
        break;
    case (1):
        if (keyboard_check_pressed(vk_left) or keyboard_check_pressed(global.kLeft)) {
            global.WindowsSize-=0.25;SoundPlay(snd_button)
        };
        if (keyboard_check_pressed(vk_right) or keyboard_check_pressed(global.kRight)) {
            global.WindowsSize+=0.25;SoundPlay(snd_button)
        };
        global.WindowsSize = max(global.WindowsSize, 1);
        global.WindowsSize = min(global.WindowsSize, 10);
		GameWindowSize( global.WindowsSize);
        break;
    case (2):
        if (keyboard_check_pressed(vk_enter) or keyboard_check_pressed(global.kAttack)) {
            global.DebugMode ^= true;
			SoundPlay(snd_button2)
        }
        break;
		case (3):
        if (keyboard_check_pressed(vk_left) or keyboard_check_pressed(global.kLeft)) {
            global.Language--;
			SoundPlay(snd_button)
        };
        if (keyboard_check_pressed(vk_right) or keyboard_check_pressed(global.kRight)) {
            global.Language++;
			SoundPlay(snd_button)
        };
        global.Language = max(global.Language, 0);
        global.Language = min(global.Language, ds_list_size( global.LanguageList)-1);
		ChangeMeunSelectLanguage();
        break;
		
    case (4):
        if (keyboard_check_pressed(vk_enter) or keyboard_check_pressed(global.kAttack)) {
		SoundPlay(snd_button2)
            instance_change(oOptionMeun, true)
			
        }
        break;
}
if keyboard_check_pressed(vk_escape)or keyboard_check_pressed(global.kJump)
{
SoundPlay(snd_button2)
instance_change(oOptionMeun,true)};