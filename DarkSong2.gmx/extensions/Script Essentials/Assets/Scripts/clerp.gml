///clerp(val1,val2,amount,minspeed,maxspeed)
//This performs a lerp, with an added clamp to how much the first value can change.
//Useful script for smooth movement and transitions.

var ret=clamp(lerp(argument0,argument1,argument2),argument0+(argument3*sign(argument1-argument0)),argument0+(argument4*sign(argument1-argument0)));

if( abs(ret-argument1)<argument3 ) ret=argument1;

return ret;
