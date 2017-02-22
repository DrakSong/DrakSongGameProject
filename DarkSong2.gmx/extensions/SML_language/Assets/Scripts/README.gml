/*
test graph drawer - put in room o_drawer
test language - put in room o_cont


In create event past this function! - lang_init()

Functions are in ds_map "global.func_map"
Variables are in ds_map "global.var_map"

Basic functions:
*string_execute(code_string) - execute code from string
*file_execute(fname) - execute code from file
*lang_function_add(name, script) - creates a function
*lang_variable_set(name, value) - sets the value of the variable
*lang_variable_get(name) - returns the value of the variable


For more advanced users:
*code=lang_read(string) - divides a string into tokens
*code=lang_to_PRN(code) - builds lexemes according to Reverse Polish Notation
*lang_PRN_exe(code)     - execute Reverse Polish Notation


explame of sml code:

x=1
x=1+2
if (x==3) {x=4}

draw_text(10,10, x)


Read code from file: 
str=get_code_from_file



For create self SML-functions:

global.func_map[? 'my_function']=script_with_code_for_my_function
arguments in list - argument0

explame:
    create:
        lang_init()
        ...
        global.func_map[? 'abs']=scr_abs
    script scr_abs:
        return abs(ds_list_find_value(argument0, 0))
