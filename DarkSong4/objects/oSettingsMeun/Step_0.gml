
if (Post = PostMax ) {
    Post = 0
}
if (Post = - 1) {
    Post = PostMax - 1
}
if (KeyCheck("上","按下")) {
    Post--;
	SoundPlay(snd_button)
}
if ( KeyCheck("下","按下") ) {
    Post++;
	SoundPlay(snd_button)
}
switch (Post) 
{
    case (0):
        if ( KeyCheck("菜单确认","按下")) {
            global.WindowFullscreen ^= true;
            window_set_fullscreen(global.WindowFullscreen);
			SoundPlay(snd_button2)
        }
        break;
    case (1):
        if (  KeyCheck("左","按下")) {
            global.WindowsSize-=0.25;SoundPlay(snd_button)
        };
        if (KeyCheck("右","按下")) {
            global.WindowsSize+=0.25;SoundPlay(snd_button)
        };
        global.WindowsSize = max(global.WindowsSize, 1);
        global.WindowsSize = min(global.WindowsSize, 10);
		GameWindowSize( global.WindowsSize);
        break;
    case (2):
        if ( KeyCheck("菜单确认","按下")) {
            global.DebugMode ^= true;
			SoundPlay(snd_button2)
        }
        break;
		case (3):
        if ( KeyCheck("左","按下")) {
            global.Language--;
			   global.Language = max(global.Language, 0);
			SoundPlay(snd_button)
        };
        if ( KeyCheck("右","按下")) {
            global.Language++;
			global.Language = min(global.Language,3)// ds_list_size( global.LanguageList)-1);
			SoundPlay(snd_button)
        };
     
        
		ChangeMeunSelectLanguage();
        break;
		
    case (4):
        if ( KeyCheck("菜单确认","按下")) {
		SoundPlay(snd_button2)
            instance_change(oOptionMeun, true)
			
        }
        break;
}
if  KeyCheck("菜单返回","按下")
{
SoundPlay(snd_button2)
instance_change(oOptionMeun,true)};