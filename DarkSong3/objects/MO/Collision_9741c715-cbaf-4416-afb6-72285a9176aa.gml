/// @description 在这里插入描述
// 你可以在这个编辑器中写入代码

///Splash water
if is_water_surface_collision {
 var __vspd = (y-yprevious)/3, //This instance's vertical speed
 __pos = mean(bbox_left,bbox_right); //And it's horizontal center
 with other {
  __pos -= x; //Compared to the water's placement
  __pos = clamp(round(__pos/sprite_width*nodes),0,nodes-1); //Converted to placement in array
  vspd[__pos] += __vspd;
 }
} else {
 //Just for visually slowing down in the water
 x = mean(x,xprevious);
 y = mean(y,yprevious);
}