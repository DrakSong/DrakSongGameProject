if is_real(argument0) return argument0
else if is_string(argument0)
{
    if string_copy(argument0,1,1)='"' or string_copy(argument0,1,1)="'"
    return string_delete(argument0,1,1)
    else if global.var_map[? argument0]!=undefined
    return global.var_map[? argument0] else return argument0
}
else return argument0
