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
    foreground_map0 = smp_foreground;

    // Shader setup ----------------------------------------------------------------------------
    var shader    = shader_foreground;
    var u_vRatio = shader_get_uniform(shader, "u_vRatio");
    var u_color = shader_get_uniform(shader, "u_color");
    var u_speed    = shader_get_uniform(shader, "u_speed");
    var u_scale = shader_get_uniform(shader, "u_scale");
    var u_time = shader_get_uniform(shader, "u_time")
    
    var sampler0  = shader_get_sampler_index(shader, "sampler0")
    var texture0  = background_get_texture(foreground_map0);
    
    var spe = 0.05;
    var scale = 0.5;
    
    var color_RGB;
    color_RGB[0] = 0.075;
    color_RGB[1] = 0.025;
    color_RGB[2] = 0.15;
    
    shader_set(shader);
        shader_set_uniform_f(u_vRatio, vRatio);
        shader_set_uniform_f(u_time, time);
        shader_set_uniform_f(u_color, color_RGB[0],color_RGB[1],color_RGB[2]);
        shader_set_uniform_f(u_speed, spe);
        shader_set_uniform_f(u_scale, scale);
        texture_set_stage(sampler0,texture0);
        draw_surface(application_surface,0,0);
    shader_reset();
}