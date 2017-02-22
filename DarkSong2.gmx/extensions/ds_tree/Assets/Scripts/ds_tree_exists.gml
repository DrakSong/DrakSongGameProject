///ds_tree_exists(node)
//Check if a node exists.

var arr = argument0;

return (is_array(arr) && array_length_1d(arr) == 3 && ds_exists(arr[2], ds_type_list));
