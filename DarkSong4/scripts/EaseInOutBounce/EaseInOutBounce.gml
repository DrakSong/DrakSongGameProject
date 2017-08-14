/// @description  EaseInOutBounce(time,start,change,duration)
/// @function  EaseInOutBounce
/// @param time
/// @param start
/// @param change
/// @param duration

if (2*argument0 < argument3) {
    return (EaseInBounce(argument0*2, 0, argument2, argument3)*0.5 + argument1);
}

return (EaseOutBounce(argument0*2 - argument3, 0, argument2, argument3)*0.5 + argument2*0.5 + argument1);
