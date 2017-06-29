/// @description 在这里插入描述
// 你可以在这个编辑器中写入代码

///Update water
var __ndist = (sprite_width/max(1,nodes-1)); //The distance between the nodes.
//Toggle off mask to interact with other bodies of water
with obj_water {
 mask_index = -1; 
}

//Here we add random disturbance to the water, by adding to random nodes' vertical speed.
repeat(disturbance*image_xscale) {
 vspd[irandom_range(1,nodes-1)] += choose(.1,-.1);
}

//Smooth out vspd values
vspd = array_smooth_1d(vspd,(smoothness-1)/2)

//Updating the nodes' vertical speed and y position through a loop.
for ( var i=0; i<nodes; i+=1)
{
 //If we are working with the end nodes, or if the water nodes is below other water or solids, we want them to stand still.
 if i == nodes-1 || i == 0 || position_meeting(x+i*__ndist,y-1,obj_water) {
  ypos[i] = 0;
 } else {
  var __r = numeric_springing(ypos[i],vspd[i],0,damp,freq,time);
  ypos[i] = __r[0];
  vspd[i] = __r[1];
 }
 ypos[i] = median(min(wave_max,sprite_height),ypos[i],-wave_max); //We limit this to be withing out wave_max range (and no deeper than our sprite is tall).
 
 //We then force down water touching with solids or water above itself
 while ypos[i] < 0 && (collision_line(x+i*__ndist,y+ypos[i],x+i*__ndist,y,obj_water,false,true) || collision_line(x+i*__ndist,y+ypos[i],x+i*__ndist,y,solids,false,true)) {
  ypos[i]++;
 }
}

//Toggle on mask again
with obj_water {
 mask_index = mask_water;
 
 ///Collisions
var __ndist = (sprite_width/max(1,nodes-1)), __id, __array = 0; //The distance between the nodes.
//Collisions with the water surface
for(var i=1;i<nodes;i++){
 do {
  //Find instance of collision
  __id = collision_line(x+(i-1)*__ndist,y+ypos[i-1],x+i*__ndist,y+ypos[i],all,false,true);
  with __id {
   is_water_surface_collision = true; //A special accessor variable
   //Add it to the array
   if is_array(__array) {
    __array[array_length_1d(__array)] = id;
   } else {
    __array[0] = id;
   }
   //Move away temporarily
   y -= 99999;
  }
 } until __id = noone;
}
//Collisions with the water body
for(var i=1;i<nodes;i++){
 do {
  //Find instance of collision
  __id = collision_rectangle(x+(i-1)*__ndist,y+mean(ypos[i-1],ypos[i]),x+i*__ndist,y+sprite_height,all,false,true);
  with __id {
   is_water_surface_collision = false; //A special accessor variable
   //Add it to the array
   if is_array(__array) {
    __array[array_length_1d(__array)] = id;
   } else {
    __array[0] = id;
   }
   //Move away temporarily
   y -= 99999;
  }
 } until __id = noone;
}
//Move instances back and perform collision events
if is_array(__array) {
 for(var i=0;i<array_length_1d(__array);i++){
  with __array[i] {
   y += 99999;
   event_perform(ev_collision,other.object_index);
  }
 }
}
}