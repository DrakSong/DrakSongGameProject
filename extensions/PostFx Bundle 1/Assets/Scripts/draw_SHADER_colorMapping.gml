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
    colorMapping_map0 = smp_colorMapping;
    
    // Shader setup ----------------------------------------------------------------------------
    var shader    = shader_colorMapping;
    var u_vRatio = shader_get_uniform(shader, "u_vRatio");
    var sampler0  = shader_get_sampler_index(shader, "sampler0");
    var texture0  = background_get_texture(colorMapping_map0);
    
    shader_set(shader);
        shader_set_uniform_f(u_vRatio, vRatio);
        texture_set_stage(sampler0,texture0);
        texture_set_repeat_ext(sampler0, false);
        draw_surface(application_surface,0,0);
    shader_reset(); 
}