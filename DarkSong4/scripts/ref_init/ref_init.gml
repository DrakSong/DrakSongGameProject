/// @description  ref_init(lua_state)
/// @function  ref_init
/// @param lua_state
var q, i;
q = argument0;
lua_error_handler = lua_on_error;
lua_add_function(q, "trace", trace);
lua_add_function(q, "print", trace);
ref_variable_instance_init(q);
ref_keyboard(q);
ref_gamepad(q);
ref_instance(q);
ref_real(q);
ref_string(q);
ref_color(q);
ref_draw(q);
ref_text(q);
ref_sprite(q);
ref_background(q);

ref_sound(q);//播放声音的的
ref_Alarm(q);//计时器的
ref_AtkBoxCollision(q)//攻击碰撞区域的


for (i = 0; sprite_exists(i); i += 1) {
    lua_global_set(q, sprite_get_name(i), i);
}
for (i = 0; object_exists(i); i += 1) {
    lua_global_set(q, object_get_name(i), i);
}
for (i = 0; audio_exists(i); i += 1) {
    lua_global_set(q, audio_get_name(i), i);
}
