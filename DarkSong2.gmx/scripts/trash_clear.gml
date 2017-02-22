while(!ds_list_empty(global.trash))
{
    if ds_exists(global.trash[| 0], global.trash_i[| 0])
    switch(global.trash_i[| 0])
    {
        case ds_type_list: ds_list_destroy(global.trash[| 0]); break;
        case ds_type_map: ds_map_destroy(global.trash[| 0]); break;
        case ds_type_stack: ds_stack_destroy(global.trash[| 0]); break;
        case ds_type_queue: ds_queue_destroy(global.trash[| 0]); break;
    }
    ds_list_delete(global.trash,0)
    ds_list_delete(global.trash_i,0)
}
