///ds_tree_delete(node, name)
//Delete a branch node to a node in a tree, with an optional value.

if (!ds_tree_exists(argument[0]))
{
    show_error("Node doesn't exist!", false);
    return 0;
}

var arr = argument0;

ds_map_delete(arr[1], argument1);
ds_list_delete(arr[2], ds_list_find_index(arr[2], argument1));
