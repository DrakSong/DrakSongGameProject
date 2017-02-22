///ds_tree_add(node, name[, value])
//Add a branch node to a node in a tree, with an optional value.

if (!ds_tree_exists(argument[0]))
{
    show_error("Node doesn't exist!", false);
    return 0;
}

var arr = argument[0];
var node;

if (argument_count > 2)
    node = ds_tree_create(argument[2]);
else
    node = ds_tree_create();

ds_map_add(arr[1], argument[1], node);    
ds_list_add(arr[2], argument[1]);

return node;
