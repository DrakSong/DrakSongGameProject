
if (place_meeting(x,y,oParPlayer)) 
and keyboard_check_pressed(global.kUp) 
and !instance_exists(oDialogueBox) 
 {
	global.Text = Text
	global.DialogueBox = instance_create(x,y,oDialogueBox)
}



