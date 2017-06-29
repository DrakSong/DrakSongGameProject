/// @description  live_call(name, ...args)
/// @function  live_call
/// @param name
/// @param  ...args
var q = live_state;
var s = argument[0];
if (lua_global_typeof(q, s) == "function") {
    var n = argument_count - 1;
    var w = array_create(n);
    for (var i = 0; i < n; i++) w[i] = argument[1 + i];
    lua_call_w(q, s, w);
} else return undefined;
