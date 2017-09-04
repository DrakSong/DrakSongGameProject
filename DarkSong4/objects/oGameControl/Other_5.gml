ini_open("Map.ini")

/*
var W = ds_grid_width(global.Map)
var H = ds_grid_height(global.Map)
ini_write_real(room_get_name(room),"W", W)
ini_write_real(room_get_name(room),"H", H)

for (a=0; a<W; a+=1)
{
for (b=0; b<H; b+=1)
{
	   if global.Map[# a,b] =true{
    ini_write_real(room_get_name(room),string(a)+string(b), global.Map[# a,b])
	 show_debug_message("保存Map"+string(a)+string(b))
	 }
};

};



ini_close()
ds_grid_destroy(global.Map)