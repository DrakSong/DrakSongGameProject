/*
ini_open("Map.ini")
if ini_read_real(room_get_name(room),"MapOpen",0)
{
var W = ini_read_real(room_get_name(room),"W",0 );
var H = ini_read_real(room_get_name(room),"H", 0);
global.Map = ds_grid_create(W,H)
for (a=0; a<W; a+=1)
{
for (b=0; b<H; b+=1)
{
   global.Map[# a,b] =  ini_read_real(room_get_name(room),string(a)+string(b),0)
if global.Map[# a,b] != 0  show_debug_message("读取Map"+string(a)+string(b))
};

};

}
else
{
var W,H;
W = (room_width div 320)*2;
H = (room_height div  180)*2;
global.Map = ds_grid_create(W,H)
 ini_write_real(room_get_name(room),"MapOpen",true)
var W = ds_grid_width(global.Map)
var H = ds_grid_height(global.Map)
ini_write_real(room_get_name(room),"W", W)
ini_write_real(room_get_name(room),"H", H)
show_debug_message("新建Map")
}

ini_close()