///ds_tree_destroy(node)
//Delete a node from a tree, also deleting all nodes that are descendants this node (branches of this node, branches of branches of this node, etc.)

if (!ds_tree_exists(argument[0]))
{
    show_error("Node doesn't exist!", false);
    return 0;
}

var arr = argument0;
var ls = arr[2];
var size = ds_list_size(ls);

for (var i = 0; i < size; i++)
{
    ds_tree_destroy(ds_tree_get_child(argument0, ls[|i]));
}

ds_map_destroy(arr[1]);
ds_list_destroy(ls);
