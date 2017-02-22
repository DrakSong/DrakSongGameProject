///ds_tree_child_exists(node, name)
//Check if a node has a child with a given name.

if (!ds_tree_exists(argument[0]))
{
    show_error("Node doesn't exist!", false);
    return 0;
}

var arr = argument0;

return ds_map_exists(arr[1], argument0);
