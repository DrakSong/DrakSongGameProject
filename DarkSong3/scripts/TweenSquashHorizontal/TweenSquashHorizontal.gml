/// @description TweenSquashRepeat();
/// @function TweenSquashRepeat


xscale = Step(xscale,1,0.015* scale);
yscale = Step(yscale,1,0.015* scale);
if (xscale == scale){
xscale = 1.15*scale;
yscale = 0.85*scale;
}
    
