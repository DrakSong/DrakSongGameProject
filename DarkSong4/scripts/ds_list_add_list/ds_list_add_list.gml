/// @description ds_list_add_list(id, value, ...)
/// @function ds_list_add_list
/// @param id
/// @param  value
/// @param  ...
//adds a list and marks it

var toAdd = argument_count - 1, i;

for (var i = 0; i < toAdd; ++i)
{
    ds_list_add(argument[0], argument[i + 1]);
    ds_list_mark_as_list(argument[0], ds_list_size(argument[0]) - 1);
}


