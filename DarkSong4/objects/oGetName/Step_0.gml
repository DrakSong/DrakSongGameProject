/// @description Insert description here
// You can write your code in this editor


for (var i = 0; i < instance_count; i ++;)
    {
    var temp_id = instance_id_get(i);     
	
	if !ds_map_exists(Name,temp_id)
	{
	ds_map_add(Name,temp_id,object_get_name(temp_id.object_index))
	}

    }
	
	
	I = instance_count