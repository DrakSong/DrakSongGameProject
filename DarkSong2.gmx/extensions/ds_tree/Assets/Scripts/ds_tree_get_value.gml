///ds_tree_get_value(node)
//Get the value at a node in a tree.

if (!ds_tree_exists(argument[0]))
{
    show_error("Node doesn't exist!", false);
    return 0;
}

var arr = argument0;

return arr[0];
