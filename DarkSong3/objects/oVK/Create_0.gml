GamePad = sVK ;//手柄样式
//键盘初化
vPadTopX =32;
vPadTopY =88;

kUp = vk_up;
kLeft = vk_left;
kDown = vk_down;
kRight = vk_right;
kA = ord("X");
kB = ord("Z");
kL = ord("A");
kR = ord("C");

vUp =  virtual_key_add(vPadTopX,vPadTopY,16*3 ,16 ,kUp);
vLeft =  virtual_key_add(vPadTopX,vPadTopY,16 ,16*3 ,kLeft);
vDwon = virtual_key_add(vPadTopX,vPadTopY+32 ,16*3 ,16 ,kDown);
vRight =  virtual_key_add(vPadTopX+32 ,vPadTopY,16 ,16*3 ,kRight);

//var ABx,ABy,LRx,LRy;


vAx = vPadTopX+192-32;
vAy = vPadTopY;
vA = virtual_key_add(vAx,vAy,16*1.5,16*1.5,kA);

vBx = vPadTopX+192;
vBy = vPadTopY+16;
vB = virtual_key_add(vBx,vBy,16*1.5,16*1.5,kB);

vLx = vPadTopX;
vLy = vPadTopY-32;
vL = virtual_key_add(vLx,vLy,16*2,16,kL);

vRx = vPadTopX+192;
vRy = vPadTopY-32;
vR = virtual_key_add(vRx,vRy,16*2,16,kR);

