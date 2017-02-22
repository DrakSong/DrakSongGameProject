///ds_tree_get_child(node, name)
//Get the ID of a branch at a node in a tree.

if (!ds_tree_exists(argument[0]))
{
    show_error("Node doesn't exist!", false);
    return 0;
}

var arr = argument0;

return ds_map_find_value(arr[1], argument1);
