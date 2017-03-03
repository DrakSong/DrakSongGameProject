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
    var vignette_map0 = smp_vignette;
    
    // Shader setup ----------------------------------------------------------------------------
    var shader    = shader_vignette;
    var u_vRatio = shader_get_uniform(shader, "u_vRatio");
    var sampler0  = shader_get_sampler_index(shader, "sampler0")
    var texture0  = background_get_texture(vignette_map0);
    
    shader_set(shader);
        shader_set_uniform_f(u_vRatio, vRatio);
        texture_set_stage(sampler0,texture0);
        draw_surface(application_surface,0,0);
    shader_reset();
}