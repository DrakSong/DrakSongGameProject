///ds_list_add_map(id, value, ...)
//adds a map and marks it

var toAdd = argument_count - 1, i;

for (var i = 0; i < toAdd; ++i)
{
    ds_list_add(argument[0], argument[i + 1]);
    ds_list_mark_as_map(argument[0], ds_list_size(argument[0]) - 1);
}
