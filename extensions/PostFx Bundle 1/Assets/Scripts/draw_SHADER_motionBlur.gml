var enabled = argument0;

//ANIMATION
/*
    ideally this should be moved out the draw event
    for better control...
*/
var timeMult = 0.01; //make the animation slower or faster...
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
    var shader    = shader_motionBlur;
    var u_vRatio = shader_get_uniform(shader, "u_vRatio");
    var u_amplitude = shader_get_uniform(shader, "u_amplitude");
    var u_angle = shader_get_uniform(shader, "u_angle");
    
    var amplitude = 0.05;
    var angle = 3.14159265359; //set in radians ( pi = 180º)
    
    shader_set(shader);
        shader_set_uniform_f(u_vRatio, vRatio);
        shader_set_uniform_f(u_amplitude, amplitude);
        shader_set_uniform_f(u_angle, angle);
        draw_surface(application_surface,0,0);
    shader_reset();
}