
if (place_meeting(x,y,oParPlayer) and KeyGet("上",2)) and !global.Dialogueing
 {

global.INI = "txt.ini"
global.Dialogueing = instance_create(x,y,oDialogueBox)
}



