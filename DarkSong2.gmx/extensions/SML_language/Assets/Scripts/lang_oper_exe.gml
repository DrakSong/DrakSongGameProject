switch argument0
{
    case '+': return lang_getvar(argument1)+lang_getvar(argument2);break
    case '-': return lang_getvar(argument1)-lang_getvar(argument2);break
    case '*': return lang_getvar(argument1)*lang_getvar(argument2);break
    case '/': if real(lang_getvar(argument2))!=0 return lang_getvar(argument1)/lang_getvar(argument2) else return '@ERROR@';break
    case '^': return power(lang_getvar(argument1),lang_getvar(argument2));break
    case 'mod': return lang_getvar(argument1) mod lang_getvar(argument2);break
    case 'div': return lang_getvar(argument1) div lang_getvar(argument2);break
    case 'and': return lang_getvar(argument1) and lang_getvar(argument2);break
    case 'or': return lang_getvar(argument1) or lang_getvar(argument2);break
    case '+=': global.var_map[? argument1]+=lang_getvar(argument2);break
    case '-=': global.var_map[? argument1]-=lang_getvar(argument2);break
    case '*=': global.var_map[? argument1]*=lang_getvar(argument2);break
    case '/=': global.var_map[? argument1]/=lang_getvar(argument2);break
    case '==': return lang_getvar(argument1)==lang_getvar(argument2);break
    case '=': global.var_map[? argument1]=lang_getvar(argument2); return lang_getvar(argument2);break
    case '>': return lang_getvar(argument1)>lang_getvar(argument2);break
    case '<': return lang_getvar(argument1)<lang_getvar(argument2);break
}
