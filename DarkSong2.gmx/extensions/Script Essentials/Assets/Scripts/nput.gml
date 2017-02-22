///nput(Key,Pressed)
//Call this in any event where you want to check for a button press/hold/release.
//Nput is created by Andrew McCluskey (nalgames.com) 

var InputK, InputG;

for( var InputI=0;InputI<=3;InputI+=1 )
{
    InputK[InputI]=-1; //Keyboard
    InputG[InputI]=-1; //Gamepad
}

switch( argument0 )
{
    case K_LEFT:
        InputK[0]=vk_left;
        InputG[0]=gp_padl;
        InputG[3]=IX_LEFT;
        break;
    case K_RIGHT:
        InputK[0]=vk_right;
        InputG[0]=gp_padr;
        InputG[3]=IX_RIGHT;
        break;
    case K_UP:
        InputK[0]=vk_up;
        InputG[0]=gp_padu;
        InputG[3]=IX_UP;
        break;
    case K_DOWN:
        InputK[0]=vk_down;
        InputG[0]=gp_padd;
        InputG[3]=IX_DOWN;
        break;
    case K_SELECT:
        InputK[0]=vk_space;
        InputK[1]=vk_enter;
        InputK[2]=ord("Z");
        InputG[0]=gp_face1;
        InputG[1]=gp_start;
        break;
    case K_BACK:
        InputK[0]=vk_backspace;
        InputK[1]=vk_escape;
        InputG[0]=gp_face2;
        break;
    case K_JUMP:
        InputK[0]=vk_up;
        InputK[1]=vk_space;
        InputK[2]=ord("Z");
        InputG[0]=gp_face1;
        break;
}

for( var InputI=0;InputI<3;InputI+=1 )
{
    switch( argument1 )
    {
        case P_PRESSED:
            if( InputK[InputI]!=-1 && keyboard_check_pressed( InputK[InputI]) ) return true;
            if( InputG[InputI]!=-1 && gamepad_button_check_pressed( 0,InputG[InputI]) ) return true;
            if( global.InputRptVal[argument0]==0 ) return true;
            break;
        case P_HELD:
            if( InputK[InputI]!=-1 && keyboard_check( InputK[InputI]) ) return true;
            if( InputG[InputI]!=-1 && gamepad_button_check( 0,InputG[InputI]) ) return true;
            break;
        case P_RELEASED:
            if( InputK[InputI]!=-1 && keyboard_check_released( InputK[InputI]) ) return true;
            if( InputG[InputI]!=-1 && gamepad_button_check_released( 0,InputG[InputI]) ) return true;
            break;        
    }
}

///Controller analogue stick
if( InputG[3]>-1 )
{
    var drn,neg;
    
    switch(InputG[3])
    {
        case IX_LEFT : drn=gp_axislh; neg=-1; break;
        case IX_RIGHT: drn=gp_axislh; neg= 1; break;
        case IX_UP   : drn=gp_axislv; neg=-1; break;
        case IX_DOWN : drn=gp_axislv; neg= 1; break;
        default      : return false;    
    }
    
    if( clamp(gamepad_axis_value(0,drn),0.7*neg,neg)==gamepad_axis_value(0,drn) )
    {
        if( argument1==P_PRESSED && global.InputRptVal[InputG[3]-1000]==global.InputRptSet[InputG[3]-1000] )
        {
            return true;
        }
        if( argument1==P_HELD )
        {
            return true;
        }    
    }   
}

return false;
