@setlocal enableextensions
@cd /d "%~dp0"

gba2bmp -t gfx_edit\equip_menu_0027388.bin -m gfx_map\equip_menu_00273388.map -b gfx_eng\equip_menu_0027388.bmp -r
gba2bmp -t gfx_edit\battle_main_001b04d4.bin -m gfx_map\battle_main_001b04d4.map -b gfx_eng\battle_main_001b04d4.bmp -r
gba2bmp -t gfx_edit\battle_side_001b4488.bin -m gfx_map\battle_side_001b4488.map -b gfx_eng\battle_side_001b4488.bmp -r
gba2bmp -t gfx_edit\start_menu_00245784.bin -m gfx_map\start_menu_00245784.map -b gfx_eng\start_menu_00245784.bmp -r

copy rom\input.gba rom\output_gfx.gba

gbamdc -cL7 gfx_edit\equip_menu_0027388.bin rom\output_gfx.gba 273388
gbamdc -cL7 gfx_edit\battle_main_001b04d4.bin rom\output_gfx.gba 1b04d4
gbamdc -cL7 gfx_edit\battle_side_001b4488.bin rom\output_gfx.gba 1b4488
gbamdc -cL7 gfx_edit\start_menu_00245784.bin rom\output_gfx.gba 245784

pause
