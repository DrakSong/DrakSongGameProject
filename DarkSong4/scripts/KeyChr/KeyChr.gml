/// @description controls_drawKeys(text);
/// @function controls_drawKeys
/// @param text
// Write the keyboard values out into strings




switch(argument0)//string representation of special keys
{
    case vk_up:
       return "UP ARROW"
    break;
    
    case vk_down:
      return  "DOWN ARROW"
    break;
    
    case vk_left:
    
      return  "LEFT ARROW"
    break;
    
    case vk_right:
     return   "RIGHT ARROW"
    break;
    
    case vk_space:
   return  "SPACEBAR"
    break;
    
     case vk_shift:
    return   "SHIFT"
    break;
    
     case vk_tab:
      return  "TAB"
    break;
    
    case vk_control:
    return "CTRL"
    break;
    
    case vk_escape:
     return   "ESC"
    break;
    
    case vk_enter:
      return  "ENTER"
    break;
  
    default://every other non-special key is taken care of below
       return  (chr((argument0) ))
}

