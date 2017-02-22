///set_best_aa(enablevsync)
//Sets best possible antialiasing value.

var aa=8;
if( display_aa<8 ) aa=4;
if( display_aa<4 ) aa=2;
display_reset(aa,argument0);
