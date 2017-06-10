/// @description buttonSound(mouseOver snd, mouseLeftPressed snd);
/// @function buttonSound
/// @param mouseOver snd
/// @param  mouseLeftPressed snd

var sound1, sound2;
sound1 = argument0;
sound2 = argument1;

///  MouseOver
switch(mouse){
    case mouseOver:
    if ( snd==false){
        audio_play_sound(sound1, 10, false);
        snd = true;
    }
    
    break;
    case mouseLeftP:
        audio_play_sound(sound2, 10, false);
    break;
    case none:
        snd = false;
    break;
}




