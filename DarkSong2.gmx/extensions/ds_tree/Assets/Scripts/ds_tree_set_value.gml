///ds_tree_set_value(node, value)
//Set the value at a node in a tree.

if (!ds_tree_exists(argument[0]))
{
    show_error("Node doesn't exist!", false);
    return 0;
}

var arr = argument0;

arr[0] = argument1;
