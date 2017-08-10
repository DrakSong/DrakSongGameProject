{
    "id": "d0ec3209-19f9-4318-b14e-4bae35a53043",
    "modelName": "GMExtension",
    "mvc": "1.0",
    "name": "TweenGMS",
    "IncludedResources": [
        "Scripts\\TweenGMS\\Core\\Ease",
        "Scripts\\TweenGMS\\Core\\TweenNull",
        "Scripts\\TweenGMS\\Core\\TweenFire",
        "Scripts\\TweenGMS\\Core\\TweenCreate",
        "Scripts\\TweenGMS\\Core\\TweenPlay",
        "Scripts\\TweenGMS\\Core\\TweenPause",
        "Scripts\\TweenGMS\\Core\\TweenResume",
        "Scripts\\TweenGMS\\Core\\TweenStop",
        "Scripts\\TweenGMS\\Core\\TweenFinish",
        "Scripts\\TweenGMS\\Core\\TweenFinishDelay",
        "Scripts\\TweenGMS\\Core\\TweenReverse",
        "Scripts\\TweenGMS\\Core\\TweenDestroy",
        "Scripts\\TweenGMS\\Core\\TGMS_TweenBool",
        "Scripts\\TweenGMS\\Core\\TGMS_Callback",
        "Scripts\\TweenGMS\\Core\\TGMS_Event",
        "Scripts\\TweenGMS\\Core\\TGMS_TweenGet",
        "Scripts\\TweenGMS\\Core\\TGMS_TweenSet",
        "Scripts\\TweenGMS\\Core\\TGMS_Utility",
        "Scripts\\TweenGMS\\Core\\SharedTweener",
        "Scripts\\TweenGMS\\Eases and Properties\\Default_Ease_Algorithms",
        "Scripts\\TweenGMS\\Eases and Properties\\Default_Property_Setters",
        "Scripts\\TweenGMS\\Eases and Properties\\Default_Property_Setters_Ext",
        "Scripts\\TweenGMS\\Extra (Not Required)\\TPExt",
        "Scripts\\TweenGMS\\Extra (Not Required)\\TweenCalc",
        "Scripts\\TweenGMS\\Extra (Not Required)\\TweenStep",
        "Scripts\\TweenGMS\\Extra (Not Required)\\TweenDefault",
        "Scripts\\TweenGMS\\Extra (Not Required)\\TweenPath",
        "Scripts\\TweenGMS\\Extra (Not Required)\\TGMS_TweenSimple",
        "Scripts\\TweenGMS\\Extra (Not Required)\\TGMS_TweenDataStructure",
        "Scripts\\TweenGMS\\Extra (Not Required)\\TGMS_TweenView",
        "Scripts\\TweenGMS\\Extra (Not Required)\\TGMS_TweenBackground",
        "Scripts\\TweenGMS\\Extra (Not Required)\\TGMS_TweenTile",
        "Scripts\\TweenGMS\\Extra (Not Required)\\TGMS_TweenSystem",
        "Scripts\\TweenGMS\\Deprecated (Please Remove)\\TweenCopy",
        "Scripts\\TweenGMS\\Deprecated (Please Remove)\\TweenDefine",
        "Objects\\TweenGMS\\obj_SharedTweener",
        "Included Files\\TweenGMS\\Starter_Guide.html",
        "Included Files\\TweenGMS\\Script_Reference.html",
        "Included Files\\TweenGMS\\Project_Downloads.txt",
        "Included Files\\TweenGMS\\Update_Log.txt",
        "Included Files\\TweenGMS\\Required Changes.txt"
    ],
    "androidPermissions": [
        
    ],
    "androidProps": false,
    "androidactivityinject": "",
    "androidclassname": "",
    "androidinject": "",
    "androidmanifestinject": "",
    "androidsourcedir": "",
    "author": "",
    "classname": "",
    "copyToTargets": -1,
    "date": "2017-43-09 09:08:24",
    "description": "Tweening Engine",
    "extensionName": "",
    "files": [
        {
            "id": "d5f00291-f805-4786-b352-2a725828e232",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                {
                    "id": "7db63594-b925-4c4c-98bf-01183cd22dcf",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "TWEEN_MODE_ONCE",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "a1695b8a-1d19-4d41-868d-497a795b7c77",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "TWEEN_MODE_BOUNCE",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "f718b6d6-6a3a-4336-8ed2-d3301187dcd1",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "TWEEN_MODE_PATROL",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "041b3bac-2fb4-4671-ab9a-d353866cd13c",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "TWEEN_MODE_LOOP",
                    "hidden": false,
                    "value": "3"
                },
                {
                    "id": "6eba489a-412e-4695-bd15-1f42b61479f0",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "TWEEN_MODE_REPEAT",
                    "hidden": false,
                    "value": "4"
                },
                {
                    "id": "381dedaa-3a68-43db-a9f6-429f125f04ae",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "TWEEN_EV_PLAY",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "ce8085fb-8287-43d5-b8c8-961aa208c605",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "TWEEN_EV_FINISH",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "589c2c42-3b83-4d91-b7ac-b08aa7223da0",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "TWEEN_EV_STOP",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "2efe1f0b-b9dd-4e70-aed0-f65c14dfdcf9",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "TWEEN_EV_PAUSE",
                    "hidden": false,
                    "value": "3"
                },
                {
                    "id": "5d646066-f878-4619-b8bd-b899021d9f11",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "TWEEN_EV_RESUME",
                    "hidden": false,
                    "value": "4"
                },
                {
                    "id": "72338292-2502-4496-a7ae-e78f724470a8",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "TWEEN_EV_CONTINUE",
                    "hidden": false,
                    "value": "5"
                },
                {
                    "id": "e3735428-5931-455d-bbcb-566eab118c63",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "TWEEN_EV_REVERSE",
                    "hidden": false,
                    "value": "6"
                },
                {
                    "id": "4389759f-ed84-497a-b6fd-a9e702899f54",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "TWEEN_EV_STOP_DELAY",
                    "hidden": false,
                    "value": "7"
                },
                {
                    "id": "421c6483-897b-460f-beb4-5fd08b51e6d5",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "TWEEN_EV_PAUSE_DELAY",
                    "hidden": false,
                    "value": "8"
                },
                {
                    "id": "4727a37d-4e21-4d45-940b-935976f1c880",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "TWEEN_EV_RESUME_DELAY",
                    "hidden": false,
                    "value": "9"
                },
                {
                    "id": "b40f91d8-50de-40e0-ab6c-670ea9c31aaf",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "TWEEN_EV_FINISH_DELAY",
                    "hidden": false,
                    "value": "10"
                },
                {
                    "id": "a79bd3d0-d109-4a66-97ee-fe4b760c9334",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "TWEENS_ALL",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "6b3a6a85-fdce-4225-b218-8ec6bb5e90f1",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "TWEENS_GROUP",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "b7a08480-0d45-4c02-a274-d3ad29c8386b",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "TWEENS_TARGET",
                    "hidden": false,
                    "value": "3"
                }
            ],
            "copyToTargets": 17593242063086,
            "filename": "TGMS_Setup.gml",
            "final": "TGMS_Ext_Final",
            "functions": [
                {
                    "id": "93cf6268-2979-4d1e-9db7-f9936234a664",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "",
                    "help": "",
                    "hidden": false,
                    "kind": 0,
                    "name": "TGMS_Ext_Init",
                    "returnType": 2
                },
                {
                    "id": "4eb70f64-8cd0-47d0-a995-9b9b757ef8e5",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "",
                    "help": "",
                    "hidden": false,
                    "kind": 0,
                    "name": "TGMS_Ext_Final",
                    "returnType": 2
                }
            ],
            "init": "TGMS_Ext_Init",
            "kind": 2,
            "order": [
                
            ],
            "origname": "extensions\\TGMS_Setup.gml",
            "uncompress": false
        },
        {
            "id": "3470b2b9-9e78-4f58-a6c9-a8cde130bcbd",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": 0,
            "filename": "TERMS_OF_USE.txt",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 4,
            "order": [
                
            ],
            "origname": "extensions\\TERMS_OF_USE.txt",
            "uncompress": false
        }
    ],
    "gradleinject": "",
    "helpfile": "C:\\Users\\Stephen\\Dropbox\\My Projects\\GameMaker\\Tools\\TweenGMS\\Documentation\\TweenGMS_Reference.html",
    "installdir": "",
    "iosProps": false,
    "iosSystemFrameworkEntries": [
        
    ],
    "iosThirdPartyFrameworkEntries": [
        
    ],
    "iosplistinject": "",
    "license": "* TERMS OF USE - TweenGMS\\u000d\\u000a* Copyright (c)2014 Stephen Loney\\u000d\\u000a* All rights reserved.\\u000d\\u000a* Redistribution of source files, with or without modification, is prohibited, unless special permission is granted. However, redistribution of source files, with or without modification, may be transferred internally among project team members.\\u000d\\u000a* Redistribution and use in binary forms, with or without modification, are permitted provided that the following conditions are met:\\u000d\\u000a* Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and\/or other materials provided with the distribution.\\u000d\\u000a* Neither the name of the author nor the names of contributors may be used to endorse or promote products derived from this software without specific prior written permission.\\u000d\\u000a* Distributed applications using this tool must credit \"Stephen Loney\" within the application or its associated documentation. However, those who have donated to this project are exempt from having to do so.\\u000d\\u000a* THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS \"AS IS\" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.\\u000d\\u000a*\\u000d\\u000a* ================================================\\u000d\\u000a*\\u000d\\u000a* TERMS OF USE - EASING EQUATIONS\\u000d\\u000a* Open source under the BSD License.\\u000d\\u000a* Copyright (c)2001 Robert Penner\\u000d\\u000a* All rights reserved.\\u000d\\u000a* Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:\\u000d\\u000a* Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.\\u000d\\u000a* Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and\/or other materials provided with the distribution.\\u000d\\u000a* Neither the name of the author nor the names of contributors may be used to endorse or promote products derived from this software without specific prior written permission.\\u000d\\u000a* THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS \"AS IS\" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.\\u000d\\u000a*",
    "maccompilerflags": "",
    "maclinkerflags": "",
    "macsourcedir": "",
    "packageID": "com.8bitwarrior.tweengms",
    "productID": "4017B2D58828FB76C8CC13C0B0E44317",
    "sourcedir": "",
    "version": "0.9.75"
}