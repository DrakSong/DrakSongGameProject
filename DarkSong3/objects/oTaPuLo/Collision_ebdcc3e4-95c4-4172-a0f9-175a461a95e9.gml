///Splash water
if is_water_surface_collision {
 var __vspd = (vx), //This instance's vertical speed
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