
///////// GENERAL VARIABLES /////////
/// Initialize LE variables 
xx = x; // Draw the text w/o changing the X/Y values! (aka Dummy X/Y variables) 
yy = y;
alpha = 1;

///////// TWEEEEEEENING /////////

 // Scale Direction 
dir = 1;
xscale = 1;
yscale = 1;

// XY Direction
Yoff = 1; Xoff = 1; 
scaleDir = 1; scaleDir2 = 1; // LOL I named these wrong.. Supposed to be OffDir and OffDir2 
ang = 0;
acel = 0;
//vx = 0; vy = 0; //xy shift speed


//////// BUTTON STATES /////////// 
none        = 0;
mouseOver   = 1; // mouse X/Y over collision mask
mouseLeft   = 2; // mouseLeftButton is pressed
mouseLeftP  = 3;
mouseLeftR  = 4; // mouseLeftReleased 
mouse       = none;

mouseOverTrigger  = false; // not used for now
mouseLeftP_Trigger = false;
active      = false;

 
font = global.fonts[global.fontNum]; 


///////  VOLATILE VARIABLES  ///////
// Variables that can be individually changed ///
// Specific Variables ///

size = 1; /// not used 
scale = 1; // Overal Scale

image_xscale = size;
image_yscale = size;

color = c_white;
text = " ";
snd = false;
pos = 0; //position in ds_list inside the controller



