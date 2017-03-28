
if (place_meeting(x,y,oParPlayer) and KeyGet("上",2)) and !instance_exists(oDialogueBox) //and !global.Dialogueing
 {

global.INI = "txt.ini"
 instance_create(x,y,oDialogueBox)

}



