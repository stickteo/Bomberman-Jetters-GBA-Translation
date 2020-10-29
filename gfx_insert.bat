@setlocal enableextensions
@cd /d "%~dp0"

for %%G in (gfx_edit\*.bin) do gba2bmp -t gfx_edit\%%~nG.bin -m gfx_map\%%~nG.map -b gfx_eng\%%~nG.bmp -r

copy rom\input.gba rom\output_gfx.gba

rem gbamdc -cL7 gfx_edit\synthesis_001d8140.bin rom\output_gfx.gba 1d8140
rem gbamdc -cL7 gfx_edit\gameover_00249214.bin rom\output_gfx.gba 249214
rem gbamdc -cL7 gfx_edit\equip_menu_00273388.bin rom\output_gfx.gba 273388
rem gbamdc -cL7 gfx_edit\battle_main_001b04d4.bin rom\output_gfx.gba 1b04d4
rem gbamdc -cL7 gfx_edit\battle_side_001b4488.bin rom\output_gfx.gba 1b4488
rem gbamdc -cL7 gfx_edit\start_menu_00245784.bin rom\output_gfx.gba 245784
rem gbamdc -cL7 gfx_edit\save_menu_00286ce8.bin rom\output_gfx.gba 286ce8
rem gbamdc -cL7 gfx_edit\kaiman_minigame_0019faa4.bin rom\output_gfx.gba 19faa4
rem gbamdc -cL7 gfx_edit\pause_story_00261184.bin rom\output_gfx.gba 261184

for %%G in (gfx_edit\*.bin) do lzss -evo gfx_edit\%%~nG.bin

insert rom\output_gfx.gba gfx_edit\synthesis_001d8140.bin 1d8140
insert rom\output_gfx.gba gfx_edit\gameover_00249214.bin 249214
insert rom\output_gfx.gba gfx_edit\equip_menu_00273388.bin 273388
insert rom\output_gfx.gba gfx_edit\start_menu_00245784.bin 245784

for %%G in (gfx_map_patch\*.ips) do flips -a gfx_map_patch\%%~nG.ips rom\output_gfx.gba

pause
