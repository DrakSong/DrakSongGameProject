/// @description controls_drawKeys(text);
/// @function controls_drawKeys
/// @param text
// Write the keyboard values out into strings


var txt = argument0;

switch(key)//string representation of special keys
{
    case vk_up:
        draw_text_transformed(x, y, string_hash_to_newline(txt + string(": UP ARROW")),xscale* scale,yscale* scale,1);
    break;
    
    case vk_down:
        draw_text_transformed(x, y, string_hash_to_newline(txt + string(": DOWN ARROW")),xscale* scale,yscale* scale,1);
    break;
    
    case vk_left:
    
        draw_text_transformed(x, y, string_hash_to_newline(txt + string(": LEFT ARROW")),xscale* scale,yscale* scale,1);
    break;
    
    case vk_right:
        draw_text_transformed(x, y, string_hash_to_newline(txt + string(": RIGHT ARROW")),xscale* scale,yscale* scale,1);
    break;
    
    case vk_space:
        draw_text_transformed(x, y, string_hash_to_newline(txt + string(": SPACEBAR")),xscale* scale,yscale* scale,1);
    break;
    
     case vk_shift:
        draw_text_transformed(x, y, string_hash_to_newline(txt + string(": SHIFT")),xscale* scale,yscale* scale,1);
    break;
    
     case vk_tab:
        draw_text_transformed(x, y, string_hash_to_newline(txt + string(": TAB")),xscale* scale,yscale* scale,1);
    break;
    
    case vk_control:
        draw_text_transformed(x, y, string_hash_to_newline(txt + string(": CTRL")),xscale* scale,yscale* scale,1);
    break;
    
    case vk_escape:
        draw_text_transformed(x, y, string_hash_to_newline(txt + string(": ESC")),xscale* scale,yscale* scale,1);
    break;
    
    case vk_enter:
        draw_text_transformed(x, y, string_hash_to_newline(txt + string(": ENTER")),xscale* scale,yscale* scale,1);
    break;
    //case vk_control:
        //draw_text(x, y, string("Ctrl"));
    //break;
    
    //etc for special keys

    default://every other non-special key is taken care of below
        draw_text_transformed(x, y, string_hash_to_newline(txt +": "+ string(chr((key)))),xscale* scale,yscale* scale, ang);
}
