/// @description 在这里插入描述
// 你可以在这个编辑器中写入代码

///Update node count
if nodes != array_length_1d(ypos) {
 ypos = 0;
 vspd = 0;
 for(var i=nodes;i>0;i--){
  ypos[i-1] = 0;
  vspd[i-1] = 0;
 }
}