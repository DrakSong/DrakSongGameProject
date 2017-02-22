global.var_map=ds_map_create()
global.symb_map=ds_map_create()
global.pr=ds_map_create()
global.as=ds_map_create()
global.oper_numb=ds_map_create()
global.func_map=ds_map_create()
global.if_stat=0

ds_map_add(global.func_map,'min',scr_min)
ds_map_add(global.func_map,'max',scr_max)
ds_map_add(global.func_map,'sign',scr_sign)
ds_map_add(global.func_map,'cos',scr_cos)
ds_map_add(global.func_map,'sin',scr_sin)
ds_map_add(global.func_map,'tan',scr_tan)
ds_map_add(global.func_map,'sqrt',scr_sqrt)
ds_map_add(global.func_map,'sqr',scr_sqr)
ds_map_add(global.func_map,'abs',scr_abs)
ds_map_add(global.func_map,'log',scr_log)
ds_map_add(global.func_map,'get',scr_get)
ds_map_add(global.func_map,'rgb',mk_rgb)
ds_map_add(global.func_map,'hsv',mk_hsv)
ds_map_add(global.func_map,'draw_line',scr_draw_line)
ds_map_add(global.func_map,'draw_circle',scr_draw_circle)

global.func_map[? 'if']=scr_if
global.func_map[? 'else']=scr_else

global.trash=ds_list_create()
global.trash_i=ds_list_create()

global.pr[? 'mod']=6
global.pr[? 'div']=6
global.pr[? 'or']=3
global.pr[? 'and']=3
global.pr[? '+']=5
global.pr[? '-']=5
global.pr[? '*']=6
global.pr[? '/']=6
global.pr[? '=']=4
global.pr[? '==']=4
global.pr[? '>']=4
global.pr[? '<']=4
global.pr[? '+=']=4
global.pr[? '-=']=4
global.pr[? '*=']=4
global.pr[? '/=']=4
global.pr[? '^']=6.1
global.pr[? '!']=7
global.pr[? ';']=0
global.pr[? '(']=1
global.pr[? ')']=1

global.oper_numb[? '+']=2
global.oper_numb[? '-']=2
global.oper_numb[? '*']=2
global.oper_numb[? '/']=2
global.oper_numb[? '=']=2
global.oper_numb[? '==']=2
global.oper_numb[? '>']=2
global.oper_numb[? '<']=2
global.oper_numb[? '+=']=2
global.oper_numb[? '-=']=2
global.oper_numb[? '*=']=2
global.oper_numb[? '/=']=2
global.oper_numb[? '^']=2
global.oper_numb[? '!']=1
global.oper_numb[? '(']=2
global.oper_numb[? ')']=2

global.as[? 'or']=0
global.as[? 'and']=0
global.as[? 'div']=0
global.as[? 'mod']=0
global.as[? '+']=0
global.as[? '-']=0
global.as[? '*']=0
global.as[? '/']=0
global.as[? '=']=0
global.as[? '==']=0
global.as[? '>']=0
global.as[? '<']=0
global.as[? '+=']=0
global.as[? '-=']=0
global.as[? '*=']=0
global.as[? '/=']=0
global.as[? '^']=1
global.as[? '!']=1
global.as[? '(']=0
global.as[? ')']=0

global.symb_map[? 'й']=0
global.symb_map[? 'ц']=0
global.symb_map[? 'у']=0
global.symb_map[? 'к']=0
global.symb_map[? 'е']=0
global.symb_map[? 'н']=0
global.symb_map[? 'г']=0
global.symb_map[? 'ш']=0
global.symb_map[? 'щ']=0
global.symb_map[? 'з']=0
global.symb_map[? 'х']=0
global.symb_map[? 'ъ']=0
global.symb_map[? 'ф']=0
global.symb_map[? 'ы']=0
global.symb_map[? 'в']=0
global.symb_map[? 'а']=0
global.symb_map[? 'п']=0
global.symb_map[? 'р']=0
global.symb_map[? 'о']=0
global.symb_map[? 'л']=0
global.symb_map[? 'д']=0
global.symb_map[? 'ж']=0
global.symb_map[? 'э']=0
global.symb_map[? 'я']=0
global.symb_map[? 'ч']=0
global.symb_map[? 'с']=0
global.symb_map[? 'м']=0
global.symb_map[? 'и']=0
global.symb_map[? 'т']=0
global.symb_map[? 'ь']=0
global.symb_map[? 'б']=0
global.symb_map[? 'ю']=0

global.symb_map[? 'a']=0
global.symb_map[? 'b']=0
global.symb_map[? 'c']=0
global.symb_map[? 'd']=0
global.symb_map[? 'e']=0
global.symb_map[? 'f']=0
global.symb_map[? 'g']=0
global.symb_map[? 'h']=0
global.symb_map[? 'i']=0
global.symb_map[? 'j']=0
global.symb_map[? 'k']=0
global.symb_map[? 'l']=0
global.symb_map[? 'm']=0
global.symb_map[? 'n']=0
global.symb_map[? 'o']=0
global.symb_map[? 'p']=0
global.symb_map[? 'q']=0
global.symb_map[? 'r']=0
global.symb_map[? 's']=0
global.symb_map[? 't']=0
global.symb_map[? 'u']=0
global.symb_map[? 'v']=0
global.symb_map[? 'w']=0
global.symb_map[? 'x']=0
global.symb_map[? 'y']=0
global.symb_map[? 'z']=0
global.symb_map[? 'A']=0
global.symb_map[? 'B']=0
global.symb_map[? 'C']=0
global.symb_map[? 'D']=0
global.symb_map[? 'E']=0
global.symb_map[? 'F']=0
global.symb_map[? 'G']=0
global.symb_map[? 'H']=0
global.symb_map[? 'I']=0
global.symb_map[? 'J']=0
global.symb_map[? 'K']=0
global.symb_map[? 'L']=0
global.symb_map[? 'M']=0
global.symb_map[? 'N']=0
global.symb_map[? 'O']=0
global.symb_map[? 'P']=0
global.symb_map[? 'Q']=0
global.symb_map[? 'R']=0
global.symb_map[? 'S']=0
global.symb_map[? 'T']=0
global.symb_map[? 'U']=0
global.symb_map[? 'V']=0
global.symb_map[? 'W']=0
global.symb_map[? 'X']=0
global.symb_map[? 'Y']=0
global.symb_map[? 'Z']=0
global.symb_map[? '_']=0

global.symb_map[? '0']=1
global.symb_map[? '1']=1
global.symb_map[? '2']=1
global.symb_map[? '3']=1
global.symb_map[? '4']=1
global.symb_map[? '5']=1
global.symb_map[? '6']=1
global.symb_map[? '7']=1
global.symb_map[? '8']=1
global.symb_map[? '9']=1

global.symb_map[? '+']=2
global.symb_map[? '-']=3
global.symb_map[? '(']=4
global.symb_map[? ')']=5
global.symb_map[? '/']=6
global.symb_map[? '*']=7
global.symb_map[? '!']=8
global.symb_map[? '"']=9
global.symb_map[? "'"]=10
global.symb_map[? '{']=11
global.symb_map[? '}']=12
global.symb_map[? '>']=13
global.symb_map[? '<']=14
global.symb_map[? '=']=15
global.symb_map[? '^']=16

