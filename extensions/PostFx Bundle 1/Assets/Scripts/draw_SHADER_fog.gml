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
    fog_map0 = smp_fog;
    fog_map1 = smp_fogNormal;

    // Shader setup ----------------------------------------------------------------------------
    var shader    = shader_fog;
    var u_vRatio  = shader_get_uniform(shader, "u_vRatio");
    var u_speed = shader_get_uniform(shader, "u_speed");
    var u_time = shader_get_uniform(shader, "u_time");
    var u_fogColor = shader_get_uniform(shader, "u_fogColor");
    var u_fogScale = shader_get_uniform(shader, "u_fogScale");
    var u_distAmount = shader_get_uniform(shader, "u_distAmount");
    var sampler0  = shader_get_sampler_index(shader, "sampler0")
    var texture0  = background_get_texture(fog_map0);
    var sampler1  = shader_get_sampler_index(shader, "sampler1")
    var texture1  = background_get_texture(fog_map1);
    
    var spe = 0.025;
    var scale = 0.75;
    var dist = 0.05;
    
    var fogColor_RGB;
    fogColor_RGB[0] = 0.9;
    fogColor_RGB[1] = 1.0;
    fogColor_RGB[2] = 0.95;
    
    shader_set(shader);
        shader_set_uniform_f(u_vRatio, vRatio);
        shader_set_uniform_f(u_time, time);
        shader_set_uniform_f(u_speed, spe);
        shader_set_uniform_f(u_fogScale, scale);
        shader_set_uniform_f(u_distAmount, dist);
        shader_set_uniform_f(u_fogColor, fogColor_RGB[0],fogColor_RGB[1],fogColor_RGB[2]);
        texture_set_repeat_ext(sampler0, true);
        texture_set_repeat_ext(sampler1, true);
        texture_set_stage(sampler0,texture0);
        texture_set_stage(sampler1,texture1);
        draw_surface(application_surface,0,0);
    shader_reset();
}