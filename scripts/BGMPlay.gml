///BGMPlay(BGM,Loop);
   var Vol = global.GameInfo[?'设置'];
   Vol = Vol[?'BGM音量']/100;
   var BGM  =global.GameInfo[?'实时变量'];
   //BGM = BGM[?'BGM'];
   
  // sprite_index
   BGM[?'BGM'] = audio_get_name(argument0);
   BGM[?'BGM引索'] =  audio_play_sound(argument0,Vol , argument1);
   
   /*
   if BGMName{
  
   };

