@ECHO off
cls
:start
ECHO.
ECHO 1. Extract Text MegamanBNLC1
ECHO 2. Extract Text MegamanBNLC2
ECHO 3. Extract Text MegamanBNLC3
ECHO 4. Extract Text MegamanBNLC4
ECHO 5. Extract Text MegamanBNLC5
ECHO 6. Extract Text MegamanBNLC6
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
python3 .\Source\MegamanBNLC_Scripts\extract_mpak.py "%cd%\text_files\message_eng.map" "%cd%\text_files\message_eng.mpak" "%cd%\output_original"
.\Source\TextPet\TextPet.exe Load-Plugins "%cd%\Source\TextPet\plugins" Game MMBN1-LC Read-Text-Archives "%cd%\output_original" --format msg Write-Text-Archives message_eng.tpl --single --format tpl Write-Text-Archives output_edit --format tpl
goto end
:MegamanBNLC2
python3 .\Source\MegamanBNLC_Scripts\extract_mpak.py "%cd%\text_files\message_eng.map" "%cd%\text_files\message_eng.mpak" "%cd%\output_original"
.\Source\TextPet\TextPet.exe Load-Plugins "%cd%\Source\TextPet\plugins" Game MMBN2-LC Read-Text-Archives "%cd%\output_original" --format msg Write-Text-Archives message_eng.tpl --single --format tpl Write-Text-Archives output_edit --format tpl
goto end
:MegamanBNLC3
ECHO TEST
python3 .\Source\MegamanBNLC_Scripts\extract_mpak.py "%cd%\text_files\message_eng.map" "%cd%\text_files\message_eng.mpak" "%cd%\output_original"
.\Source\TextPet\TextPet.exe Load-Plugins "%cd%\Source\TextPet\plugins" Game MMBN3-LC Read-Text-Archives "%cd%\output_original" --format msg Write-Text-Archives message_eng.tpl --single --format tpl Write-Text-Archives output_edit --format tpl
goto end
:MegamanBNLC4
python3 .\Source\MegamanBNLC_Scripts\extract_mpak.py "%cd%\text_files\message_eng.map" "%cd%\text_files\message_eng.mpak" "%cd%\output_original"
.\Source\TextPet\TextPet.exe Load-Plugins "%cd%\Source\TextPet\plugins" Game MMBN4-LC Read-Text-Archives "%cd%\output_original" --format msg Write-Text-Archives message_eng.tpl --single --format tpl Write-Text-Archives output_edit --format tpl
goto end
:MegamanBNLC5
python3 .\Source\MegamanBNLC_Scripts\extract_mpak.py "%cd%\text_files\message_eng.map" "%cd%\text_files\message_eng.mpak" "%cd%\output_original"
.\Source\TextPet\TextPet.exe Load-Plugins "%cd%\Source\TextPet\plugins" Game MMBN5-LC Read-Text-Archives "%cd%\output_original" --format msg Write-Text-Archives message_eng.tpl --single --format tpl Write-Text-Archives output_edit --format tpl
goto end
:MegamanBNLC6
python3 .\Source\MegamanBNLC_Scripts\extract_mpak.py "%cd%\text_files\message_eng.map" "%cd%\text_files\message_eng.mpak" "%cd%\output_original"
.\Source\TextPet\TextPet.exe Load-Plugins "%cd%\Source\TextPet\plugins" Game MMBN6-LC Read-Text-Archives "%cd%\output_original" --format msg Write-Text-Archives message_eng.tpl --single --format tpl Write-Text-Archives output_edit --format tpl
goto end
:end
Echo Extract Text Done!!!
pause