///ds_tree_size(node)
//Get the number of branches at a node in a tree.

if (!ds_tree_exists(argument[0]))
{
    show_error("Node doesn't exist!", false);
    return 0;
}

var arr = argument0;
var ls = arr[2];
var size = ds_list_size(ls);

return size;
