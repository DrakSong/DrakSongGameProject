/// @description      Boring old step event.

//      Rotate the Sprite.
image_angle+=rotSpeed;

//      Wrap around when outside the room.
if (x   >  room_width+128)      x=-128;
if (x   <   -128)               x=room_width+128;
if (y   >   room_height+128)    y=-128;
if (y   <   -128)               y=room_height+128;


