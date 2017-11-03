
//TitleMeun最多4个选项 达到尽头就跳转
if (Post = 3 ) {
    Post = 0
}
if (Post = - 1) {
    Post = 2
}
if KeyCheck("上","按下") {
    Post--;
	SoundPlay(snd_button)
}
if   KeyCheck("下","按下") {
    Post++;
	SoundPlay(snd_button)
}


if ( KeyCheck("确认","按下"))
{ SoundPlay(snd_button2)
    switch (Post)
    {
        case (0):
		//instance_create(64,-32,oTaPuLo)
		//instance_create(64,-32,oCamera)
		room_goto_next()
            //instance_change(oNewGameMeun, true);
            break;
        case (3):
            //instance_change(oLoadGameMeun, true);
            break;
        case (1):
            instance_change(oOptionMeun, true);
            break;
        case (2):
            game_end();
            break;
    }
}