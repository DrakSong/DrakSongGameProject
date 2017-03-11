///2遇见纯当点



if (place_meeting(x,y,oParPlayer) and oParPlayer.kUp) and !global.Dialogueing
{

//instance_create(x,y,oSave);
globalvar  INI; INI = "SaveText.ini"
global.Dialogueing = instance_create(x,y,oDialogueBox)

}

