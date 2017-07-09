{
    "id": "0bb6e71a-2906-488b-a783-57f582aa91a9",
    "modelName": "GMExtension",
    "mvc": "1.0",
    "name": "Apollo",
    "IncludedResources": [
        
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
    "date": "2017-38-21 02:06:41",
    "description": "",
    "extensionName": "",
    "files": [
        {
            "id": "7f408c88-294d-475d-8e8f-707afdac24ab",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                {
                    "id": "1592d201-afc4-493a-b9c0-b54ad7432ba1",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "luabridge_status_done",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "2da627ed-82a9-4cda-8b09-e968fa1e2e18",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "luabridge_status_call",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "f6d33b64-0b6f-485a-a241-f1246f7b3086",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "luabridge_status_error",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "77d2548d-ef8a-458f-8751-53b25ad77814",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "luabridge_type_nil",
                    "hidden": true,
                    "value": "0"
                },
                {
                    "id": "3ddfcd0c-2b08-4e4a-8046-436928aea31c",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "luabridge_type_bool",
                    "hidden": true,
                    "value": "1"
                },
                {
                    "id": "f202b0c3-561d-4d84-852f-52e333d7f04c",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "luabridge_type_int32",
                    "hidden": true,
                    "value": "2"
                },
                {
                    "id": "17aec412-0545-4309-bbc0-5b60edd03a2d",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "luabridge_type_int64",
                    "hidden": true,
                    "value": "3"
                },
                {
                    "id": "fefab213-3d8b-435e-8ad0-8774864ee624",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "luabridge_type_real",
                    "hidden": true,
                    "value": "4"
                },
                {
                    "id": "83c8333a-7c73-4c78-bbb9-46145d46e196",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "luabridge_type_string",
                    "hidden": true,
                    "value": "5"
                },
                {
                    "id": "3fc29015-3d45-4c0b-953f-cd398408c4f1",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "luabridge_type_table",
                    "hidden": true,
                    "value": "6"
                },
                {
                    "id": "be5ed077-7b42-49da-9487-8c8430246d15",
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
                    "id": "30860af1-392a-46e1-981b-d7461f46fcab",
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
                    "id": "5b66ac9f-85c0-4c00-a31b-66b6dc3a22bc",
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
                    "id": "73dd73f1-3986-49bd-bdb0-9b157fe93fb3",
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
                    "id": "a852f958-46eb-4a53-b9d3-5c600ff16811",
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
                    "id": "efb8e9a0-a754-4851-95e5-5b0a4cd91e05",
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
                    "id": "83d06e38-a634-49f3-8164-f6e1975e678e",
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
                    "id": "bb86de1f-9745-46b6-b935-51752a6015e7",
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
                    "id": "7c5de400-ec5b-4b57-967f-d2e96464668f",
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
                    "id": "ff36beaa-8ceb-4b09-a5d1-f72221d842f0",
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
                    "id": "cdb23739-e6b5-41ff-a001-1dabf5fa0ab3",
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
                    "id": "e8eda679-64f0-4ac6-ab4c-a6b14998eb32",
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
                    "id": "ebb587a4-f0b8-4fdc-b0df-81572f193871",
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
                    "id": "5d1f0ccf-0d05-48c9-b500-32ecc9fd9bcd",
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
                    "id": "e7dac49a-901f-4983-b369-a51918d1aa2d",
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
                    "id": "8205d326-423d-4544-a4d9-d6dc51c2b973",
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
                    "id": "d851b22b-7390-49ea-988a-7f0a1fe41a43",
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
                    "id": "24cfded4-adac-4900-83fa-074849710bcf",
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
                    "id": "45974925-f182-4e84-984d-27ef343a4189",
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
                    "id": "27b66ef4-1634-4a8b-9d59-53ee72279241",
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
                    "id": "9d23b4c9-2805-468f-ac04-24161552a4db",
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
            "id": "14d791a4-007c-42fe-96b5-91cd81b28819",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                {
                    "id": "ad84e0ed-e14b-4d07-a76c-26d98ac69b29",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "lua_ptr_boolean",
                    "hidden": true,
                    "value": "1"
                },
                {
                    "id": "1d1413b5-ff41-4018-a41b-b73bedfa45f9",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "lua_ptr_table",
                    "hidden": true,
                    "value": "2"
                },
                {
                    "id": "41235aba-7198-44a4-9dc0-55abe2646193",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "lua_ptr_function",
                    "hidden": true,
                    "value": "3"
                },
                {
                    "id": "609b4343-cd2b-4e5a-8a0c-c099906a3177",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "lua_buffer",
                    "hidden": true,
                    "value": "global.g_lua_buffer"
                },
                {
                    "id": "17063787-8259-4d4f-9139-59001601d211",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "lua_error_handler",
                    "hidden": false,
                    "value": "global.g_lua_error_handler"
                },
                {
                    "id": "7971976f-86a4-4aea-9a52-4689e1078128",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "lua_error_handler \/* (text, state_id) *\/",
                    "hidden": false,
                    "value": "global.g_lua_error_handler"
                },
                {
                    "id": "26f4cdc8-f646-479f-8738-94d5f771e75d",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "lua_true",
                    "hidden": false,
                    "value": "global.g_lua_true"
                },
                {
                    "id": "18610706-b4df-46ed-97dc-4890e3f8552d",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "lua_true \/* Converted to a Lua' true-value when sent to it. *\/",
                    "hidden": false,
                    "value": "global.g_lua_true"
                },
                {
                    "id": "386e9495-0cbb-403c-8888-f136f833f7fc",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "lua_false",
                    "hidden": false,
                    "value": "global.g_lua_false"
                },
                {
                    "id": "a1bbd91c-fba9-40ca-b654-46544d256599",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "lua_false \/* Converted to a Lua' true-value when sent to it. *\/",
                    "hidden": false,
                    "value": "global.g_lua_false"
                },
                {
                    "id": "15c5cea6-ce8c-407d-a397-8dfcdd74ceda",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "lua_current",
                    "hidden": false,
                    "value": "global.g_lua_current"
                },
                {
                    "id": "cd6656bd-a965-4438-8a38-eb6eaf07cd8a",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "lua_current \/* The currently executing Lua state\/thread. *\/",
                    "hidden": false,
                    "value": "global.g_lua_current"
                },
                {
                    "id": "b00e921d-b0da-40cf-a43e-2355580451d9",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "lua_call_status",
                    "hidden": false,
                    "value": "global.g_lua_call_status"
                },
                {
                    "id": "8beff861-c83c-4251-b8df-1b822f1c8cff",
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
                    "id": "5d6aa028-6f6a-4b10-93f0-274645d5ec40",
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
                    "id": "b8d55876-72d9-4d41-8cc9-07ef57883a9d",
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
                    "id": "77061be7-f1ed-4cdd-9403-f42f9e998d08",
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
                    "id": "74ef40bd-2bb4-4703-a58c-6190a4bdaa94",
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
                    "id": "4119d526-e190-4154-9708-5ed484c7b731",
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
                    "id": "cdaa3cde-153c-456d-8156-bbb4af6661b6",
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
                    "id": "b0cc9b18-f32f-4822-8b3a-66448fc1b7fa",
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
                    "id": "6f74fff6-ca9f-457b-bf44-1ab97014bc35",
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
                    "id": "693b7058-56c5-4d92-9b2a-78228da26545",
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
                    "id": "3989eda9-46be-4224-8720-2049c24ee7c2",
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
                    "id": "03ffe138-88e1-4e73-a964-31b70b032f0a",
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
                    "id": "7300ff8a-dc94-49f5-a572-12d30567e48b",
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
                    "id": "e050d40b-c64b-4b5f-8d77-f5accb75ea51",
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
                    "id": "252f67b1-c12b-4e76-b7d6-9d7a9093fab5",
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
                    "id": "5c64bf71-402a-436d-b090-866379e5085b",
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
                    "id": "363b21d8-c7e2-4bde-bb10-133d74268080",
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
                    "id": "831909f3-eb2c-47e0-b358-25e9a33f5fd5",
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
                    "id": "8006fd32-f542-450f-8791-8b8bb3cbcf2e",
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
                    "id": "ac1dfc37-eaf8-465a-bf34-084aea840a2c",
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
                    "id": "0b63ed4a-7be5-44ba-b458-1876918de3c0",
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
                    "id": "b84e76d0-fc41-4507-b8fb-ba2cebd050a8",
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
                    "id": "135230fb-138c-41bb-824c-2fb531191420",
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
            "id": "f980d01a-401d-45cc-9286-c93f613785d3",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                {
                    "id": "4afae993-645c-4aec-b659-3696f2a307e6",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "luabridge_status_done",
                    "hidden": true,
                    "value": "0"
                },
                {
                    "id": "e7711b41-5b77-445b-9904-bb99085da5e3",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "luabridge_status_call",
                    "hidden": true,
                    "value": "1"
                },
                {
                    "id": "f50c9575-cc6f-40c3-a38b-8b7de565a70e",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "luabridge_status_error",
                    "hidden": true,
                    "value": "2"
                },
                {
                    "id": "c64d38c5-4f30-47d6-aef3-9bcf07633eaf",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "luabridge_type_nil",
                    "hidden": true,
                    "value": "0"
                },
                {
                    "id": "0965cd17-dc71-4de7-9fb6-2a03b2861881",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "luabridge_type_bool",
                    "hidden": true,
                    "value": "1"
                },
                {
                    "id": "f1199fa0-175f-4f4c-acc9-5072f8b4867a",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "luabridge_type_int32",
                    "hidden": true,
                    "value": "2"
                },
                {
                    "id": "64f3cb8b-ff7b-4727-8a04-7272fff0392e",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "luabridge_type_int64",
                    "hidden": true,
                    "value": "3"
                },
                {
                    "id": "d6d47214-84bc-47d8-a88e-8dfd8631d05f",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "luabridge_type_real",
                    "hidden": true,
                    "value": "4"
                },
                {
                    "id": "e219413d-c8cc-433c-8f03-9e18fee06a54",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "luabridge_type_string",
                    "hidden": true,
                    "value": "5"
                },
                {
                    "id": "536b5302-f698-4a51-b9c7-ff3c621b40a2",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "luabridge_type_table",
                    "hidden": true,
                    "value": "6"
                },
                {
                    "id": "890be864-ca39-4cb1-86ef-e7b8094bb2e4",
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
                    "id": "9f3f1383-2450-4184-8294-e2c2cab0e19e",
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
                    "id": "53bd384a-d0c7-43ce-b302-c70f9a0d6b10",
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
                    "id": "9b413596-ab80-48f2-86d2-372ee7facf2a",
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
                    "id": "1223d2f3-629b-48b6-b080-a5c06640ada4",
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
                    "id": "79ef1d12-4f57-458c-a494-e88a7d23c978",
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
                    "id": "4fb6b8ca-b6f4-4c5d-b67a-07678b90a983",
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
                    "id": "bb2fd30f-dd68-4c87-8af9-8e92f6709a2e",
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
                    "id": "6828b156-d7b9-4f4c-90be-f18cd8e11ac6",
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
                    "id": "55924acd-e38a-43a8-b91d-2715812431fd",
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
                    "id": "0d5e5b24-8210-4937-9637-8f0af90a5745",
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
                    "id": "d3274c58-01bb-4352-bffe-adf43e3a3436",
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
                    "id": "f71f037c-670c-4cb6-9ec1-5bd5fd25f341",
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
                    "id": "4d07984c-66b7-4a18-8fc1-8b5a5c9a9086",
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
                    "id": "104ec8be-c375-47db-a5ed-15bc7151dc2f",
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
                    "id": "cb0452f9-ff19-4dfb-bcc6-174638607a1d",
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
                    "id": "069783b7-736f-4920-a210-ab285a1c0486",
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
                    "id": "41fc6a1b-f41a-4570-a0f7-fd45c5450039",
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
                    "id": "09059d4a-4faa-4a34-89a1-83618f412941",
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
                    "id": "be9eca7d-bc9e-4d46-8409-6e19c031f41b",
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
                    "id": "c367704e-ff84-4609-9556-343ca8263866",
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
            "id": "5ebe53ea-5a0d-43c6-a8b4-66bbab13b249",
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
            "id": "de14b4fe-75aa-4a53-b4b5-d4d415be5324",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                {
                    "id": "a36d926a-f7b2-4399-b5ae-367e7aa9276d",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "luabridge_status_done",
                    "hidden": true,
                    "value": "0"
                },
                {
                    "id": "f335a6f5-50ee-4af6-9102-ff89e6cc7adb",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "luabridge_status_call",
                    "hidden": true,
                    "value": "1"
                },
                {
                    "id": "68bb1d38-8f6a-4836-8b89-f6842382e658",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "luabridge_status_error",
                    "hidden": true,
                    "value": "2"
                },
                {
                    "id": "60dc7543-aa01-4107-b460-bfc5711202f6",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "luabridge_type_nil",
                    "hidden": true,
                    "value": "0"
                },
                {
                    "id": "e146f696-bd7e-4fb4-abe6-eec5b854c754",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "luabridge_type_bool",
                    "hidden": true,
                    "value": "1"
                },
                {
                    "id": "3750ab79-378e-4b44-83d2-2b8668ae5e2c",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "luabridge_type_int32",
                    "hidden": true,
                    "value": "2"
                },
                {
                    "id": "49823eda-07a3-44ad-8183-cd2f0e8b323b",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "luabridge_type_int64",
                    "hidden": true,
                    "value": "3"
                },
                {
                    "id": "eed2e91c-2fd6-4170-a518-91654bb1d02e",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "luabridge_type_real",
                    "hidden": true,
                    "value": "4"
                },
                {
                    "id": "3a096ad4-e71d-4a57-a9cf-f1082b03d016",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "luabridge_type_string",
                    "hidden": true,
                    "value": "5"
                },
                {
                    "id": "6d64c59a-b961-4bcf-a263-838526b6c125",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "luabridge_type_table",
                    "hidden": true,
                    "value": "6"
                },
                {
                    "id": "01895176-2d17-4c6a-8da7-e95b969c7e25",
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
                    "id": "b3bf93a7-431e-4d77-8070-976760d85712",
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
                    "id": "e650bd37-364a-4320-adea-2ad826336652",
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
                    "id": "580b4b8b-9db6-4bef-9b2c-f0c2926d59a5",
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
                    "id": "acaff2c7-0357-4af0-a98f-b44cfb6f857a",
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
                    "id": "0b4cba61-6b1b-4c7f-b616-39fe1a0f90b2",
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
                    "id": "f5658ca6-420f-4d73-845a-c2db70ac5e26",
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
                    "id": "5abc1793-1077-45d0-ae69-cbe0c6ea8f54",
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
                    "id": "bb79028f-7cdd-496b-9514-4c9843725318",
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
                    "id": "ae152945-0e2d-4348-a0c3-1bf7d5bd0593",
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
                    "id": "f7acd395-42fc-4f3b-a762-cb9e6c9c6c2d",
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
                    "id": "3d331be6-19a2-4519-b431-8fd6adb92e86",
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
                    "id": "492dc71b-38da-4e52-ac91-98d961e1f7ad",
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
                    "id": "4fb0ee5e-f81a-4106-9bdb-aef68227110b",
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
                    "id": "c782c599-9df2-4ca7-a778-2bd6d5aba232",
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
                    "id": "205ec702-51f0-476c-a292-a2497b1b523a",
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
                    "id": "abf8e2c0-ad53-4030-af86-81302728ff20",
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
                    "id": "e50b6a90-57d5-4c71-8ed4-54ea6db86352",
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
                    "id": "e9609b9c-1353-4e91-ad7d-fb3989471147",
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
                    "id": "87430ce7-d36c-4fce-ac11-a769e758e45f",
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
                    "id": "51bc282b-4976-4e0c-93b4-a9d9fb9a97f1",
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
            "id": "94f76673-f907-40ae-beb3-1c00348aa5c7",
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
    "productID": "",
    "sourcedir": "",
    "version": "1.0.1"
}