///BGMPlay(BGM,Loop);
   var Vol = global.GameInfo[?'设置'];
   Vol = Vol[?'音效音量']/100;
   var BGM  =global.GameInfo[?'实时变量'];


var   _S =  audio_play_sound(argument0,1,0);
audio_sound_gain(_S, Vol, 0)


