/// @description  TGMS_ClearAllRooms()
/// @function  TGMS_ClearAllRooms
/*
    RETURN:
        na
        
    INFO:
        Clears stored tween data from all persistent rooms  
*/

if (global.TGMS_SharedTweener != noone)
{
    var _tweener = global.TGMS_SharedTweener;
    var _pRoomTweens = _tweener.pRoomTweens;
    
    repeat(ds_map_size(_pRoomTweens))
    {
        TGMS_ClearRoom(ds_map_find_first(_pRoomTweens));
    }
}

