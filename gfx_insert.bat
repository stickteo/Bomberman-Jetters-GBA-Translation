@setlocal enableextensions
@cd /d "%~dp0"

for %%G in (gfx_edit\*.bin) do gba2bmp -t gfx_edit\%%~nG.bin -m gfx_map\%%~nG.map -b gfx_eng\%%~nG.bmp -r

copy rom\input.gba rom\output_gfx.gba

gbamdc -cL7 gfx_edit\equip_menu_0027388.bin rom\output_gfx.gba 273388
gbamdc -cL7 gfx_edit\battle_main_001b04d4.bin rom\output_gfx.gba 1b04d4
gbamdc -cL7 gfx_edit\battle_side_001b4488.bin rom\output_gfx.gba 1b4488
gbamdc -cL7 gfx_edit\start_menu_00245784.bin rom\output_gfx.gba 245784
gbamdc -cL7 gfx_edit\save_menu_00286ce8.bin rom\output_gfx.gba 286ce8

pause
