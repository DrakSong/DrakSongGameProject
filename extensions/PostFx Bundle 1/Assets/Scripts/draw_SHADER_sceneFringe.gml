var enabled = argument0;

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
    var shader    = shader_sceneFringe;
    var u_vRatio = shader_get_uniform(shader, "u_vRatio");
    var u_threshold = shader_get_uniform(shader, "u_threshold");

    shader_set(shader);
        shader_set_uniform_f(u_vRatio, vRatio);
        shader_set_uniform_f(u_threshold, 0.01);
        draw_surface(application_surface,0,0);
    shader_reset();
}