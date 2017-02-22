///ds_tree_create([rootvalue])
//Create an empty tree with an optional value at the root node.

var ret;

ret[0] = 0;
if (argument_count != 0)
    ret[0] = argument[0];
    
ret[1] = ds_map_create();
ret[2] = ds_list_create();

return ret;
