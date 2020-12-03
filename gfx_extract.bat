mkdir gfx_edit

gbamdc -e rom\input.gba gfx_edit\equip_menu_00273388.bin 273388
gbamdc -e rom\input.gba gfx_edit\battle_main_001b04d4.bin 1b04d4
gbamdc -e rom\input.gba gfx_edit\battle_side_001b4488.bin 1b4488
gbamdc -e rom\input.gba gfx_edit\start_menu_00245784.bin 245784
gbamdc -e rom\input.gba gfx_edit\save_menu_00286ce8.bin 286ce8
gbamdc -e rom\input.gba gfx_edit\gameover_00249214.bin 249214
gbamdc -e rom\input.gba gfx_edit\kaiman_minigame_0019faa4.bin 19faa4
gbamdc -e rom\input.gba gfx_edit\synthesis_001d8140.bin 1d8140
gbamdc -e rom\input.gba gfx_edit\pause_story_00261184.bin 261184
gbamdc -e rom\input.gba gfx_edit\title_00241384.bin256 241384

for %%G in (gfx_edit\*.bin) do gba2bmp -t gfx_edit\%%~nG.bin -m gfx_map\%%~nG.map -b gfx_edit\%%~nG.bmp
for %%G in (gfx_edit\*.bin256) do gba2bmp -B -t gfx_edit\%%~nG.bin256 -m gfx_map\%%~nG.map -b gfx_edit\%%~nG.bmp

mkdir gfx_eng

robocopy /xc /xn /xo gfx_edit\ gfx_eng\ *.bmp

pause
