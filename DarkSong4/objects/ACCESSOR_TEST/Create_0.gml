//Create a mess of lists, maps arrays and grids
m1 = ds_map_create();

m1[? "list"] = ds_list_create();

gr1 = ds_grid_create(10,10);
ds_list_add(m1[? "list"], gr1);

gr1[# 5,5] = ds_map_create();

ar[4] = "you found me";

ds_map_set(gr1[# 5,5], "testKey", ar);


/*
    Get embedded value by traversing datastructures
*/

//Normal functions
ret = ds_get_s(m1, "?list |0 #5,5 ?testKey @4");
    
//More efficient function
//9x faster
ret = ds_get(m1, "?", "list", "|", 0, "#", 5, 5, "?", "testKey", "@", 4);

//13 times faster
ret = ds_get(m1, ds_type_map, "list", ds_type_list, 0, ds_type_grid, 5, 5, ds_type_map, "testKey", ds_type_array, 4);

/* */
/*  */
