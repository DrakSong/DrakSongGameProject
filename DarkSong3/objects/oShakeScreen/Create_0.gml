event_inherited();

text  = "SHAKESCREEN: ";
text2 = " ";

if (global.shakeScreen){
    text2 = "ON";
} else {
    text2 = "OFF";
}

// Added this so you dont have to retype the globalVariable multiple times
// in the step event. 
variable = global.shakeScreen;


