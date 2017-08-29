/// @description Insert description here
// You can write your code in this editor

draw_set_font(Font)
draw_set_alpha(1)
draw_set_color(c_white)
draw_text(1100,0,"FPS"+string(fps));


var Ht ;
for (b=0; b<ds_grid_height(global.Map); b+=1)
{
    for (a=0; a<ds_grid_width(global.Map); a+=1)
{
    Ht[a,b]=ds_grid_get(global.Map,a,b)
	draw_text(0+32*a,0+32*b,Ht[a,b])
};


};




live_call("draw");
chat_draw();


