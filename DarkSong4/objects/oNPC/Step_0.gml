
if (place_meeting(x,y,oParPlayer)) 
and  KeyCheck("上","按下")
and !instance_exists(oDialogueBox) 
 {
	global.Text = Text
	global.DialogueBox = instance_create(x,y,oDialogueBox)
}



