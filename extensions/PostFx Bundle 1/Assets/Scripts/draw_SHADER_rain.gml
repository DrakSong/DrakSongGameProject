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
    rain_map0 = smp_rain;

    // Shader setup ----------------------------------------------------------------------------
    var shader    = shader_rain;
    var u_vRatio  = shader_get_uniform(shader, "u_vRatio");
    var u_speed1 = shader_get_uniform(shader, "u_speed1");
    var u_speed2 = shader_get_uniform(shader, "u_speed2");
    var u_scale1 = shader_get_uniform(shader, "u_scale1");
    var u_scale2 = shader_get_uniform(shader, "u_scale2");
    var u_rain1alpha = shader_get_uniform(shader, "u_rain1alpha");
    var u_rain2alpha = shader_get_uniform(shader, "u_rain2alpha");
    var u_time = shader_get_uniform(shader, "u_time");
    var u_color = shader_get_uniform(shader, "u_color");
    var sampler0  = shader_get_sampler_index(shader, "sampler0")
    var texture0  = background_get_texture(rain_map0);
    
    //foreground layer
    var speed1_x = -0.2;
    var speed1_y = -0.5;
    var uvMulti1_x = 1.0;
    var uvMulti1_y = 1.0;
    var rain1alpha = 0.75;
    
    //background layer
    var speed2_x = -0.1;
    var speed2_y = -0.25;
    var uvMulti2_x = 2.0;
    var uvMulti2_y = 2.0;
    var rain2alpha = 0.35;
    
    var color_RGB;
    color_RGB[0] = 0.7;
    color_RGB[1] = 0.9;
    color_RGB[2] = 1.0;
    
    shader_set(shader);
        shader_set_uniform_f(u_vRatio, vRatio);
        shader_set_uniform_f(u_time, time);
        shader_set_uniform_f(u_speed1, speed1_x, speed1_y);
        shader_set_uniform_f(u_speed2, speed2_x, speed2_y);
        shader_set_uniform_f(u_scale1, uvMulti1_x, uvMulti1_y);
        shader_set_uniform_f(u_scale2, uvMulti2_x, uvMulti2_y);
        shader_set_uniform_f(u_rain1alpha, rain1alpha);
        shader_set_uniform_f(u_rain2alpha, rain2alpha);
        shader_set_uniform_f(u_color, color_RGB[0],color_RGB[1],color_RGB[2]);
        texture_set_repeat_ext(sampler0, true);
        texture_set_stage(sampler0,texture0);
        draw_surface(application_surface,0,0);
    shader_reset();
}