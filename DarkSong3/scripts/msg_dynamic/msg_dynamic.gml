//Sets drawing offset to the middle top of the sprite
var XX = argument1
var YY = argument2
var xm = (sprite_width/2) - sprite_xoffset;
var ym = -sprite_yoffset;

if (!variable_instance_exists(id, "char")) char = 0;
//This is the speed at which the text is drawn. You may change it:
var text_speed = 0.25;
draw_set_font(fWindow16 )
var msg_org = argument0;
var msg = string_copy(msg_org, 1, min(floor(char + text_speed), string_length(msg_org)));
//The 200 there is the maximum width the text box can have before wrapping the text to the next line:
var max_width = min(string_width(msg_org), 200);
var max_height = string_height_ext(msg, -1, max_width);

//Surface = surface_create(max_width,max_height);
//surface_set_target(Surface)
var X = XX//max_width/2;
var Y = YY// max_height;
//draw textbox
//top left corner
draw_sprite_part(spr_msg_grid, 0, 0, 0, 16, 16, (X + xm) - ((max_width/2)+16), (Y + ym) - (max_height + 32));
//top right corner
draw_sprite_part(spr_msg_grid, 0, 32, 0, 16, 16, (X + xm) + (max_width/2), (Y + ym) - (max_height + 32));
//top part
draw_sprite_part_ext(spr_msg_grid, 0, 16, 0, 16, 16, (X + xm) - (max_width/2), (Y + ym) - (max_height + 32), max_width/16, 1, c_white, 1);
//bottom left corner
draw_sprite_part(spr_msg_grid, 0, 0, 32, 16, 16, (X + xm) - ((max_width/2)+16), (Y + ym) - 16);
//left part
draw_sprite_part_ext(spr_msg_grid, 0, 0, 16, 16, 16, (X + xm) - ((max_width/2)+16), (Y + ym) - (max_height + 16), 1, max_height/16, c_white, 1);
//bottom right corner
draw_sprite_part(spr_msg_grid, 0, 32, 32, 16, 16, (X + xm) + (max_width/2), (Y + ym) - 16);
//right part
draw_sprite_part_ext(spr_msg_grid, 0, 32, 16, 16, 16, (X + xm) + (max_width/2), (Y + ym) - (max_height + 16), 1, max_height/16, c_white, 1);
//bottom part
draw_sprite_part_ext(spr_msg_grid, 0, 16, 32, 16, 16, (X + xm) - (max_width/2), (Y + ym) - (16), max_width/16, 1, c_white, 1);
//center part
draw_sprite_part_ext(spr_msg_grid, 0, 16, 16, 16, 16, (X + xm) - (max_width/2), (Y + ym) - (max_height + 16), max_width/16, max_height/16, c_white, 1);
//arrow
draw_sprite(spr_msg_arrow, 0, (X + xm), (Y + ym));
//text

draw_text_ext(((X + xm) - (max_width/2)),( (Y + ym) - (max_height + 16)), msg, -1, max_width);
//other
char += text_speed;
//surface_reset_target()

//draw_surface_ext(Surface,XX,YY,1/3,1/3,0,c_white,1)

//surface_free(Surface)
