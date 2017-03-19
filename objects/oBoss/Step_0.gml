/// @description 在这里插入描述
// 你可以在这个编辑器中写入代码

//execute_file("1.txt")
globalvar tmp;

if(keyboard_check(ord("Q"))){
i=0
tag=0
with(oB){instance_destroy()}
}

if(keyboard_check(ord("W"))){
tag=2
}

if(keyboard_check_pressed(ord("E"))){
i=0
tag=1
}

if(tag){

if(tag=1){
tmp[0]=i*5

for(n=0;n<3;n+=1){
tmp[1]=n*120
with(instance_create(x,y,oB)){
jiao_du=tmp[0]+tmp[1]
motion_add(jiao_du,0.8)
i=0
image_xscale=2
image_yscale=2
}
}

}
with(oB){
i+=1
image_angle+=5
if(i>120&&i<160){
motion_add(jiao_du,0.1)
}
if(i>180&&i<240){
motion_add(jiao_du+180-3,0.2)
}
if(i>60*4){
instance_destroy()
}
}
i+=1
}
//room_caption="fps:"+string(fps)+"|i:"+string(i)+"|obj:"+string(instance_count)