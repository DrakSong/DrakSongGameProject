///string_time(timeinsteps)
//Converts a number of steps into a string of time
//Returns "Minutes:Seconds.Centiseconds"

var ST_CS, ST_S, ST_M;

ST_CS=string_zeroes(floor(clamp((argument0 mod room_speed)/(room_speed/100),0,99)),2);
ST_S=string_zeroes(floor(clamp((argument0 div room_speed) mod 60,0,59)),2);
ST_M=string_zeroes(floor(argument0 div (60*room_speed)),2);

if( floor(argument0 div (60*room_speed))==0 )
{
    return ST_S+"."+ST_CS;
}
else
{
    return ST_M+":"+ST_S+"."+ST_CS;
}
