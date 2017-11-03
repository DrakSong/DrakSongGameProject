//指令
var Order =  argument[0]
//设备
var Device =  argument[1]
//键位
var Key = argument[2]



#region  注册Map


	#region 添加指令
	
	
	 
	if ds_map_find_value(global.InPut,Order)
	{
		var OrderMap =  ds_map_find_value(global.InPut,Order)
	}
	else
	 {
		 var OrderMap = ds_map_create()
	ds_map_add_map(global.InPut,Order,OrderMap)
	ds_map_add_list(OrderMap,"设备引索",ds_list_create())
	
	ds_map_add_list(global.OutPut,"设备引索",ds_list_create())
	 }
	#endregion

	#region 添加设备
	
	
	if ds_list_find_index(OrderMap[?"设备引索"],Device)=-1
	{ds_list_add(OrderMap[?"设备引索"],Device)
		ds_list_add(global.OutPut[?"设备引索"],Device)
		ds_map_add_map(global.OutPut,Device,ds_map_create())
		}

	#endregion

	#region  添加键位
	
	if ds_map_find_value(OrderMap,Device)
	{
	var KeyList = ds_map_find_value(OrderMap,Device)
	}
	else
	{
	var KeyList = ds_list_create()
	ds_map_add_list(OrderMap,Device,KeyList)
	}
	
	ds_list_add(KeyList,Key)
	ds_map_add(global.OutPut[?Device],Key,Order)

	 #endregion



#endregion

