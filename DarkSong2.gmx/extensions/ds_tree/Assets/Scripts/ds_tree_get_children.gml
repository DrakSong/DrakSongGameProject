///ds_tree_get_children(node)
//Get the names of the branches at a node in a tree.

if (!ds_tree_exists(argument[0]))
{
    show_error("Node doesn't exist!", false);
    return 0;
}

var arr = argument0;
var ret = 0;
var ls = arr[2];
var size = ds_list_size(ls);

for (var i = 0; i < size; i++)
{
    ret[i] = ls[|i];
}

return ret;
