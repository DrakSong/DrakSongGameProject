
//TitleMeun最多4个选项 达到尽头就跳转
if (Post = PostMax ) {
    Post = 0
}
if (Post = - 1) {
    Post = PostMax-1
}
if ( KeyCheck("上","按下")){
SoundPlay(snd_button)
    Post--;
}
if ( KeyCheck("下","按下")) {
SoundPlay(snd_button)
    Post++;
}


    switch (Post)
    {
        case (0):
            if ( KeyCheck("左","按下")){global.BGMvolume--;}
			if ( KeyCheck("右","按下")){global.BGMvolume++;}
			global.BGMvolume = min(global.BGMvolume,100);
			global.BGMvolume = max(global.BGMvolume,0);
			//就在这里修改音量
			 audio_sound_gain(global.BGM, global.BGMvolume/100, 0);
            break;
        case (1):
           if ( KeyCheck("左","按下")){global.SEvolume--;SoundPlay(snd_button)}
			if ( KeyCheck("右","按下")){global.SEvolume++;SoundPlay(snd_button)}
			global.SEvolume = min(global.SEvolume,100);
			global.SEvolume = max(global.SEvolume,0);
            break;
        case (2):
		if ( KeyCheck("菜单确认","按下"))
            {
			SoundPlay(snd_button2)
			instance_change(oOptionMeun,true)}
            break;
    }
if  KeyCheck("菜单返回","按下")
{
SoundPlay(snd_button2)
instance_change(oOptionMeun,true)};