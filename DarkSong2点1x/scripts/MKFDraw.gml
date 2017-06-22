///DRAW - Disable drawing in create event!
if (drawing) {
    for (var i = 0; i < ds_list_size(graph);i++) {
    
        if (i/20 <= window_get_width()) {
            draw_point(i/20,600-(ds_list_find_value(graph,i)/32));
        } else {
            ds_list_delete(graph,i);
        }
    
    }
}

