/// @description      Exciting Shader Stuff!

if !keyboard_check(vk_enter) shader_set(shGameBoy);  // Activate Shader.


//  Apply Palette Parameters.  //
if (palette==1)                  // Palette 1 - Original. //
{
    shader_set_uniform_f(shader_get_uniform(shGameBoy,"u_color1"), 11, 25, 32);      //  Setting color 1
    shader_set_uniform_f(shader_get_uniform(shGameBoy,"u_color2"), 47, 105, 87);     //  Setting color 2
    shader_set_uniform_f(shader_get_uniform(shGameBoy,"u_color3"), 134, 194, 112);   //  Setting color 3
    shader_set_uniform_f(shader_get_uniform(shGameBoy,"u_color4"), 245, 250, 239);   //  Setting color 4
}

if (palette==2)                 // Palette 2 - Black and White. //
{
    shader_set_uniform_f(shader_get_uniform(shGameBoy,"u_color1"), 7, 7, 7);         //  Setting color 1
    shader_set_uniform_f(shader_get_uniform(shGameBoy,"u_color2"), 106, 106, 106);   //  Setting color 2
    shader_set_uniform_f(shader_get_uniform(shGameBoy,"u_color3"), 192, 192, 192);   //  Setting color 3
    shader_set_uniform_f(shader_get_uniform(shGameBoy,"u_color4"), 252, 252, 252);   //  Setting color 4
}

if (palette==3)                 // Palette 3 - Rose. //
{
    shader_set_uniform_f(shader_get_uniform(shGameBoy,"u_color1"), 87, 111, 93);     //  Setting color 1
    shader_set_uniform_f(shader_get_uniform(shGameBoy,"u_color2"), 229, 115, 158);   //  Setting color 2
    shader_set_uniform_f(shader_get_uniform(shGameBoy,"u_color3"), 253, 159, 167);   //  Setting color 3
    shader_set_uniform_f(shader_get_uniform(shGameBoy,"u_color4"), 252, 252, 252);   //  Setting color 4
}

if (palette==4)                 // Palette 4 - Roguelight by Daniel Linssen. //
{
    shader_set_uniform_f(shader_get_uniform(shGameBoy,"u_color1"), 53, 43, 49);      //  Setting color 1
    shader_set_uniform_f(shader_get_uniform(shGameBoy,"u_color2"), 75, 109, 133);    //  Setting color 2
    shader_set_uniform_f(shader_get_uniform(shGameBoy,"u_color3"), 150, 207, 133);   //  Setting color 3
    shader_set_uniform_f(shader_get_uniform(shGameBoy,"u_color4"), 247, 247, 214);   //  Setting color 4
}


//  Draw whatever.  //
draw_surface_stretched(application_surface,0,0,display_get_gui_width(),display_get_gui_height());  //redrawing the application surface to the GUI redraws the screen with the shader enabled.

shader_reset();  //  Disable Shader.

//draw_rectangle_color(0,0,270,48,c_black,c_black,c_black,c_black,0);
//draw_set_color(c_white);
//draw_text(8,8,string_hash_to_newline("1 - 4     -       Select Palette"));
//draw_text(8,24,string_hash_to_newline("Enter    -       Hide Shader"));

