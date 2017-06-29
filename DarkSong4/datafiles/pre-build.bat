@echo off
cd datafiles
cmd /C ApolloGen.exe ../scripts/def_keyboard.gml ../scripts/ref_keyboard.gml
cmd /C ApolloGen.exe ../scripts/def_gamepad.gml ../scripts/ref_gamepad.gml
cmd /C ApolloGen.exe ../scripts/def_instance.gml ../scripts/ref_instance.gml
cmd /C ApolloGen.exe ../scripts/def_real.gml ../scripts/ref_real.gml
cmd /C ApolloGen.exe ../scripts/def_string.gml ../scripts/ref_string.gml
cmd /C ApolloGen.exe ../scripts/def_color.gml ../scripts/ref_color.gml
cmd /C ApolloGen.exe ../scripts/def_draw.gml ../scripts/ref_draw.gml
cmd /C ApolloGen.exe ../scripts/def_text.gml ../scripts/ref_text.gml
cmd /C ApolloGen.exe ../scripts/def_sprite.gml ../scripts/ref_sprite.gml
cmd /C ApolloGen.exe ../scripts/def_background.gml ../scripts/ref_background.gml
pause