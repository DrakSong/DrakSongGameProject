///Lens flare by Esteban Devia

//draw_lensflare(x,y,Radius,SizeX,SizeY,RingSize,Transparency,GlowOpacity)



//Getting ready to start, Creating variables
var xx, yy, alpha, LightSize, Size_x, size_y, RingSize, Opacity, LensDir;
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

xx = argument0
yy = argument1


//The radius of the light
LightSize = argument2

//Size of the lens flare
Size_x = argument3
Size_y = argument4
RingSize = argument5
//This Opacity is how transparent is the light (as higher the number is, the transparent the light is)
Opacity = argument6
//A value between 0 and 1
GlowOpacity = argument7





//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


        //Set the blending mode to add
        draw_set_blend_mode(bm_add)
        
        //Getting the center if the screen
        var center_x, center_y;
        if view_enabled = 1 
                {
                    center_x = view_xview + (view_wview/2)
                    center_y = view_yview + (view_hview/2)
                        //This is for not drawing the light if the light is too far
                        if point_distance(xx,yy,center_x,center_y) > view_hview*1.5
                        {
                        draw_set_blend_mode(bm_normal)
                        exit;}
                } 
            else 
                {
                    center_x = room_width/2
                    center_y = room_height/2
                } 
                
                   
        //Getting the Direction
        LensDir = point_direction(xx,yy,center_x,center_y)
        
        
        
        //drawing the lens flares
        //Each line is an image
        
        
        
        //Setting the Alpha
        alpha = (1 - (point_distance(xx,yy,center_x, center_y)/LightSize))/      (Opacity)
        //The iris
        draw_sprite_ext(Siris,1,-xx+(center_x*2),-yy+(center_y*2),Size_x * point_distance(xx,yy,center_x,center_y)/((center_x*2)*.5), Size_y *point_distance(xx,yy,center_x,center_y)/((center_x*2)*.5),direction,draw_get_colour(),alpha)
        draw_sprite_ext(Siris,0,-((xx-center_x)*.5)+center_x,-((yy-center_y)*.5)+center_y,Size_x * point_distance(xx,yy,center_x,center_y)/((center_x*2)*2)  +.02 , Size_y *point_distance(xx,yy,center_x,center_y)/((center_x*2)*2)  +.02,direction,draw_get_colour(),alpha)
        draw_sprite_ext(Siris,0,-((xx-center_x)*.8)+center_x,-((yy-center_y)*.8)+center_y,Size_x *point_distance(xx,yy,center_x,center_y)/((center_x*2)*2)  +.06 ,Size_y *point_distance(xx,yy,center_x,center_y)/((center_x*2)*2)  +.06,direction,draw_get_colour(),alpha)
        draw_sprite_ext(Siris,0,-((xx-center_x)*.2)+center_x,-((yy-center_y)*.2)+center_y,Size_x *point_distance(xx,yy,center_x,center_y)/((center_x*2)*2)  +.15 ,Size_y *point_distance(xx,yy,center_x,center_y)/((center_x*2)*2)  +.15,direction,draw_get_colour(),alpha)
        
        draw_sprite_ext(Siris,0,((xx-center_x)*.2)+center_x,((yy-center_y)*.2)+center_y,Size_x *point_distance(xx,yy,center_x,center_y)/((center_x*2)*2)  +.007 ,Size_y *point_distance(xx,yy,center_x,center_y)/((center_x*2)*2)  +.007,direction,draw_get_colour(),alpha)
        draw_sprite_ext(Siris,1,((xx-center_x)*.5)+center_x,((yy-center_y)*.5)+center_y,Size_x *point_distance(xx,yy,center_x,center_y)/((center_x*2)*2)  +.02 ,Size_y *point_distance(xx,yy,center_x,center_y)/((center_x*2)*2)  +.02,direction,draw_get_colour(),alpha)
        
        
        draw_sprite_ext(Siris,2,-((xx-center_x)*1.6)+center_x,-((yy-center_y)*1.6)+center_y,Size_x *.3,Size_y *.3,direction,draw_get_colour(),alpha)
        draw_sprite_ext(Siris,2,-((xx-center_x)*2)+center_x,-((yy-center_y)*2)+center_y,Size_x *.4,Size_y *.4,direction,draw_get_colour(),alpha)
        draw_sprite_ext(Sglow,0,((xx-center_x)*.4)+center_x,((yy-center_y)*.4)+center_y,Size_x *.4,Size_y *.4,direction,draw_get_colour(),alpha)
        
        //The ring
        draw_sprite_ext(Sring,0,center_x,center_y,RingSize *point_distance(center_x,center_y,xx,yy)/(view_wview/2),RingSize *point_distance(center_x,center_y,xx,yy)/(view_wview/2) ,LensDir,-1,alpha)
        
        //The glow
        draw_sprite_ext(Sglow,0,xx,yy,Size_x *1,Size_y *1,0,draw_get_colour(),GlowOpacity)
        
        
        //Blendingmode to Normal again...
        draw_set_blend_mode(bm_normal)
