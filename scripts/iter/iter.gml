///iter(map[,create])
/*useage: 
j = iter(m, true);
while (iter(j)) {
    i = iterkey(j);
    v = iterval(j);
}
*/

var m = argument[0], v;

if (argument_count == 1) { //iterate mode
    if (m[@ 0] >= m[@ 1])
        return false;
    
    if (m[@ 0] != 0) {
        m[@ 2] = ds_map_find_next(m[@ 3], m[@ 2]);
        m[@ 4] = ds_map_find_value(m[@ 3], m[@ 2]);
    }
    ++m[@ 0];     

    return true;
} else {
    //create mode
    //internal - formatting: [iteration,size,stringindex,mapind,value]
    var j;
    j[4] = undefined;
    j[3] = m;
    j[2] = ds_map_find_first(m);
    j[1] = ds_map_size(m);
    j[0] = 0;
    
    j[4] = ds_map_find_value(j[3], j[2]);
    return j;
}




