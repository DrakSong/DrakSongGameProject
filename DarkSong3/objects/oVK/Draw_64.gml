display_set_gui_size(512,288);
draw_set_alpha(0.5)
var _x,_y,_U,_R,_D,_L;

_x = vPadTopX;
_y = vPadTopY;

var _U,_L,_D,_R;
_U = 1; 
_L = 2;
_D = 3;
_R = 4;


//绘制原本
draw_sprite(GamePad,0,_x,_y)

if keyboard_check( kUp) {draw_sprite(GamePad,_U,_x,_y); }
if keyboard_check( kLeft) {draw_sprite(GamePad,_L,_x,_y);}
if keyboard_check( kDown){draw_sprite(GamePad,_D,_x,_y); }
if keyboard_check( kRight){draw_sprite(GamePad,_R,_x,_y); }

var _A,_B,_L,_R;
_A = 6;
_B = 8;
_L = 14;
_R = 12
draw_sprite(GamePad,_A-1,vAx-16,vAy-16);
draw_sprite(GamePad,_B-1,vBx-16,vBy-16)
draw_sprite(GamePad,_L-1,vRx-16,vRy-16)
draw_sprite(GamePad,_R-1,vLx-16,vLy-16)

if keyboard_check( kA){draw_sprite(GamePad,_A,vAx-16,vAy-16); }
if keyboard_check( kB){draw_sprite(GamePad,_B,vBx-16,vBy-16); }
if keyboard_check( kR){draw_sprite(GamePad,_L,vRx-16,vRy-16); }
if keyboard_check( kL){draw_sprite(GamePad,_R,vLx-16,vLy-16); }


display_set_gui_size(512/2,288/2);
draw_set_alpha(1)

