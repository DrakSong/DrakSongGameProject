/// @description  draw_text_custom(x,y,string,alpha)
/// @function  draw_text_custom
/// @param x
/// @param y
/// @param string
/// @param alpha

// Script by Yan Hülsebusch aka Chinafreak (Hule Studios)
// 31.07.2014
// return: V as array V
// array[0] = string without commands
// array[1] = string_width
// array[2] = string_height

/*
////////////////////////DESCRIPTION///////////////////////
Each command can be used only once, as example:

//"[$=scale(0.5,0.5)][$=angle(45)] Lorem ipsum dolor sit amet"//

The effect work only [$=angle(45)], you can't use two or more effect.
If you swapping "scale" and "angle", then "scale" will work and "angle" not.
BUT there are some exceptions, as example:

* [$=a(ALPHA VALUE)]
* [$=font(FONT VALUE)] 
* [$=COLOR VALUE] 

This works with other commands multiple. As Example:
//"[$=c_red] [$=size(2,2)] I'LL KILL YOU"//

But it don't work, if you use:
//"[$=size(2,2)] [$=c_red] I'LL KILL YOU"//

The text will be draw as red, but it won't be resized.


If you want to break commands, just use [$=/] 

         //INFO of [$=/] break commands//
This don't work on font, because there is no draw_get_font();, 
it's planned on future as feature on Game Maker: Studio. 
Then I can update this script again.
If you want to back default font, just
use [$=font(yourdefaultfont)]

If you want a rotating text, just use:
draw_text_custom(25,200,Hello [$=angle("+string(direction)+")]Woororororooolld[$=/].

//////////////////////COMMANDS LIST///////////////////////
//Change color of text: [$=COLOR VALUE]
    Example:
        [$=c_green] Lorem ipsum dolor sit amet
        [$=rgb(255,16,33)] Lorem ipsum dolor sit amet
        [$=make_color_rgb(100,255,100)] Lorem ipsum dolor sit amet
        [$=hsv(128,5,167)] Lorem ipsum dolor sit amet
        [$=make_color_hsv(125,213,24)] Lorem ipsum dolor sit amet
        [$=merge_color(c_green,c_blue,0.5)] Lorem ipsum dolor sit amet
    
//Change font of text: [$=font(FONT)]
    Example:
        [$=font(fnt_8bit)] Lorem ipsum dolor sit amet
        [$=font(fnt_8bit_bold)] Lorem ipsum dolor sit amet

//Change angle of a text: [$=angle(digits)]
    Example:
        [$=angle(90)] Lorem ipsum dolor sit amet
        
//Underline: [$=u(y,width,color,alpha)]
    Example:
        [$=u(5,10,c_white,1)] Lorem ipsum dolor sit amet

//Change position of a text: [$=pos(x,y)]
    Example:
        [$=pos(0,100)] Lorem ipsum dolor sit amet

//Change scale of a text: [$=scale(xscale,yscale)]
    Example:
        [$=scale(2,2)] Lorem ipsum dolor sit amet
//Change alpha value of a text: [$=a(value)]
    Example:
        [$=a(0.5)] Lorem ipsum dolor sit amet
        
//Put Sprite in text: [$=img(sprite,image_index)] or [$=img_ext(sprite,image_index, x, y, xscale, yscale, rot, alpha)]
    Example:
        [$=img(spr_ammo,0)] Lorem ipsum dolor sit amet
        [$=c_red][$=img_ext(spr_heart,2,5,10,1.5,1.5,15,1)] Lorem ipsum dolor sit amet (it change the blend of sprite to red)
 
//Random/Secret of Text: [$=secret(letters)]
    Example: 
        var letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
        Hello [$=secret("+letters+")]John[$=/]!    
        
//Mark Text: [$=mark(color,alpha)]
    Example:
        [$=mark(c_yellow, 0.3)] Lorem ipsum dolor sit amet
        
        
//Stop all commands of a text: [$=/] (don't work on font commands)
    Example:
        Hello [$=angle(90)]World[$=/], this is john.
*/

var _x,_y,_str,_sep,_w,_xscale,_yscale,_angle,_color,_alpha, _precol, _prealpha, _strab, v1,v2,v3, d_color;

_x = argument[0]
_y = argument[1]
_str[0] = argument[2]
_xscale = 1
_yscale = 1
_alpha = argument[3]

_precol = draw_get_color()
_prealpha = draw_get_alpha()

_strab = _str[0]
_str[0] = ""
_str[1] = 0
_str[2] = 0

v1 = 0
v2 = 0
v3 = 0
d_color = c_white

var count;
count = string_count("[$=",_strab) + string_count("#",_strab)

var str_part, str_command, str_length, str_check;
str_check = false
str_length = 0
str_height = 0
str_command[0] = _precol
str_part[0] = ""

var img_h;
img_h = 0

draw_set_alpha(_alpha)
//for (i=1; i<count+1; i+=1)
i = 0
while(string_length(_strab) > 0)
{
       var angle, _posx, _posy, _xs, _ys, new_string, secret_hide, mark, m_c, m_a, m_prea, m_prec;
       angle = 0
       _posx = 0
       _posy = 0
       _xs = 1
       _ys = 1
       new_string = ""
       secret_hide = ""
       mark = false
       m_c = 0
       m_a = 0
       m_prea = 0
       m_prec = 0
       
       if string_copy(_strab,0,3) = "[$="{
            str_command[i] = string_copy(_strab,string_pos("[$=",_strab)+3,string_pos("]",_strab)-string_pos("[$=",_strab)-3)
            _strab = string_replace(_strab,string_copy(_strab,0,string_pos("]",_strab)),"")
            str_check = false
       }else{
          if str_check{
            str_check = false
            str_command[i] = str_command[i-1]
          }else{
            str_command[i] = string(_precol)
            //count++
          }
       }
      
       var _substr;
       if string_copy(_strab,string_pos("[$=",_strab),3) = "[$="{ 
          _substr = string_copy(_strab,0,string_pos("[$=",_strab)-1)
       }else{
          _substr = _strab
       }
       if string_copy(_substr,string_pos("#",_substr),1) = "#"{
          str_part[i] = string_copy(_strab,0,string_pos("#",_strab)-1)
          str_check = true
          _strab = string_replace(_strab,string_copy(_strab,0,string_pos("#",_strab)),"")
                
       }else{
       
       if string_copy(_strab,string_pos("[$=",_strab),3) = "[$="{
          str_part[i] = string_copy(_strab,0,string_pos("[$=",_strab)-1)
       }else{
          str_part[i] = _strab
          _strab = ""
       }

       _strab = string_replace(_strab,string_copy(_strab,0,string_pos("[$=",_strab)-1),"")
       
       }
       
                        //*Commands!*//
       if string_copy(str_command[i],0,4) = "rgb(" or string_copy(str_command[i],0,15) = "make_color_rgb("{
            var r,g,b;
            str_command[i] = string_replace(str_command[i],"rgb(","")
            str_command[i] = string_replace(str_command[i],"make_color_rgb(","")
            str_command[i] = string_replace(str_command[i],")","")
            r = string_extract(str_command[i],",",0)
            g = string_extract(str_command[i],",",1)
            b = string_extract(str_command[i],",",2)
            d_color = make_color_rgb(real(r),real(g),real(b))
       }else if string_copy(str_command[i],0,4) = "hsv(" or string_copy(str_command[i],0,15) = "make_color_hsv("{
            var h,s,v;
            str_command[i] = string_replace(str_command[i],"hsv(","")
            str_command[i] = string_replace(str_command[i],"make_color_hsv(","")
            str_command[i] = string_replace(str_command[i],")","")
            h = string_extract(str_command[i],",",0)
            s = string_extract(str_command[i],",",1)
            v = string_extract(str_command[i],",",2)
            d_color = make_color_hsv(real(h),real(s),real(v))
       }else if string_copy(str_command[i],0,12) = "merge_color("{
            var c1,c2,v;
            str_command[i] = string_replace(str_command[i],"merge_color(","")
            str_command[i] = string_replace(str_command[i],")","")
            c1 = string_extract(str_command[i],",",0)
            c2 = string_extract(str_command[i],",",1)
            v = string_extract(str_command[i],",",2)
            if string_digits(c1) != c1{
                c1 = asset_get_index(c1)
            }else if string_digits(c2) != c2{
                c2 = asset_get_index(c2)
            }
            d_color = merge_color(real(c1),real(c2),real(v))
       }else if string_copy(str_command[i],0,2) = "u("{
            var uy, uwidth, uc, ua, uprec, uprea;
            str_command[i] = string_replace(str_command[i],"u(","")
            str_command[i] = string_replace(str_command[i],")","")
            uy = real(string_extract(str_command[i],",",0))
            uwidth = real(string_extract(str_command[i],",",1))
            uc = string_extract(str_command[i],",",2)
            ua = real(string_extract(str_command[i],",",3))
            uprec = draw_get_color();
            uprea = draw_get_alpha();
            
            
            if (string_digits(m_c) != string(m_c)){
                uc = real(asset_get_index(uc))
            }else{
                uc = real(uc)
            }
            draw_set_color(uc)
            draw_set_alpha(ua)
            draw_line_width(_x+str_length,_y+str_height+string_height(string_hash_to_newline(str_part[i]))+uy,_x+str_length+string_width(string_hash_to_newline(str_part[i])),_y+str_height+string_height(string_hash_to_newline(str_part[i]))+uy,uwidth)
            draw_set_color(uprec);
            draw_set_alpha(uprea);
       }else if string_copy(str_command[i],0,5) = "font("{
            str_command[i] = string_replace(str_command[i],"font(","")
            str_command[i] = string_replace(str_command[i],")","")
            draw_set_font(asset_get_index(str_command[i]))    
       }else if string_copy(str_command[i],0,6) = "angle("{
            str_command[i] = string_replace(str_command[i],"angle(","")
            str_command[i] = string_replace(str_command[i],")","")
            angle = real(str_command[i])    
       }else if string_copy(str_command[i],0,4) = "pos("{
            str_command[i] = string_replace(str_command[i],"pos(","")
            str_command[i] = string_replace(str_command[i],")","")
            _posx = real(string_extract(str_command[i],",",0))
            _posy = real(string_extract(str_command[i],",",1))
       }else if string_copy(str_command[i],0,6) = "scale("{
            str_command[i] = string_replace(str_command[i],"scale(","")
            str_command[i] = string_replace(str_command[i],")","")
            _xs = real(string_extract(str_command[i],",",0))
            _ys = real(string_extract(str_command[i],",",1))
       }else if string_copy(str_command[i],0,2) = "a("{
            str_command[i] = string_replace(str_command[i],"a(","")
            str_command[i] = string_replace(str_command[i],")","")
            draw_set_alpha(real(str_command[i])*_alpha)
       }else if string_copy(str_command[i],0,4) = "img("{
            str_command[i] = string_replace(str_command[i],"img(","")
            str_command[i] = string_replace(str_command[i],")","")
            var img, index,img_height, img_width;
            img = asset_get_index(string_extract(str_command[i],",",0))
            index = real(string_extract(str_command[i],",",1))
            img_width = sprite_get_width(img)
            img_height = sprite_get_height(img)
            if img_h < img_height+4{
               img_h = img_height+4
            }
            draw_sprite(img,index,_x+str_length,_y+str_height-img_height/2+string_height(string_hash_to_newline(str_part[i]))/2)     
            str_length += img_width 
       }else if string_copy(str_command[i],0,8) = "img_ext("{
            str_command[i] = string_replace(str_command[i],"img_ext(","")
            str_command[i] = string_replace(str_command[i],")","")
            var img, index, img_height, img_width, img_x, img_y, img_xscale, img_yscale, img_rot, img_alp;
            img = asset_get_index(string_extract(str_command[i],",",0))
            index = real(string_extract(str_command[i],",",1))
            img_x = real(string_extract(str_command[i],",",2))
            img_y = real(string_extract(str_command[i],",",3))
            img_xscale = real(string_extract(str_command[i],",",4))
            img_yscale = real(string_extract(str_command[i],",",5))
            img_rot = real(string_extract(str_command[i],",",6))
            img_alp = real(string_extract(str_command[i],",",7))
            img_width = sprite_get_width(img)
            img_height = sprite_get_height(img)
            if img_h < img_height+4{
               img_h = img_height+4
            }
            var img_xoff, img_yoff, img_xorg, img_yorg, img_rad;
            img_xoff = (img_width*img_xscale)/2
            img_yoff = (img_height*img_yscale)/2
            img_rad = degtorad(img_rot)
            img_xorg = cos(img_rad)*img_xoff + sin(img_rad)*img_yoff - img_xoff
            img_yorg = -sin(img_rad)*img_xoff + cos(img_rad)*img_yoff - img_yoff
            draw_sprite_ext(img,index,_x+img_x+str_length-img_xorg+img_width/2-((img_width/2)*img_xscale),_y+img_y+str_height-(img_height/2)+(string_height(string_hash_to_newline("ABCabc"))/2)-img_yorg+img_height/2-((img_height/2)*img_yscale),img_xscale,img_yscale,img_rot,draw_get_color(),img_alp)     
            str_length += (img_width*img_yscale)+img_x            
       }else if string_copy(str_command[i],0,3) = "/"{
            d_color = _precol
            draw_set_alpha(1*_alpha)
       }else if string_copy(str_command[i],0,7) = "secret("{
            str_command[i] = string_replace(str_command[i],"secret(","")
            str_command[i] = string_replace(str_command[i],")","")
            var secret_string = str_command[i];
            var new_length;
            new_length = string_length(str_part[i])
            secret_hide = str_part[i]
            str_part[i] = ""
            var k;
            for (k=0; k<new_length; k+=1)
            {
                new_string += string_copy(secret_string,irandom(string_length(secret_string)),1)
            };
 
       }else if string_copy(str_command[i],0,5) = "mark("{
            str_command[i] = string_replace(str_command[i],"mark(","")
            str_command[i] = string_replace(str_command[i],")","")
            mark = true

            m_c = string_extract(str_command[i],",",0)
            
            if (string_digits(m_c) != string(m_c)){
                m_c = real(asset_get_index(m_c))
            }else{
                m_c = real(m_c)
            }
            m_a = real(string_extract(str_command[i],",",1))
       }else{
            var constant;
            constant = (string_digits(str_command[i]) != str_command[i])
            if constant{
                d_color = real(asset_get_index(str_command[i]))
            }else{
                d_color= real(str_command[i])
            }
       }
       var xoffset, yoffset, xorg, yorg, rad;
       xoffset = string_width(string_hash_to_newline(str_part[i]))/2
       yoffset = string_height(string_hash_to_newline(str_part[i]))/2
       rad = degtorad(angle)
       xorg = cos(rad)*xoffset + sin(rad)*yoffset - xoffset - (string_width(string_hash_to_newline(str_part[i]))/2)+((string_width(string_hash_to_newline(str_part[i]))/2)*(_xscale*_xs))
       yorg = -sin(rad)*xoffset + cos(rad)*yoffset - yoffset - (string_height(string_hash_to_newline(str_part[i]))/2)+((string_height(string_hash_to_newline(str_part[i]))/2)*(_yscale*_ys))
       
       draw_set_color(d_color)
       draw_text_transformed(_x+_posx+str_length-xorg,_y+_posy+str_height-yorg,string_hash_to_newline(str_part[i]+new_string),_xscale*_xs,_yscale*_ys,angle)
       if mark{
            m_prea = draw_get_alpha();
            m_prec = draw_get_color();
            draw_set_alpha(m_a*_alpha);
            draw_set_color(m_c);
            draw_rectangle(_x+str_length,_y+str_height,_x+str_length+string_width(string_hash_to_newline(str_part[i])),_y+str_height+string_height(string_hash_to_newline(str_part[i])),false)
            draw_set_alpha(m_prea);
            draw_set_color(m_prec);
       }
       str_length += (string_width(string_hash_to_newline(str_part[i]))+string_width(string_hash_to_newline(string_repeat("A",string_length(secret_hide)))))
       _str[0] += str_part[i]+secret_hide
       if str_check{
          if _str[1] < string_width(string_hash_to_newline(_str[0])){
             _str[1] = string_width(string_hash_to_newline(_str[0]))
          }
          str_length = 0 
          if img_h > string_height(string_hash_to_newline("A")){
            str_height += img_h
            img_h = 0
          }else{
            str_height += string_height(string_hash_to_newline("A"))
            img_h = 0
          }
          _str[0] += "#"
       }
       i++       
};
if _str[1] < str_length{
   _str[1] = str_length
}
_str[2] = str_height+(string_height(string_hash_to_newline("A")))
draw_set_alpha(_prealpha)
draw_set_color(_precol)

return _str
