
//指令
var Order = argument[0]

//if argument_count = 1
var KeyMode = argument[1]

if ds_map_find_value(global.InPut,Order)
{
	 var DList = ds_map_find_value(global.InPut[?Order],"设备引索")
	for (var i = 0; i < ds_list_size( DList); ++i) {
		var KList  = global.InPut[?Order]
		var KList = KList[?DList[|i]] 
	   
	   #region 开始检测键盘
	   	   if DList[|i] = "键盘"
	   for (var a = 0; a < ds_list_size(KList); ++a) {
	if keyboard_check(KList[|a]) and  KeyMode == "按住"
	return true
	
	if keyboard_check_pressed(KList[|a]) and  KeyMode == "按下"
	return true
	
	if keyboard_check_released(KList[|a]) and  KeyMode == "松开"
	return true
	
	   }
	   #endregion

	   	   #region 开始检测手柄
	   	   if DList[|i] = "手柄"
	   for (var a = 0; a < ds_list_size(KList); ++a) {
	if gamepad_button_check(0,KList[|a]) and  KeyMode == "按住"
	return true
	
	if gamepad_button_check_pressed(0,KList[|a]) and  KeyMode == "按下"
	return true
	
	if gamepad_button_check_released(0,KList[|a]) and  KeyMode == "松开"
	return true
	
	   }
	   #endregion
		   
		   #region 检测鼠标
		      if DList[|i] = "鼠标"
	   for (var a = 0; a < ds_list_size(KList); ++a) {
	if mouse_check_button(KList[|a]) and  KeyMode == "按住"
	return true
	
	if mouse_check_button_pressed(KList[|a]) and  KeyMode == "按下"
	return true
	
	if mouse_check_button_released(KList[|a]) and  KeyMode == "松开"
	return true
	
	   }
		   
		   #endregion
		   
		 
	}
}
else
{
show_debug_message("根本没有这样的指令"+string(Order))
}

  return false
