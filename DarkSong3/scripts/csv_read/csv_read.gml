///csv_read(filename[,headers])
var fn = argument[0], headers = true, f, head = undefined, data = -1, rowMap, headCount, i, row;
if (!file_exists(fn)) 
    return -1;

if (argument_count > 1)
    headers = argument[1];

f = file_text_open_read(fn);    
    
while (!file_text_eof(f)) {
    CSV_DELIMITER = ",";
	CSV_ESCAPE = "";
    row = array_explode_escape(file_text_read_string(f), CSV_DELIMITER, CSV_ESCAPE);
    
    if (headers) {
        //headers
        if (!is_array(head)) {
            head = row; 
            headCount = array_length_1d(head);
            file_text_readln(f);
            continue;   
        }
        if (data == -1) data = ds_list_create();
        rowMap = ds_map_create();
        
        for (i = 0; i < headCount; ++i) {
            rowMap[? head[@ i]] = row[@i];
        }
        
        ds_list_add_map(data, rowMap);
    } else {
        //no headers
        if (data == -1) {
            data = ds_list_create();
            headCount = array_length_1d(row);
        }
        rowMap = ds_list_create();
        
        for (i = 0; i < headCount; ++i) {
            rowMap[| i] = row[@i];
        }
        
        ds_list_add_list(data, rowMap);
    }

    file_text_readln(f);
}

file_text_close(f);






return data;
