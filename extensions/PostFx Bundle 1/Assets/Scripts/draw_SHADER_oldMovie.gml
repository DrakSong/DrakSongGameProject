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
    oldMovie_map0 = smp_dirt;
    oldMovie_map1 = smp_filmVignet;
    
    // Shader setup ----------------------------------------------------------------------------
    var shader    = shader_oldMovie;
    var u_vRatio = shader_get_uniform(shader, "u_vRatio");
    var u_movieColor = shader_get_uniform(shader, "u_movieColor");
    var u_time = shader_get_uniform(shader, "u_time");
    var u_speedX = shader_get_uniform(shader, "u_speedX");
    var u_speedY = shader_get_uniform(shader, "u_speedY");
    var sampler0  = shader_get_sampler_index(shader, "sampler0");
    var texture0  = background_get_texture(oldMovie_map0);
    var sampler1  = shader_get_sampler_index(shader, "sampler1");
    var texture1  = background_get_texture(oldMovie_map1);
    
    var u_movieColor_arr;
    u_movieColor_arr[0] = 1.0;
    u_movieColor_arr[1] = 0.9;
    u_movieColor_arr[2] = 0.75;

    var speedX = 0.05;
    var speedY = 1.1;
    
    shader_set(shader);
        shader_set_uniform_f(u_vRatio, vRatio);
        shader_set_uniform_f(u_time, time);
        shader_set_uniform_f(u_speedX, speedX);
        shader_set_uniform_f(u_speedY, speedY);
        shader_set_uniform_f(u_movieColor, u_movieColor_arr[0],u_movieColor_arr[1],u_movieColor_arr[2]);
        texture_set_stage(sampler0,texture0);
        texture_set_stage(sampler1,texture1);
        texture_set_repeat_ext(sampler0, true);
        draw_surface(application_surface,0,0);
    shader_reset();
}