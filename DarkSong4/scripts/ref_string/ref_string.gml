var state = argument0;
lua_add_function(state, "string_length", ref_string_length);
lua_add_function(state, "string_byte_length", ref_string_byte_length);
lua_add_function(state, "string_pos", ref_string_pos);
lua_add_function(state, "string_copy", ref_string_copy);
lua_add_function(state, "string_char_at", ref_string_char_at);
lua_add_function(state, "string_ord_at", ref_string_ord_at);
lua_add_function(state, "string_byte_at", ref_string_byte_at);
lua_add_function(state, "string_set_byte_at", ref_string_set_byte_at);
lua_add_function(state, "string_delete", ref_string_delete);
lua_add_function(state, "string_insert", ref_string_insert);
lua_add_function(state, "string_lower", ref_string_lower);
lua_add_function(state, "string_upper", ref_string_upper);
lua_add_function(state, "string_repeat", ref_string_repeat);
lua_add_function(state, "string_letters", ref_string_letters);
lua_add_function(state, "string_digits", ref_string_digits);
lua_add_function(state, "string_lettersdigits", ref_string_lettersdigits);
lua_add_function(state, "string_replace", ref_string_replace);
lua_add_function(state, "string_replace_all", ref_string_replace_all);
lua_add_function(state, "string_count", ref_string_count);
lua_add_function(state, "action_inherited", action_inherited);

