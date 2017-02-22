var min_var=argument0[| 0]
for(var i=0; i<ds_list_size(argument0); i++)
{
    if is_string(argument0[| i]) {show_debug_message('###ERROR!### String in function min!'); return 0}
    else min_var=min(min_var, argument0[| i])
}

return min_var
