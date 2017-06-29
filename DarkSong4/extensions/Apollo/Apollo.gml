#define luabridge_init
//#global lua_buffer
//#global lua_error_handler : (text, state_id)
//#global lua_true : Converted to a Lua' true-value when sent to it.
//#global lua_false : Converted to a Lua' true-value when sent to it.
var b = buffer_create(64*1024, 1, 1), v;
luabridge_init_raw(buffer_get_address(b));
lua_buffer = b;
lua_error_handler = -1;
lua_current = -1;
lua_true = lua_ptr(true, lua_ptr_boolean);
lua_false = lua_ptr(false, lua_ptr_boolean);

#define lua_ptr
/// @description  (pointer, type)
/// @function  
/// @param pointer
/// @param  type
//#lua_ptr_boolean = 1
// not done yet:
//#lua_ptr_table = 2
//#lua_ptr_function = 3
var r;
r[0, 0] = argument0;
r[1, 0] = argument1;
return r;

#define lua_bool
/// @description  (value) : For generating returned booleans for Lua, returns lua_true\lua_false
/// @function  
/// @param value
if (argument0) return lua_true; else return lua_false;

#define lua_print_value
/// @description  (value) : Prints a value as expression (e.g. for errors)
/// @function  
/// @param value
var v = argument0;
if (is_string(v)) {
	if (string_pos("\"", v)) {
		if (string_pos("'", v)) {
			return "`" + v + "`";
		} else return "'" + v + "'";
	} else return "\"" + v + "\"";
} else if (is_undefined(v)) {
	return "nil";
} else return string(v);

#define luabridge_write
/// @description  (buf, value, depth = 0)
/// @function  
/// @param buf
/// @param  value
/// @param  depth = 0
var b = argument[0], v = argument[1], d;
if (argument_count > 2) d = 1 + argument[2]; else d = 0;
if (array_length_2d(v, 1) == 1) switch (v[1, 0]) {
	case lua_ptr_boolean: 
		buffer_write(b, buffer_u8, luabridge_type_bool);
		buffer_write(b, buffer_u8, v[0, 0]);
		break;
	case lua_ptr_table: 
		buffer_write(b, buffer_u8, luabridge_type_table);
		buffer_write(b, buffer_u32, v[0, 0] & $FFFFFFFF);
		buffer_write(b, buffer_u32, (v[0, 0] >> 32) & $FFFFFFFF);
		break;
	case lua_ptr_function: 
		buffer_write(b, buffer_u8, luabridge_type_function);
		buffer_write(b, buffer_u32, v[0, 0] & $FFFFFFFF);
		buffer_write(b, buffer_u32, (v[0, 0] >> 32) & $FFFFFFFF);
		break;
	default:
		buffer_write(b, buffer_u8, luabridge_type_nil);
} else if (is_int64(v)) {
	var h = v >> 32;
	if (h != 0) {
		buffer_write(b, buffer_u8, luabridge_type_int64);
		buffer_write(b, buffer_s32, h);
		buffer_write(b, buffer_u32, v & $FFFFFFFF);
	} else {
		buffer_write(b, buffer_u8, luabridge_type_int32);
		buffer_write(b, buffer_s32, v);
	}
} else if (is_real(v)) {
	buffer_write(b, buffer_u8, luabridge_type_real);
	buffer_write(b, buffer_f64, v);
} else if (is_bool(v)) {
	// GameMaker *has* a boolean type, but it is used very unreliably
	// http://bugs.yoyogames.com/view.php?id=26211
	buffer_write(b, buffer_u8, luabridge_type_int32);
	buffer_write(b, buffer_s32, v);
} else if (is_string(v)) {
	buffer_write(b, buffer_u8, luabridge_type_string);
	buffer_write(b, buffer_string, v);
} else {
	buffer_write(b, buffer_u8, luabridge_type_nil);
}

#define luabridge_read
/// @description  luabridge_read(buf)
/// @function  luabridge_read
/// @param buf
var b = argument0, v;
switch (buffer_read(b, buffer_u8)) {
	case luabridge_type_bool: return buffer_read(b, buffer_bool);
	case luabridge_type_int32: return buffer_read(b, buffer_s32);
	case luabridge_type_int64:
		v = buffer_read(b, buffer_u32);
		return buffer_read(b, buffer_s32) | v;
	case luabridge_type_table:
		v = buffer_read(b, buffer_u32);
		return lua_ptr(buffer_read(b, buffer_s32) | v, lua_ptr_table);
	case luabridge_type_function:
		v = buffer_read(b, buffer_u32);
		return lua_ptr(buffer_read(b, buffer_s32) | v, lua_ptr_function);
	case luabridge_type_real: return buffer_read(b, buffer_f64);
	case luabridge_type_string: return buffer_read(b, buffer_string);
	default: return undefined;
}

#define luabridge_result
var b = lua_buffer;
buffer_seek(b, buffer_seek_start, 0);
return luabridge_read(b);

#define lua_script_execute
/// @description  (script, args:array)
/// @function  
/// @param script
/// @param  args:array
var scr = argument0;
var w = argument1;
var argc = array_length_1d(w);
switch (argc) { // this switch looks bad but is the only way in GML for now.
	case  0: return script_execute(scr); break;
	case  1: return script_execute(scr, w[0]); break;
	case  2: return script_execute(scr, w[0], w[1]); break;
	case  3: return script_execute(scr, w[0], w[1], w[2]); break;
	case  4: return script_execute(scr, w[0], w[1], w[2], w[3]); break;
	case  5: return script_execute(scr, w[0], w[1], w[2], w[3], w[4]); break;
	case  6: return script_execute(scr, w[0], w[1], w[2], w[3], w[4], w[5]); break;
	case  7: return script_execute(scr, w[0], w[1], w[2], w[3], w[4], w[5], w[6]); break;
	case  8: return script_execute(scr, w[0], w[1], w[2], w[3], w[4], w[5], w[6], w[7]); break;
	case  9: return script_execute(scr, w[0], w[1], w[2], w[3], w[4], w[5], w[6], w[7], w[8]); break;
	case 10: return script_execute(scr, w[0], w[1], w[2], w[3], w[4], w[5], w[6], w[7], w[8], w[9]); break;
	case 11: return script_execute(scr, w[0], w[1], w[2], w[3], w[4], w[5], w[6], w[7], w[8], w[9], w[10]); break;
	case 12: return script_execute(scr, w[0], w[1], w[2], w[3], w[4], w[5], w[6], w[7], w[8], w[9], w[10], w[11]); break;
	case 13: return script_execute(scr, w[0], w[1], w[2], w[3], w[4], w[5], w[6], w[7], w[8], w[9], w[10], w[11], w[12]); break;
	case 14: return script_execute(scr, w[0], w[1], w[2], w[3], w[4], w[5], w[6], w[7], w[8], w[9], w[10], w[11], w[12], w[13]); break;
	case 15: return script_execute(scr, w[0], w[1], w[2], w[3], w[4], w[5], w[6], w[7], w[8], w[9], w[10], w[11], w[12], w[13], w[14]); break;
	case 16: return script_execute(scr, w[0], w[1], w[2], w[3], w[4], w[5], w[6], w[7], w[8], w[9], w[10], w[11], w[12], w[13], w[14], w[15]); break;
	case 17: return script_execute(scr, w[0], w[1], w[2], w[3], w[4], w[5], w[6], w[7], w[8], w[9], w[10], w[11], w[12], w[13], w[14], w[15], w[16]); break;
	case 18: return script_execute(scr, w[0], w[1], w[2], w[3], w[4], w[5], w[6], w[7], w[8], w[9], w[10], w[11], w[12], w[13], w[14], w[15], w[16], w[17]); break;
	case 19: return script_execute(scr, w[0], w[1], w[2], w[3], w[4], w[5], w[6], w[7], w[8], w[9], w[10], w[11], w[12], w[13], w[14], w[15], w[16], w[17], w[18]); break;
	case 20: return script_execute(scr, w[0], w[1], w[2], w[3], w[4], w[5], w[6], w[7], w[8], w[9], w[10], w[11], w[12], w[13], w[14], w[15], w[16], w[17], w[18], w[19]); break;
	case 21: return script_execute(scr, w[0], w[1], w[2], w[3], w[4], w[5], w[6], w[7], w[8], w[9], w[10], w[11], w[12], w[13], w[14], w[15], w[16], w[17], w[18], w[19], w[20]); break;
	case 22: return script_execute(scr, w[0], w[1], w[2], w[3], w[4], w[5], w[6], w[7], w[8], w[9], w[10], w[11], w[12], w[13], w[14], w[15], w[16], w[17], w[18], w[19], w[20], w[21]); break;
	case 23: return script_execute(scr, w[0], w[1], w[2], w[3], w[4], w[5], w[6], w[7], w[8], w[9], w[10], w[11], w[12], w[13], w[14], w[15], w[16], w[17], w[18], w[19], w[20], w[21], w[22]); break;
	case 24: return script_execute(scr, w[0], w[1], w[2], w[3], w[4], w[5], w[6], w[7], w[8], w[9], w[10], w[11], w[12], w[13], w[14], w[15], w[16], w[17], w[18], w[19], w[20], w[21], w[22], w[23]); break;
	default: show_error("lua_script_execute: Too many arguments!", 0);
}

#define luabridge_proc
/// @description  (state, status)
/// @function  
/// @param state
/// @param  status
//#global lua_current : The currently executing Lua state/thread.
var status = argument1;
if (status == luabridge_status_done) exit;
//
var q = argument0;
var _lua_current = lua_current;
lua_current = q;
//
var b = lua_buffer;
while (status != luabridge_status_done) {
	switch (status) {
		case luabridge_status_call:
			buffer_seek(b, buffer_seek_start, 0);
			var scr = buffer_read(b, buffer_u32);
			var argc = buffer_read(b, buffer_u32);
			var w = undefined;
			if (argc > 0) {
				w[argc - 1] = 0;
				for (var i = 0; i < argc; i++) w[i] = luabridge_read(b);
			}
			buffer_seek(b, buffer_seek_start, 0);
			var r = lua_script_execute(scr, w);
			if (buffer_tell(b) == 0) {
				buffer_write(b, buffer_u32, 1);
				luabridge_write(b, r);
			}
			status = luabridge_continue();
			break;
		case luabridge_status_error:
			buffer_seek(b, buffer_seek_start, 0);
			var l_state = buffer_read(b, buffer_s32);
			var l_error = buffer_read(b, buffer_string);
			if (script_exists(lua_error_handler)) {
				script_execute(lua_error_handler, l_error, l_state);
			} else show_debug_message("Lua error: " + string(l_error));
			status = luabridge_continue();
			break;
		default: status = luabridge_status_done; break;
	}
}
lua_current = _lua_current;

#define lua_return
/// @description  (...values): Returns one or more values back to Lua code.
/// @function  
/// @param ...values
var b = lua_buffer;
buffer_seek(b, buffer_seek_start, 0);
var n = argument_count;
buffer_write(b, buffer_u32, n);
for (var i = 0; i < n; i++) {
	luabridge_write(b, argument[i]);
}
if (n > 0) return argument[0]; else return 0;

#define lua_return_w
/// @description  (values:array) : Returns the contents of an array as a multi-value return.
/// @function  
/// @param values:array
var b = lua_buffer;
var w = argument0;
buffer_seek(b, buffer_seek_start, 0);
var n = array_length_1d(w);
buffer_write(b, buffer_u32, n);
for (var i = 0; i < n; i++) {
	luabridge_write(b, w[i]);
}
if (n > 0) return w[0]; else return 0;

#define lua_return_add
/// @description  (...values): Adds one or more values to the list of returned values.
/// @function  
/// @param ...values
var b = lua_buffer, r;
var n = argument_count;
if (buffer_tell(b) != 0) {
	buffer_poke(b, 0, buffer_u32, buffer_peek(b, 0, buffer_u32) + n);
} else buffer_write(b, buffer_u32, n);
buffer_seek(b, buffer_seek_start, 0);
for (var i = 0; i < n; i++) {
	luabridge_write(b, argument[i]);
}
if (n > 0) return argument[0]; else return 0;

#define lua_global_get
/// @description  (state_id, name):
/// @function  
/// @param state_id
/// @param  name
if (lua_global_get_raw(argument0, argument1)) {
	return luabridge_result();
} else return undefined;

#define lua_global_set
/// @description  (state_id, name, value):
/// @function  
/// @param state_id
/// @param  name
/// @param  value
var b = lua_buffer;
buffer_seek(b, buffer_seek_start, 0);
luabridge_write(b, argument2);
return lua_global_set_raw(argument0, argument1);

#define lua_global_typeof
/// @description  (state_id, name):
/// @function  
/// @param state_id
/// @param  name
if (lua_global_typeof_raw(argument0, argument1)) {
	var b = lua_buffer;
	buffer_seek(b, buffer_seek_start, 0);
	return buffer_read(b, buffer_string);
} else return undefined;

#define lua_call
/// @description  (state_id, func, ...args):
/// @function  
/// @param state_id
/// @param  func
/// @param  ...args
var b = lua_buffer;
var n = argument_count;
var q = argument[0];
buffer_seek(b, buffer_seek_start, 0);
buffer_write(b, buffer_u32, n - 2);
for (var i = 2; i < n; i++) luabridge_write(b, argument[i]);
luabridge_proc(q, lua_call_raw(q, argument[1]));
//
buffer_seek(b, buffer_seek_start, 0);
n = buffer_read(b, buffer_u32);
if (n > 0) {
	return luabridge_read(b);
} else return undefined;

#define lua_call_w
/// @description  (state_id, func, args:array):
/// @function  
/// @param state_id
/// @param  func
/// @param  args:array
var b = lua_buffer;
var q = argument0;
var w = argument2;
var n = array_length_1d(w);
buffer_seek(b, buffer_seek_start, 0);
buffer_write(b, buffer_u32, n);
for (var i = 0; i < n; i++) luabridge_write(b, w[i]);
luabridge_proc(q, lua_call_raw(q, argument1));
//
buffer_seek(b, buffer_seek_start, 0);
n = buffer_read(b, buffer_u32);
if (n > 0) {
	return luabridge_read(b);
} else return undefined;

#define lua_call_start
/// @description  (state_id, func, ...args):
/// @function  
/// @param state_id
/// @param  func
/// @param  ...args
var b = lua_buffer;
var n = argument_count;
buffer_seek(b, buffer_seek_start, 0);
buffer_write(b, buffer_u32, n - 2);
for (var i = 2; i < n; i++) luabridge_write(b, argument[i]);
return lua_call_start_raw(argument[0], argument[1]);

#define lua_call_start_w
/// @description  (state_id, func, args:array):
/// @function  
/// @param state_id
/// @param  func
/// @param  args:array
var b = lua_buffer;
var w = argument2;
var n = array_length_1d(w);
buffer_seek(b, buffer_seek_start, 0);
buffer_write(b, buffer_u32, n);
for (var i = 0; i < n; i++) luabridge_write(b, w[i]);
return lua_call_start_raw(argument0, argument1);

#define lua_call_next
/// @description  (state_id):
/// @function  
/// @param state_id
//#global lua_call_status:
//#global lua_call_result:
var q = argument0;
luabridge_proc(q, lua_call_next_raw(q));
var b = lua_buffer;
buffer_seek(b, buffer_seek_start, 0);
var r = buffer_read(b, buffer_s8);
lua_call_status = r;
var n = buffer_read(b, buffer_u32);
if (n > 0) {
	lua_call_result = luabridge_read(b);
} else lua_call_result = undefined;
return r;

#define lua_add_code
/// @description  (state_id, code):
/// @function  
/// @param state_id
/// @param  code
var q = argument0;
luabridge_proc(q, lua_add_code_raw(q, argument1));
return luabridge_result();

#define lua_add_file
/// @description  (state_id, path):
/// @function  
/// @param state_id
/// @param  path
var q = argument0;
var s = argument1;
if (filename_drive(s) == ""
&& os_type = os_windows // http://bugs.yoyogames.com/view.php?id=26783
) for (var iter = 0; iter < 3; iter++) {
	var dir;
	switch (iter) {
		case 0: dir = game_save_id; break;
		case 1: dir = working_directory; break;
		default: dir = "";
	}
	switch (string_ord_at(dir, string_length(dir))) {
		case ord("/"): case ord("\\"): break;
		default: if (os_type == os_windows) dir += "\\"; else dir += "/";
	}
	var fp = dir + s;
	if (file_exists(fp)) {
		lua_chdir(dir);
		break;
	}
}
luabridge_proc(q, lua_add_file_raw(q, s));
return luabridge_result();

