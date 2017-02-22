///draw_text_shadow(x,y,str,shadowdir,shadowdis,shadowcol,shadowfid)
//Created by Andrew McCluskey http://nalgames.com/
//x,y: Coordinates to draw
//str: String to draw
//shadowdir: Direction shadow occurs
//shadowdis: Distance shadow occurs
//shadowcol: Colour of shadow (main text draws with regular set colour)
//shadowfidelity: For solid shadows (3D). For drop shadows just set to 1 - higher, go for 5, 10 or whatever

var dts_dcol=draw_get_colour();

draw_set_color(argument5);

for(var dts_i=1; dts_i>0; dts_i-=1/argument6)
{
    draw_text(argument0+lengthdir_x(lerp(0,argument4,dts_i),argument3),argument1+lengthdir_y(lerp(0,argument4,dts_i),argument3),argument2);
}

draw_set_color(dts_dcol);

draw_text(argument0,argument1,argument2);
