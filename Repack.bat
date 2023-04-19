@ECHO off
cls
:start
ECHO.
ECHO 1. Repack Text MegamanBNLC1
ECHO 2. Repack Text MegamanBNLC2
ECHO 3. Repack Text MegamanBNLC3
ECHO 4. Repack Text MegamanBNLC4
ECHO 5. Repack Text MegamanBNLC5
ECHO 6. Repack Text MegamanBNLC6
set choice=
set /p choice=Enter Number 1-6:
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto MegamanBNLC1
if '%choice%'=='2' goto MegamanBNLC2
if '%choice%'=='3' goto MegamanBNLC3
if '%choice%'=='4' goto MegamanBNLC4
if '%choice%'=='5' goto MegamanBNLC5
if '%choice%'=='6' goto MegamanBNLC6
ECHO "%choice%" is not valid, try again
ECHO.
goto start
:MegamanBNLC1
.\Source\TextPet\TextPet.exe Load-Plugins "%cd%\Source\TextPet\plugins" Game MMBN1-LC Read-Text-Archives "%cd%\output_original" --format msg Read-Text-Archives "%cd%\output_edit" --format tpl --patch Write-Text-Archives repack_msg --format msg
python3 .\Source\MegamanBNLC_Scripts\build_mpak.py "%cd%\text_files\message_eng.map" message_eng.map.new message_eng.mpak.new "%cd%\repack_msg"
goto end
:MegamanBNLC2
.\Source\TextPet\TextPet.exe Load-Plugins "%cd%\Source\TextPet\plugins" Game MMBN2-LC Read-Text-Archives "%cd%\output_original" --format msg Read-Text-Archives "%cd%\output_edit" --format tpl --patch Write-Text-Archives repack_msg --format msg
python3 .\Source\MegamanBNLC_Scripts\build_mpak.py "%cd%\text_files\message_eng.map" message_eng.map.new message_eng.mpak.new "%cd%\repack_msg"
goto end
:MegamanBNLC3
ECHO TEST
.\Source\TextPet\TextPet.exe Load-Plugins "%cd%\Source\TextPet\plugins" Game MMBN3-LC Read-Text-Archives "%cd%\output_original" --format msg Read-Text-Archives "%cd%\output_edit" --format tpl --patch Write-Text-Archives repack_msg --format msg
python3 .\Source\MegamanBNLC_Scripts\build_mpak.py "%cd%\text_files\message_eng.map" message_eng.map.new message_eng.mpak.new "%cd%\repack_msg"
goto end
:MegamanBNLC4
.\Source\TextPet\TextPet.exe Load-Plugins "%cd%\Source\TextPet\plugins" Game MMBN4-LC Read-Text-Archives "%cd%\output_original" --format msg Read-Text-Archives "%cd%\output_edit" --format tpl --patch Write-Text-Archives repack_msg --format msg
python3 .\Source\MegamanBNLC_Scripts\build_mpak.py "%cd%\text_files\message_eng.map" message_eng.map.new message_eng.mpak.new "%cd%\repack_msg"
goto end
:MegamanBNLC5
.\Source\TextPet\TextPet.exe Load-Plugins "%cd%\Source\TextPet\plugins" Game MMBN5-LC Read-Text-Archives "%cd%\output_original" --format msg Read-Text-Archives "%cd%\output_edit" --format tpl --patch Write-Text-Archives repack_msg --format msg
python3 .\Source\MegamanBNLC_Scripts\build_mpak.py "%cd%\text_files\message_eng.map" message_eng.map.new message_eng.mpak.new "%cd%\repack_msg"
goto end
:MegamanBNLC6
.\Source\TextPet\TextPet.exe Load-Plugins "%cd%\Source\TextPet\plugins" Game MMBN5-LC Read-Text-Archives "%cd%\output_original" --format msg Read-Text-Archives "%cd%\output_edit" --format tpl --patch Write-Text-Archives repack_msg --format msg
python3 .\Source\MegamanBNLC_Scripts\build_mpak.py "%cd%\text_files\message_eng.map" message_eng.map.new message_eng.mpak.new "%cd%\repack_msg"
goto end
:end
Echo Repack Text Done!!!
pause