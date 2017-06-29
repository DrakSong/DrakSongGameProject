var state = argument0;
lua_add_function(state, "draw_self", ref_draw_self);
lua_add_function(state, "draw_sprite", ref_draw_sprite);
lua_add_function(state, "draw_sprite_pos", ref_draw_sprite_pos);
lua_add_function(state, "draw_sprite_ext", ref_draw_sprite_ext);
lua_add_function(state, "draw_sprite_stretched", ref_draw_sprite_stretched);
lua_add_function(state, "draw_sprite_stretched_ext", ref_draw_sprite_stretched_ext);
lua_add_function(state, "draw_sprite_tiled", ref_draw_sprite_tiled);
lua_add_function(state, "draw_sprite_tiled_ext", ref_draw_sprite_tiled_ext);
lua_add_function(state, "draw_sprite_part", ref_draw_sprite_part);
lua_add_function(state, "draw_sprite_part_ext", ref_draw_sprite_part_ext);
lua_add_function(state, "draw_sprite_general", ref_draw_sprite_general);
lua_add_code(state, @"if (__idfields ~= nil) then
    __idfields.draw_self = true;
end");

