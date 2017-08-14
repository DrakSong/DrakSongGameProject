/// @description ds_get(datastructure[,accessor,value])
/// @function ds_get
/// @param datastructure[
/// @param accessor
/// @param value]
/*
    Get an embedded value
    accessor parameter can be a ds_type_* (faster) or a string accessor ("?", "|", "@", "#")
*/
var i, _ds = argument[0],ac;

if (argument_count < 3)
    return _ds;

if (is_string(argument[1])) {
for (i = 1; i < argument_count; i += 2) {
    if (is_undefined(_ds)) break;
    
    ac = ord(argument[i]);
    switch (ac) {
        case $3f://map
            _ds = _ds[? argument[ i + 1]];
        break;
        case $23: //grid
            _ds = _ds[# argument[i + 1], argument[i + 2]];
            ++i;
        break;
        case $7c: //list
            _ds = _ds[| argument[i + 1]];
        break;
        case $40:  //array
            _ds = _ds[@ argument[ i + 1]];
        break;
    }
}
} else {
for (i = 1; i < argument_count; i += 2) {
    if (is_undefined(_ds)) break;
    
    switch (argument[i]) {
        case ds_type_map://map
            _ds = _ds[? argument[ i + 1]];
        break;
        case ds_type_grid: //grid
            _ds = _ds[# argument[i + 1], argument[i + 2]];
            ++i;
        break;
        case ds_type_list: //list
            _ds = _ds[| argument[i + 1]];
        break;
        default:  //array
            _ds = _ds[@ argument[ i + 1]];
        break;
    }
}
}
return _ds;

