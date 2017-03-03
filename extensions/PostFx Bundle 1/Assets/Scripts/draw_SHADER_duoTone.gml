var enabled = argument0;

//ANIMATION
/*
    ideally this should be moved out the draw event
    for better control...
*/
var timeMult = 0.0025; //make the animation slower or faster...
var time = current_time * timeMult;
var oscillatorValue = sin(time);
var oscillatorValueAbs = abs(sin(time));

//SHADER SETUP
if enabled = true
{
    // Display setup ---------------------------------------------------------------------------
    display_set_gui_size(room_width, room_height);

    if os_type == os_android
    {     
        vRatio = display_get_gui_width() / display_get_gui_height(); //distort the sampler uvs according to the screen ratio in the mobile devices...
    }else{
        vRatio = 1.0;
    }
    
    // Samplers / Textures ---------------------------------------------------------------------
    
    // Shader setup ----------------------------------------------------------------------------
    var shader   = shader_duoTone;
    var u_vRatio = shader_get_uniform(shader, "u_vRatio");
    var u_colorA = shader_get_uniform(shader, "u_colorA");
    var u_colorB = shader_get_uniform(shader, "u_colorB");
    
    var u_colorA_arr; //color A (RGB) - dark areas
    u_colorA_arr[0] = 0.1;
    u_colorA_arr[1] = 0.2;
    u_colorA_arr[2] = 0.35;
    
    var u_colorB_arr; //color B (RGB) - hi-lights
    u_colorB_arr[0] = 1.0;
    u_colorB_arr[1] = 0.9;
    u_colorB_arr[2] = 0.1;

    shader_set(shader);
        shader_set_uniform_f(u_vRatio, vRatio);
        shader_set_uniform_f(u_colorA, u_colorA_arr[0],u_colorA_arr[1],u_colorA_arr[2]);
        shader_set_uniform_f(u_colorB, u_colorB_arr[0],u_colorB_arr[1],u_colorB_arr[2]);
        draw_surface(application_surface,0,0);
    shader_reset();
}