/// @description 在这里插入描述
// 你可以在这个编辑器中写入代码

///Draw water
var __ndist = (sprite_width/max(1,nodes-1)); //The distance between the nodes.
//We draw the water as a primitive, which allows us to make a more complex shape.
draw_set_color(color);
draw_primitive_begin(pr_trianglestrip);
for(var i=0;i<nodes;i++){
 draw_set_alpha(image_alpha);
 draw_vertex(x+i*__ndist,y+sprite_height); //Here we are making trangles going from the bottom..
 draw_vertex(x+i*__ndist,y+ypos[i]); //..to the wave tops!
}
draw_primitive_end();

//If we want a glimmering surface, then we need to draw this as well! (almost in the same way).
if glimmer {
 draw_set_color(c_white);
 draw_primitive_begin(pr_trianglestrip);
 //We draw a 1 pixel thik line, with fading alpha depending on the wave height.
 for(var i=0;i<nodes;i++){
  draw_set_alpha(0);
  draw_vertex(x+i*__ndist,y+ypos[i]+1);
  draw_set_alpha(-ypos[i]*10);
  draw_vertex(x+i*__ndist,y+ypos[i]);
 }
 draw_primitive_end();
}

//And always reset the alpha!
draw_set_alpha(1);