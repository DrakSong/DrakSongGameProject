/// @description  EaseInOutCubic(time,start,change,duration)
/// @function  EaseInOutCubic
/// @param time
/// @param start
/// @param change
/// @param duration

_arg0 = 2*argument0/argument3;

if (_arg0 < 1){
   return argument2 * 0.5 * power(_arg0, 3) + argument1;
}

return argument2 * 0.5 * (power(_arg0 - 2, 3) + 2) + argument1;

