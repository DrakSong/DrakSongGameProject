event_inherited();

text  = "FOG EFFECT: ";
text2 = " ";

if (global.shakeScreen){
    text2 = "ON";
} else {
    text2 = "OFF";
}

// Added this so you dont have to retype the globalVariable multiple times
// in the step event. 
variable = global.fogEffect;


