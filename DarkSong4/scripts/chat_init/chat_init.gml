gml_pragma("global", "global.chat_lines = ds_list_create();");
gml_pragma("global", "global.chat_sent = ds_list_create();");
enum chat_col { color, text, time, count, sizeof }
//
global.chat_size = 256;
global.chat_open = 0;
global.chat_beam = 0;
global.chat_offset = 0;
global.chat_decay = 7;
global.chat_fill_char = "​";
global.chat_fill_size = 8;
global.chat_fill_text = string_repeat(global.chat_fill_char, global.chat_fill_size);
global.chat_input_last = "";
global.chat_input_shift = 0;
global.chat_input_pos = 0;
