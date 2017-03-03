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
    waterReflection_map0 = smp_waterNormal;
    
    // Shader setup ----------------------------------------------------------------------------
    var shader    = shader_waterReflection;
    var u_vRatio  = shader_get_uniform(shader, "u_vRatio");
    var u_amplitude = shader_get_uniform(shader, "u_amplitude"); 
    var u_distAmount = shader_get_uniform(shader, "u_distAmount");
    var u_waterColor = shader_get_uniform(shader, "u_waterColor");
    var u_waterLevel = shader_get_uniform(shader, "u_waterLevel");
    var sampler0  = shader_get_sampler_index(shader, "sampler0")
    var texture0  = background_get_texture(waterReflection_map0);
    
    var amp = 0.005 * oscillatorValue;
    var dist = 0.05;
    var level = 0.84;
    
    var u_waterColor_arr;
    u_waterColor_arr[0] = 0.3;
    u_waterColor_arr[1] = 0.5;
    u_waterColor_arr[2] = 0.6;
    
    shader_set(shader);
        shader_set_uniform_f(u_vRatio, vRatio);
        shader_set_uniform_f(u_amplitude, amp);
        shader_set_uniform_f(u_distAmount, dist);
        shader_set_uniform_f(u_waterLevel, level);
        shader_set_uniform_f(u_waterColor, u_waterColor_arr[0],u_waterColor_arr[1],u_waterColor_arr[2]);
        texture_set_stage(sampler0,texture0);
        draw_surface(application_surface,0,0);
    shader_reset();
}