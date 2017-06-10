
event_inherited();

/////// VOLITILE VARIABLES  ////////
/// (variables you can change in the children objects)
/// These are just set so you can see em
size = 1;  scale = 1.25;
xscale = 1;
yscale = 1;
color = c_white;
font = global.fonts[global.fontNum];
text = " "; text2 = " ";
depth = -100; //Make sure the depth is lower than your Controllers
              // So that the black background doesnt cover your buttons!

halign      = fa_center;
valign      = fa_center;



image_xscale = scale;
image_yscale = scale;

mask_index = sButtonMask_C;


