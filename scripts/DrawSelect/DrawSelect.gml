///DrawSelect(x,y,str,true);
if argument3 {
//return (argument2)
     
draw_set_alpha(1)
}
else
{draw_set_alpha(0.5)}

draw_text(argument0,argument1,string_hash_to_newline(argument2))
if argument3 {
return (argument2)
     }

draw_set_alpha(1);
