///vstick_step(vstick_id)
//Handles the virtual joystick's logic. To be placed in the Step or Begin Step event. (Begin Step recommended)

vstick[argument0,15]=0;
vstick[argument0,16]=0;

if vstick[argument0,5]
{
    for(i=0;i<=4;i++)
    {
        if ((device_mouse_check_button_pressed(i,mb_left) or device_mouse_check_button_pressed(i,mb_right)) and point_distance(vstick[argument0,3],vstick[argument0,4],device_mouse_x_to_gui(i),device_mouse_y_to_gui(i))<vstick[argument0,2])
        {
            vstick[argument0,6]=true;
            vstick[argument0,7]=i;
            vstick[argument0,15]=1; //vstick_check_pressed
            break;
        }
    }
    if (vstick[argument0,6]==true)
    {
        vstick[argument0,8]=degtorad(point_direction(vstick[argument0,3],vstick[argument0,4],device_mouse_x_to_gui(vstick[argument0,7]),device_mouse_y_to_gui(vstick[argument0,7])));
        vstick[argument0,0]=cos(vstick[argument0,8])*min(point_distance(vstick[argument0,3],vstick[argument0,4],device_mouse_x_to_gui(vstick[argument0,7]),device_mouse_y_to_gui(vstick[argument0,7])),vstick[argument0,2])/vstick[argument0,2];
        vstick[argument0,1]=-sin(vstick[argument0,8])*min(point_distance(vstick[argument0,3],vstick[argument0,4],device_mouse_x_to_gui(vstick[argument0,7]),device_mouse_y_to_gui(vstick[argument0,7])),vstick[argument0,2])/vstick[argument0,2];
        vstick[argument0,11]=vstick[argument0,0];
        vstick[argument0,12]=vstick[argument0,1];
        
        if vstick[argument0,10]{ //mapping
            var xunscaled,yunscaled;
            if (vstick[argument0,8]<=pi/4 or vstick[argument0,8]>=7*pi/4)
            {
                xunscaled=1;
                yunscaled=-tan(vstick[argument0,8]);
            } 
            if (vstick[argument0,8]>=pi/4 and vstick[argument0,8]<=3*pi/4)
            {
                xunscaled=1/tan(vstick[argument0,8]);
                yunscaled=-1;
            }
            if (vstick[argument0,8]>=3*pi/4 and vstick[argument0,8]<=5*pi/4)
            {
                xunscaled=-1;
                yunscaled=tan(vstick[argument0,8]);
            }
            if (vstick[argument0,8]>=5*pi/4 and vstick[argument0,8]<=7*pi/4)
            {
                xunscaled=-1/tan(vstick[argument0,8]);
                yunscaled=1;
            }
            vstick[argument0,0]=xunscaled*point_distance(0,0,vstick[argument0,11],vstick[argument0,12]);
            vstick[argument0,1]=yunscaled*point_distance(0,0,vstick[argument0,11],vstick[argument0,12]);
        }
        
        if (device_mouse_check_button_released(vstick[argument0,7],mb_left) or device_mouse_check_button_released(vstick[argument0,7],mb_right))
        {
            vstick[argument0,0]=0;
            vstick[argument0,1]=0;
            vstick[argument0,6]=false;
            vstick[argument0,7]=-1;
            vstick[argument0,11]=0;
            vstick[argument0,12]=0;
            vstick[argument0,16]=1; //vstick_check_released
        }
    }
} else {
    vstick[argument0,0]=0;
    vstick[argument0,1]=0;
    vstick[argument0,6]=false;
    vstick[argument0,7]=-1;
    vstick[argument0,11]=0;
    vstick[argument0,12]=0;
}
