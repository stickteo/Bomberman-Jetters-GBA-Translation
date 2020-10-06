gbamdc -e rom\input.gba gfx_edit\equip_menu_0027388.bin 273388
gbamdc -e rom\input.gba gfx_edit\battle_main_001b04d4.bin 1b04d4
gbamdc -e rom\input.gba gfx_edit\battle_side_001b4488.bin 1b4488
gbamdc -e rom\input.gba gfx_edit\start_menu_00245784.bin 245784

gba2bmp -t gfx_edit\equip_menu_0027388.bin -m gfx_map\equip_menu_00273388.map -b gfx_edit\equip_menu_0027388.bmp
gba2bmp -t gfx_edit\battle_main_001b04d4.bin -m gfx_map\battle_main_001b04d4.map -b gfx_edit\battle_main_001b04d4.bmp
gba2bmp -t gfx_edit\battle_side_001b4488.bin -m gfx_map\battle_side_001b4488.map -b gfx_edit\battle_side_001b4488.bmp
gba2bmp -t gfx_edit\start_menu_00245784.bin -m gfx_map\start_menu_00245784.map -b gfx_edit\start_menu_00245784.bmp

robocopy /xc /xn /xo gfx_edit\ gfx_eng\ *.bmp

pause
