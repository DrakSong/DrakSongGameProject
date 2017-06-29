/// @description  ref_variable_instance_init(lua_state)
/// @function  ref_variable_instance_init
/// @param lua_state
var q = argument0;
lua_add_function(q, "variable_instance_get", ref_variable_instance_get);
lua_add_function(q, "variable_instance_set", ref_variable_instance_set);
lua_add_code(q, @"-- ref_variable_instance_init()
    __idfields = __idfields or { };
    debug.setmetatable(0, {
        __index = function(self, name)
            if (__idfields[name]) then
                return _G[name];
            else
                return variable_instance_get(self, name);
            end
        end,
        __newindex = variable_instance_set,
    })
");
