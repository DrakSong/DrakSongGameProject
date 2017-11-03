/// @description Insert description here
// You can write your code in this editor
//TitleMeun最多4个选项 达到尽头就跳转
if (Post = 2 ) {
    Post = 0
}
if (Post = - 1) {
    Post = 1
}
if ( KeyCheck("上","按下") ) {
    Post--;
	SoundPlay(snd_button)
}
if KeyCheck("下","按下")   {
    Post++;
	SoundPlay(snd_button)
}


if (KeyCheck("确认","按下") )
{
SoundPlay(snd_button2)
    switch (Post)
    {
        case (0):
            instance_change(oSettingsMeun, true);
            break;
        case (1):
            instance_change(oSoundMeun, true);
            break;
        case (2):
          //  instance_change(oControlsMeun, true);
            break;
        case (3):

            break;
    }
}
if  KeyCheck("取消","按下") 
if (room  = rTitle){
           instance_change(oTitleMeun, true);
       }