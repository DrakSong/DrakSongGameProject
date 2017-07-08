{
    "id": "7e12aedd-9850-4d47-8472-15f71b2eeb70",
    "modelName": "GMExtension",
    "mvc": "1.0",
    "name": "Apollo",
    "IncludedResources": [
        "Included Files\\ApolloHelp.html",
        "Included Files\\LuaLicense.txt",
        "Included Files\\ApolloGen.exe",
        "Included Files\\ApolloDemo.gmz"
    ],
    "androidPermissions": [
        
    ],
    "androidProps": true,
    "androidactivityinject": "",
    "androidclassname": "",
    "androidinject": "",
    "androidmanifestinject": "",
    "androidsourcedir": "",
    "author": "",
    "classname": "",
    "copyToTargets": 105554172285166,
    "date": "2017-59-08 11:06:24",
    "description": "",
    "extensionName": "",
    "files": [
        {
            "id": "e5ca027b-8878-4a72-a0fd-dbe0ca656574",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                {
                    "id": "e3d80e85-bf6f-4534-853a-8bc27739dfe0",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "luabridge_status_done",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "4726903b-d0d3-438e-9362-ea0b9404d3d0",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "luabridge_status_call",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "421f6c34-4ad7-43d3-94a7-f4820bf11192",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "luabridge_status_error",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "8a1eeb12-bdce-41e9-9384-3758ee08f71b",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "luabridge_type_nil",
                    "hidden": true,
                    "value": "0"
                },
                {
                    "id": "87dce03f-76c6-40fa-b39f-0757a3eb3211",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "luabridge_type_bool",
                    "hidden": true,
                    "value": "1"
                },
                {
                    "id": "109b15d6-79fd-4a7e-80b6-c081bf66ca64",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "luabridge_type_int32",
                    "hidden": true,
                    "value": "2"
                },
                {
                    "id": "85e0f8b4-4447-4436-aad2-75768b0d7df8",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "luabridge_type_int64",
                    "hidden": true,
                    "value": "3"
                },
                {
                    "id": "80fb70e2-d2eb-404b-b3cf-223dcfe35c1f",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "luabridge_type_real",
                    "hidden": true,
                    "value": "4"
                },
                {
                    "id": "7e306e72-9c54-4752-b18c-68176f8eef80",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "luabridge_type_string",
                    "hidden": true,
                    "value": "5"
                },
                {
                    "id": "6c862b9d-acbe-40b2-8dea-1fbbcf36b0ff",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "luabridge_type_table",
                    "hidden": true,
                    "value": "6"
                },
                {
                    "id": "8c194329-b44d-4f28-aded-df6353cf872b",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "luabridge_type_function",
                    "hidden": true,
                    "value": "7"
                }
            ],
            "copyToTargets": 106687798186048,
            "filename": "Apollo.dll",
            "final": "",
            "functions": [
                {
                    "id": "a2871194-1f27-471e-ab50-11c5b6aba91f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "luabridge_init_raw",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "luabridge_init_raw",
                    "returnType": 2
                },
                {
                    "id": "20b7b078-fe6f-4b6b-9ec0-03063f432627",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "lua_reset",
                    "help": "lua_reset()",
                    "hidden": false,
                    "kind": 11,
                    "name": "lua_reset",
                    "returnType": 2
                },
                {
                    "id": "e3b1e787-c457-478c-947d-4d0d4355d186",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "lua_chdir",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "lua_chdir",
                    "returnType": 2
                },
                {
                    "id": "9624f53d-8647-4fdf-8d10-e602a71d5eec",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "luabridge_continue",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "luabridge_continue",
                    "returnType": 2
                },
                {
                    "id": "ab7ca15e-2a03-4ae5-a684-d18fe2432309",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "lua_state_create",
                    "help": "lua_state_create() : Creates a new Lua state and returns it's id.",
                    "hidden": false,
                    "kind": 11,
                    "name": "lua_state_create",
                    "returnType": 2
                },
                {
                    "id": "a86b3f7b-1c27-4ff1-b206-35813cee133f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "lua_state_destroy",
                    "help": "lua_state_destroy(state_id) : Destroys an existing Lua state, cleaning up memory.",
                    "hidden": false,
                    "kind": 11,
                    "name": "lua_state_destroy",
                    "returnType": 2
                },
                {
                    "id": "b4308d79-2588-4884-b563-e2c7bf61a944",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "lua_thread_create",
                    "help": "lua_thread_create(state_id) : Creates a new thread state for the given Lua state and returns it's id",
                    "hidden": false,
                    "kind": 11,
                    "name": "lua_thread_create",
                    "returnType": 2
                },
                {
                    "id": "d0c02c2b-1505-4036-b928-59c7d83ac18b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "lua_thread_destroy",
                    "help": "lua_thread_destroy(state_id) : (is in fact the same as lua_state_destroy)",
                    "hidden": false,
                    "kind": 11,
                    "name": "lua_thread_destroy",
                    "returnType": 2
                },
                {
                    "id": "d37fdd0d-f2c7-40dc-b071-7f14823d9fda",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "lua_show_error",
                    "help": "lua_show_error(text) : Sends a runtime error into the currently executing Lua state.",
                    "hidden": false,
                    "kind": 11,
                    "name": "lua_show_error",
                    "returnType": 2
                },
                {
                    "id": "a178e3d3-cf77-4fad-886e-e6eb51a60c34",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        1,
                        2
                    ],
                    "externalName": "lua_add_function",
                    "help": "lua_add_function(state_id, name, script)",
                    "hidden": false,
                    "kind": 11,
                    "name": "lua_add_function",
                    "returnType": 2
                },
                {
                    "id": "ffd551a1-5774-459d-8c95-5d88731db26b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        1
                    ],
                    "externalName": "lua_global_get_raw",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "lua_global_get_raw",
                    "returnType": 2
                },
                {
                    "id": "48f98d9c-f102-4c95-940c-47d86259092c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        1
                    ],
                    "externalName": "lua_global_set_raw",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "lua_global_set_raw",
                    "returnType": 2
                },
                {
                    "id": "02d441b9-eda9-42cf-a79d-eda7bec4adb2",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        1
                    ],
                    "externalName": "lua_global_typeof_raw",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "lua_global_typeof_raw",
                    "returnType": 2
                },
                {
                    "id": "b3a60f13-1e1f-4c19-ba06-65ff138f6bed",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        1
                    ],
                    "externalName": "lua_add_file_raw",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "lua_add_file_raw",
                    "returnType": 2
                },
                {
                    "id": "fe58051f-f36a-43e5-9001-3aba25cdf30c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        1
                    ],
                    "externalName": "lua_add_code_raw",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "lua_add_code_raw",
                    "returnType": 2
                },
                {
                    "id": "c029d8a2-9bfa-46a4-8d9c-28678c3f555d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        1
                    ],
                    "externalName": "lua_call_raw",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "lua_call_raw",
                    "returnType": 2
                },
                {
                    "id": "fa670dbe-498d-4dec-b6f4-f0fe83441e22",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        1
                    ],
                    "externalName": "lua_call_start_raw",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "lua_call_start_raw",
                    "returnType": 2
                },
                {
                    "id": "8f6fd492-98a5-4e34-9902-88d0a7160350",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "lua_call_next_raw",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "lua_call_next_raw",
                    "returnType": 2
                },
                {
                    "id": "a77178b8-b591-4b89-80ba-51f70868fefc",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "lua_state_gettop",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "lua_state_gettop",
                    "returnType": 2
                },
                {
                    "id": "72f5a865-4ca8-4b98-bac8-69fd48dd9b2b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "lua_table_get_raw",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "lua_table_get_raw",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "extensions\\Apollo.dll",
            "uncompress": false
        },
        {
            "id": "45c82be9-1739-4698-a220-4de7a3b964e8",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                {
                    "id": "6ecb7e6b-0c5a-4e3c-8b17-2fd7bfc56cda",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "lua_ptr_boolean",
                    "hidden": true,
                    "value": "1"
                },
                {
                    "id": "f5021e22-6270-40e6-9f9e-1698bb7f09e2",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "lua_ptr_table",
                    "hidden": true,
                    "value": "2"
                },
                {
                    "id": "89bf6d2d-b752-4c84-a010-962d5aa3fef8",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "lua_ptr_function",
                    "hidden": true,
                    "value": "3"
                },
                {
                    "id": "e3ac2646-6268-47f2-81e9-e692d8fdbe9b",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "lua_buffer",
                    "hidden": true,
                    "value": "global.g_lua_buffer"
                },
                {
                    "id": "e44d4853-85a2-4963-a338-cfcafd906911",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "lua_error_handler",
                    "hidden": false,
                    "value": "global.g_lua_error_handler"
                },
                {
                    "id": "dfef8ad6-56e9-4ad7-9a6c-0040f672b589",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "lua_error_handler \/* (text, state_id) *\/",
                    "hidden": false,
                    "value": "global.g_lua_error_handler"
                },
                {
                    "id": "df173d21-74b9-496b-a5e5-a62b1e83aac2",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "lua_true",
                    "hidden": false,
                    "value": "global.g_lua_true"
                },
                {
                    "id": "cd19b0ec-9384-4742-8140-66bd7915d8b9",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "lua_true \/* Converted to a Lua' true-value when sent to it. *\/",
                    "hidden": false,
                    "value": "global.g_lua_true"
                },
                {
                    "id": "b52dbcc2-24c4-4ab8-b58f-80998770fd65",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "lua_false",
                    "hidden": false,
                    "value": "global.g_lua_false"
                },
                {
                    "id": "fae86aaa-3f01-43f6-822f-88542b9edbe9",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "lua_false \/* Converted to a Lua' true-value when sent to it. *\/",
                    "hidden": false,
                    "value": "global.g_lua_false"
                },
                {
                    "id": "596d6fe8-a179-48aa-87bc-a5e6f9baa403",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "lua_current",
                    "hidden": false,
                    "value": "global.g_lua_current"
                },
                {
                    "id": "530303c6-9a52-4c20-bd5d-29153fa79578",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "lua_current \/* The currently executing Lua state\/thread. *\/",
                    "hidden": false,
                    "value": "global.g_lua_current"
                },
                {
                    "id": "2a2994e6-3288-4b64-b16a-56618dcd7705",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "lua_call_status",
                    "hidden": false,
                    "value": "global.g_lua_call_status"
                },
                {
                    "id": "79e673d7-07a3-4cd9-a755-531409720fa9",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "lua_call_result",
                    "hidden": false,
                    "value": "global.g_lua_call_result"
                }
            ],
            "copyToTargets": 113497714299118,
            "filename": "Apollo.gml",
            "final": "",
            "functions": [
                {
                    "id": "caf709e9-3708-45ef-9e44-ea731d55c7a3",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "luabridge_init",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "luabridge_init",
                    "returnType": 2
                },
                {
                    "id": "32e02029-9a9e-4230-a4c3-5c8dd03d2ab1",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "lua_ptr",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "lua_ptr",
                    "returnType": 2
                },
                {
                    "id": "2fba29a2-b3d7-47ec-bc61-b5566a991717",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "lua_bool",
                    "help": "lua_bool(value) : For generating returned booleans for Lua, returns lua_true\\lua_false",
                    "hidden": false,
                    "kind": 11,
                    "name": "lua_bool",
                    "returnType": 2
                },
                {
                    "id": "a6b5e3e5-fb56-432f-ae8d-1a7cdb0e00f7",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "lua_print_value",
                    "help": "lua_print_value(value) : Prints a value as expression (e.g. for errors)",
                    "hidden": false,
                    "kind": 11,
                    "name": "lua_print_value",
                    "returnType": 2
                },
                {
                    "id": "c1aa08d0-5c86-4050-841d-ac60bbbffcc4",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "luabridge_write",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "luabridge_write",
                    "returnType": 2
                },
                {
                    "id": "0222398e-8984-4f52-9677-4d7048555f94",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "luabridge_read",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "luabridge_read",
                    "returnType": 2
                },
                {
                    "id": "b84ca631-9857-4b6a-ae08-644be4c534c4",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "luabridge_result",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "luabridge_result",
                    "returnType": 2
                },
                {
                    "id": "f5e559ed-7b35-438d-a27b-fe86bc138be7",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "lua_script_execute",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "lua_script_execute",
                    "returnType": 2
                },
                {
                    "id": "7bdc3652-3c5a-4f73-b60c-4db06233cb21",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "luabridge_proc",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "luabridge_proc",
                    "returnType": 2
                },
                {
                    "id": "72015989-cc2d-46ec-86c8-75df9ec1538d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "lua_return",
                    "help": "lua_return(...values) : Returns one or more values back to Lua code.",
                    "hidden": false,
                    "kind": 11,
                    "name": "lua_return",
                    "returnType": 2
                },
                {
                    "id": "60299797-89bc-4474-b284-900074a3c429",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "lua_return_w",
                    "help": "lua_return_w(values:array) : Returns the contents of an array as a multi-value return.",
                    "hidden": false,
                    "kind": 11,
                    "name": "lua_return_w",
                    "returnType": 2
                },
                {
                    "id": "382ba741-f94d-4b4a-8a16-39c13ccede0b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "lua_return_add",
                    "help": "lua_return_add(...values) : Adds one or more values to the list of returned values.",
                    "hidden": false,
                    "kind": 11,
                    "name": "lua_return_add",
                    "returnType": 2
                },
                {
                    "id": "f963e837-ea28-40fb-ad0a-3407feb332c2",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "lua_global_get",
                    "help": "lua_global_get(state_id, name)",
                    "hidden": false,
                    "kind": 11,
                    "name": "lua_global_get",
                    "returnType": 2
                },
                {
                    "id": "4bd39f85-5e70-4cb5-ace9-83fc4173ef9f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "lua_global_set",
                    "help": "lua_global_set(state_id, name, value)",
                    "hidden": false,
                    "kind": 11,
                    "name": "lua_global_set",
                    "returnType": 2
                },
                {
                    "id": "42b217be-49e5-49b2-9cb3-6a5ed562eb9f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "lua_global_typeof",
                    "help": "lua_global_typeof(state_id, name)",
                    "hidden": false,
                    "kind": 11,
                    "name": "lua_global_typeof",
                    "returnType": 2
                },
                {
                    "id": "605cc088-7bed-403a-a3b8-c85d2e5d0d06",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "lua_call",
                    "help": "lua_call(state_id, func, ...args)",
                    "hidden": false,
                    "kind": 11,
                    "name": "lua_call",
                    "returnType": 2
                },
                {
                    "id": "c899e71e-f1c3-4938-bde0-24ae5492b8b0",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "lua_call_w",
                    "help": "lua_call_w(state_id, func, args:array)",
                    "hidden": false,
                    "kind": 11,
                    "name": "lua_call_w",
                    "returnType": 2
                },
                {
                    "id": "08c78c21-5d97-42af-907a-6aeb8ed96e98",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "lua_call_start",
                    "help": "lua_call_start(state_id, func, ...args)",
                    "hidden": false,
                    "kind": 11,
                    "name": "lua_call_start",
                    "returnType": 2
                },
                {
                    "id": "1ca1cdb5-7d93-42bf-a498-85f9c31e3c94",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        2,
                        2
                    ],
                    "externalName": "lua_call_start_w",
                    "help": "lua_call_start_w(state_id, func, args:array)",
                    "hidden": false,
                    "kind": 11,
                    "name": "lua_call_start_w",
                    "returnType": 2
                },
                {
                    "id": "15b7746b-fead-41c1-b876-9c1243218143",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "lua_call_next",
                    "help": "lua_call_next(state_id)",
                    "hidden": false,
                    "kind": 11,
                    "name": "lua_call_next",
                    "returnType": 2
                },
                {
                    "id": "21e72472-d237-48e8-bdd9-c7e531d05937",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "lua_add_code",
                    "help": "lua_add_code(state_id, code)",
                    "hidden": false,
                    "kind": 11,
                    "name": "lua_add_code",
                    "returnType": 2
                },
                {
                    "id": "a5467bae-be94-4684-a9ec-f8d34bb2a1d1",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "lua_add_file",
                    "help": "lua_add_file(state_id, path)",
                    "hidden": false,
                    "kind": 11,
                    "name": "lua_add_file",
                    "returnType": 2
                }
            ],
            "init": "luabridge_init",
            "kind": 2,
            "order": [
                
            ],
            "origname": "extensions\\gml.gml",
            "uncompress": false
        },
        {
            "id": "04e62581-c5d7-4df8-92c2-bd83470e87c8",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                {
                    "id": "79a273bf-0014-4ffe-8279-f4ab1d30354e",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "luabridge_status_done",
                    "hidden": true,
                    "value": "0"
                },
                {
                    "id": "ebeebdc8-9ec3-4011-b338-2e2e07cc2863",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "luabridge_status_call",
                    "hidden": true,
                    "value": "1"
                },
                {
                    "id": "c4635cf1-9c07-4455-ad98-0fd20991d970",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "luabridge_status_error",
                    "hidden": true,
                    "value": "2"
                },
                {
                    "id": "82fa2434-6c27-41ad-b2c1-9d8fd198bea0",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "luabridge_type_nil",
                    "hidden": true,
                    "value": "0"
                },
                {
                    "id": "e3e469e4-bd9f-4de8-866f-7ed24495884c",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "luabridge_type_bool",
                    "hidden": true,
                    "value": "1"
                },
                {
                    "id": "97dec26b-b71c-4498-acf4-4c6a76275f42",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "luabridge_type_int32",
                    "hidden": true,
                    "value": "2"
                },
                {
                    "id": "0d18fecf-489f-4f59-ad84-8abea4ab8015",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "luabridge_type_int64",
                    "hidden": true,
                    "value": "3"
                },
                {
                    "id": "472c0164-6a19-4a15-948e-70468cc0e796",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "luabridge_type_real",
                    "hidden": true,
                    "value": "4"
                },
                {
                    "id": "6d998072-adb0-4482-8362-b071916fe495",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "luabridge_type_string",
                    "hidden": true,
                    "value": "5"
                },
                {
                    "id": "246b892b-55a2-4108-9522-e48186fa81d8",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "luabridge_type_table",
                    "hidden": true,
                    "value": "6"
                },
                {
                    "id": "eacf3966-a04d-4cd0-86fc-2575f6f542da",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "luabridge_type_function",
                    "hidden": true,
                    "value": "7"
                }
            ],
            "copyToTargets": 134217856,
            "filename": "Apollo.so",
            "final": "",
            "functions": [
                {
                    "id": "d9e64e36-3499-4e3b-ba20-d8a2f48b717d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "luabridge_init_raw",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "luabridge_init_raw",
                    "returnType": 2
                },
                {
                    "id": "8059d4d0-782d-43f4-b9a0-2974e9bebd4a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "lua_reset",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "lua_reset",
                    "returnType": 2
                },
                {
                    "id": "f7ed38c3-14e8-4f22-9ba2-a3b94e58d391",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "lua_chdir",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "lua_chdir",
                    "returnType": 2
                },
                {
                    "id": "f2655e6c-c8ed-48fe-bf83-d53e6e9d62f5",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "luabridge_continue",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "luabridge_continue",
                    "returnType": 2
                },
                {
                    "id": "bcea33cb-39a6-431a-8864-d5af1fdd3b9d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "lua_state_create",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "lua_state_create",
                    "returnType": 2
                },
                {
                    "id": "ed2a0a7c-c162-4027-80dd-fce590dd6fb0",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "lua_state_destroy",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "lua_state_destroy",
                    "returnType": 2
                },
                {
                    "id": "3a7d074a-9177-42d2-b774-58b944e3c5f4",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "lua_thread_create",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "lua_thread_create",
                    "returnType": 2
                },
                {
                    "id": "2d8ed620-9ad7-45d3-9ea4-6cadf5401d64",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "lua_thread_destroy",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "lua_thread_destroy",
                    "returnType": 2
                },
                {
                    "id": "954f0f70-526a-41da-9018-bdd1a0fbfe85",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "lua_show_error",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "lua_show_error",
                    "returnType": 2
                },
                {
                    "id": "292213df-df0f-4491-8cb9-f00ff18988bd",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        1,
                        2
                    ],
                    "externalName": "lua_add_function",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "lua_add_function",
                    "returnType": 2
                },
                {
                    "id": "7ae760eb-5484-4271-8b41-2a5b565f9748",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        1
                    ],
                    "externalName": "lua_global_get_raw",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "lua_global_get_raw",
                    "returnType": 2
                },
                {
                    "id": "f392b0f3-a5eb-4aa1-a88e-df73daf41253",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        1
                    ],
                    "externalName": "lua_global_set_raw",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "lua_global_set_raw",
                    "returnType": 2
                },
                {
                    "id": "162cbd2e-dc09-4fb7-8a7f-21562eddaa65",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        1
                    ],
                    "externalName": "lua_global_typeof_raw",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "lua_global_typeof_raw",
                    "returnType": 2
                },
                {
                    "id": "807a66f2-c238-48ad-b59d-c8b18f3b5d1b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        1
                    ],
                    "externalName": "lua_add_file_raw",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "lua_add_file_raw",
                    "returnType": 2
                },
                {
                    "id": "4999640a-4cac-4785-aac7-4e10763b2877",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        1
                    ],
                    "externalName": "lua_add_code_raw",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "lua_add_code_raw",
                    "returnType": 2
                },
                {
                    "id": "5be0f429-f452-4b99-a0f6-98e92601ae59",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        1
                    ],
                    "externalName": "lua_call_raw",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "lua_call_raw",
                    "returnType": 2
                },
                {
                    "id": "2bff58bc-0cd0-48b1-b2ba-c204d3c898c6",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        1
                    ],
                    "externalName": "lua_call_start_raw",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "lua_call_start_raw",
                    "returnType": 2
                },
                {
                    "id": "6981adac-f907-4b87-83a4-c72c25b9b584",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "lua_call_next_raw",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "lua_call_next_raw",
                    "returnType": 2
                },
                {
                    "id": "bc0b67d9-ed8c-4add-8928-0865285de15e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "lua_state_gettop",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "lua_state_gettop",
                    "returnType": 2
                },
                {
                    "id": "033b313e-405d-4bad-abbe-98aeea930279",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "lua_table_get_raw",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "lua_table_get_raw",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "extensions\\Apollo.so",
            "uncompress": false
        },
        {
            "id": "cf7d7276-1c80-4509-87b0-15c56a455d29",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": 134217856,
            "filename": "liblua.so",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "extensions\\liblua.so",
            "uncompress": false
        },
        {
            "id": "3d11d6ee-c932-429c-9cb3-5edada4519ad",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                {
                    "id": "a80e7477-1103-4f82-9c8b-9a12025980d9",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "luabridge_status_done",
                    "hidden": true,
                    "value": "0"
                },
                {
                    "id": "0b15cd9e-2525-4476-bdb2-f4cb08ed6034",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "luabridge_status_call",
                    "hidden": true,
                    "value": "1"
                },
                {
                    "id": "061d14c8-f7d2-4ce9-922e-1e80338a8f7e",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "luabridge_status_error",
                    "hidden": true,
                    "value": "2"
                },
                {
                    "id": "4d185467-9cc9-4b18-ba57-be7a9f9a6922",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "luabridge_type_nil",
                    "hidden": true,
                    "value": "0"
                },
                {
                    "id": "df88b29e-e3e3-4935-8d19-7f4080e4a98b",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "luabridge_type_bool",
                    "hidden": true,
                    "value": "1"
                },
                {
                    "id": "9da31868-6883-40ea-b8c4-b93fd078f7b1",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "luabridge_type_int32",
                    "hidden": true,
                    "value": "2"
                },
                {
                    "id": "d12ed1c0-af20-4f1c-b821-d84298c17048",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "luabridge_type_int64",
                    "hidden": true,
                    "value": "3"
                },
                {
                    "id": "6cafcc4d-b12a-45d9-822f-3ca8774748ef",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "luabridge_type_real",
                    "hidden": true,
                    "value": "4"
                },
                {
                    "id": "b119291f-a2e0-4876-ba19-6dbae05d6e19",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "luabridge_type_string",
                    "hidden": true,
                    "value": "5"
                },
                {
                    "id": "001d68e9-bf40-4dc9-9e9d-780e5daf1f5a",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "luabridge_type_table",
                    "hidden": true,
                    "value": "6"
                },
                {
                    "id": "3cfaac78-a58d-42bf-94dd-8f06af68d415",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "luabridge_type_function",
                    "hidden": true,
                    "value": "7"
                }
            ],
            "copyToTargets": 67108866,
            "filename": "Apollo.dylib",
            "final": "",
            "functions": [
                {
                    "id": "0688c0c2-75b1-40df-be95-0ae31af3c1e9",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "luabridge_init_raw",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "luabridge_init_raw",
                    "returnType": 2
                },
                {
                    "id": "ede905d9-fd70-4b48-bf34-90c878906e99",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "lua_reset",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "lua_reset",
                    "returnType": 2
                },
                {
                    "id": "d58c3290-6dba-4b46-8382-f25fe33e2360",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "lua_chdir",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "lua_chdir",
                    "returnType": 2
                },
                {
                    "id": "74f1a88b-cc0f-4a70-bd3f-e9e3fa732b3e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "luabridge_continue",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "luabridge_continue",
                    "returnType": 2
                },
                {
                    "id": "db5e6913-6888-42e1-8f74-2af3eb61c910",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "lua_state_create",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "lua_state_create",
                    "returnType": 2
                },
                {
                    "id": "6df727ae-0d5c-4cae-a610-92f329517aac",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "lua_state_destroy",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "lua_state_destroy",
                    "returnType": 2
                },
                {
                    "id": "2bd1cd5d-4139-4975-87e0-af9bd65766d3",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "lua_thread_create",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "lua_thread_create",
                    "returnType": 2
                },
                {
                    "id": "8e0f1734-4a7b-489c-a0be-880ee7682eea",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "lua_thread_destroy",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "lua_thread_destroy",
                    "returnType": 2
                },
                {
                    "id": "8623e0d0-523c-4e04-956d-bcd840c54727",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "lua_show_error",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "lua_show_error",
                    "returnType": 2
                },
                {
                    "id": "1c4559e6-ac70-4365-a31c-9a9fba59964b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        1,
                        2
                    ],
                    "externalName": "lua_add_function",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "lua_add_function",
                    "returnType": 2
                },
                {
                    "id": "09a222b3-7928-43c9-8db1-99c66a0ba47a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        1
                    ],
                    "externalName": "lua_global_get_raw",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "lua_global_get_raw",
                    "returnType": 2
                },
                {
                    "id": "4cbe2ba5-cb8a-4806-966f-126b06c33fd4",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        1
                    ],
                    "externalName": "lua_global_set_raw",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "lua_global_set_raw",
                    "returnType": 2
                },
                {
                    "id": "f1a53f5d-1341-4ad2-a2c0-3c199604744b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        1
                    ],
                    "externalName": "lua_global_typeof_raw",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "lua_global_typeof_raw",
                    "returnType": 2
                },
                {
                    "id": "c8edb453-f1d0-402e-b4cf-1c04ac90ccad",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        1
                    ],
                    "externalName": "lua_add_file_raw",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "lua_add_file_raw",
                    "returnType": 2
                },
                {
                    "id": "533185b4-b9bd-4588-941d-6f40367851af",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        1
                    ],
                    "externalName": "lua_add_code_raw",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "lua_add_code_raw",
                    "returnType": 2
                },
                {
                    "id": "b3781359-bdd3-483a-ba72-6960c08fcb83",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        1
                    ],
                    "externalName": "lua_call_raw",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "lua_call_raw",
                    "returnType": 2
                },
                {
                    "id": "de5fdf62-8faf-4973-ad73-55d4d85c3006",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        1
                    ],
                    "externalName": "lua_call_start_raw",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "lua_call_start_raw",
                    "returnType": 2
                },
                {
                    "id": "b326c523-7a27-4dd0-a0f7-a50081e724b7",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "lua_call_next_raw",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "lua_call_next_raw",
                    "returnType": 2
                },
                {
                    "id": "b31f0b5c-6573-42e6-8302-2f9ec95e4e6c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "lua_state_gettop",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "lua_state_gettop",
                    "returnType": 2
                },
                {
                    "id": "6b67a5f7-24d8-479f-8820-42ed0a4c06bf",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "lua_table_get_raw",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "lua_table_get_raw",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "extensions\\Apollo.dylib",
            "uncompress": false
        },
        {
            "id": "c2538a41-580e-4d54-9000-3ac1aa7aef45",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": 67108866,
            "filename": "liblua.dylib",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "extensions\\liblua.dylib",
            "uncompress": false
        }
    ],
    "gradleinject": "",
    "helpfile": "",
    "installdir": "",
    "iosProps": true,
    "iosSystemFrameworkEntries": [
        
    ],
    "iosThirdPartyFrameworkEntries": [
        
    ],
    "iosplistinject": "",
    "license": "Proprietary",
    "maccompilerflags": "",
    "maclinkerflags": "",
    "macsourcedir": "",
    "packageID": "cc.yal.luabridge",
    "productID": "F79C97955FD1AF4686EB4EF4EF90F0DB",
    "sourcedir": "",
    "version": "1.1.0"
}