/// @description  draw_text_custom(x,y,string,alpha)
/// @function  draw_text_custom
/// @param x
/// @param y
/// @param string
/// @param alpha

// Script by Yan Hülsebusch aka Chinafreak (Hule Studios)
// 31.07.2014
// return string without commands

// use [$='COLOR DIGITS'] to change color of text 
// Example:
/*
    [$="+string(c_white)+"]White text by constant variable!
    [$="+string(make_color_rgb(20,30,90))+"]Colored Text by make_color_rgb/hsv!
    [$=8388736]or colored text in digits!
*/

var _x,_y,_str,_sep,_w,_xscale,_yscale,_angle,_color,_alpha, _precol, _prealpha, _strab, v1,v2,v3, d_color;

_x = argument0
_y = argument1
_str = argument2
_xscale = 1
_yscale = 1
_alpha = argument3

_precol = draw_get_color()
_prealpha = draw_get_alpha()

_strab = _str
_str = ""

v1 = 0
v2 = 0
v3 = 0
d_color = c_white

var count;
count = string_count("[$=",_strab) + string_count("#",_strab)

var str_part, str_color, str_length, str_check;
str_check = false
str_length = 0
str_height = 0
str_color[0] = _precol
str_part[0] = ""

draw_set_alpha(_alpha)
//for (i=1; i<count+1; i+=1)
var i;
i = 0
while(string_length(_strab)>0)
{

        if string_copy(_strab,0,3) = "[$="{
            str_color[i] = string_copy(_strab,string_pos("[$=",_strab)+3,string_pos("]",_strab)-string_pos("[$=",_strab)-3)
            _strab = string_replace(_strab,string_copy(_strab,0,string_pos("]",_strab)),"")
            str_check = false
       }else{
          if str_check{
            str_check = false
            str_color[i] = str_color[i-1]
          }else{
            str_color[i] = string(_precol)
          }
       }
       /*
       if str_check{
          str_check = false
          str_color[i] = str_color[i-1]
       }else{
          str_color[i] = string_copy(_strab,string_pos("[$=",_strab)+3,string_pos("]",_strab)-string_pos("[$=",_strab)-3)
          _strab = string_replace(_strab,string_copy(_strab,0,string_pos("]",_strab)),"")
       }
       */
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
       //show_message(string(string_copy(str_color[i],0,2)))
       if string_copy(str_color[i],0,3) = "rgb" or string_copy(str_color[i],0,14) = "make_color_rgb"{
            str_color[i] = string_replace(str_color[i],"rgb(","")
            str_color[i] = string_replace(str_color[i],"make_color_rgb(","")
            str_color[i] = string_replace(str_color[i],")","")
            v1 = string_extract(str_color[i],",",0)
            v2 = string_extract(str_color[i],",",1)
            v3 = string_extract(str_color[i],",",2)
            d_color = make_color_rgb(real(v1),real(v2),real(v3))
       }else if string_copy(str_color[i],0,3) = "hsv" or string_copy(str_color[i],0,14) = "make_color_hsv"{
            str_color[i] = string_replace(str_color[i],"rgb(","")
            str_color[i] = string_replace(str_color[i],"make_color_rgb(","")
            str_color[i] = string_replace(str_color[i],")","")
            v1 = string_extract(str_color[i],",",0)
            v2 = string_extract(str_color[i],",",1)
            v3 = string_extract(str_color[i],",",2)
            d_color = make_color_hsv(real(v1),real(v2),real(v3))
       }else if string_copy(str_color[i],0,11) = "merge_color"{
            str_color[i] = string_replace(str_color[i],"merge_color(","")
            str_color[i] = string_replace(str_color[i],")","")
            v1 = string_extract(str_color[i],",",0)
            v2 = string_extract(str_color[i],",",1)
            v3 = string_extract(str_color[i],",",2)
            if string_digits(v1) != v1{
                v1 = asset_get_index(v1)
            }else if string_digits(v2) != v2{
                v2 = asset_get_index(v2)
            }
            d_color = merge_color(real(v1),real(v2),real(v3))
       }else if string_copy(str_color[i],0,1) = "u"{
            str_color[i] = string_replace(str_color[i],"u(","")
            str_color[i] = string_replace(str_color[i],")","")
            v1 = real(string_extract(str_color[i],",",0))
            v2 = real(string_extract(str_color[i],",",1))
            draw_line_width(_x+str_length,_y+str_height+string_height(string_hash_to_newline(str_part[i]))+v1,_x+str_length+string_width(string_hash_to_newline(str_part[i])),_y+str_height+string_height(string_hash_to_newline(str_part[i]))+v1,v2)
            
       }else{
            var constant;
            constant = (string_digits(str_color[i]) != str_color[i])
            
            if constant{
                d_color = real(asset_get_index(str_color[i]))
            }else{
                d_color= real(str_color[i])
            }
       }
       
       draw_set_color(d_color)
       draw_text_transformed(_x+str_length,_y+str_height,string_hash_to_newline(str_part[i]),_xscale,_yscale,0)
       str_length += string_width(string_hash_to_newline(str_part[i]))
       _str += str_part[i]
       if str_check{
          str_length = 0 
          str_height += string_height(string_hash_to_newline("A"))
       }       
i++
};

draw_set_alpha(_prealpha)
draw_set_color(_precol)

return _str

