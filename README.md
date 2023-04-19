# MegamanBNLC_TextEditor
Megaman Battle Network Legacy Collection Translation Tools

Thank's Prof. 9 for source code.

Requirements:
Python 3+
.NET Framework 4.8.1
Notepad++
```bash
Step 1: Copy your text files (message_eng.map and message_eng.mpak) to folder text_files

Step 2: Run Extract_Text.bat choice version Megaman Battle Network you want to extract

Step 3: Now you have message_eng.tpl in main folder for searching text for translate

Step 4: After done finding, you can find @archive to edit in folder output_edit 
[Sample: You want to edit "Lan, wake up!" you need to find where text in @archive. After find, "Lan, wake up!" inside @archive 713414.
Now you need go to folder output_edit and find file 713414.tpl and edit it.]

Step 5: Run Repack.bat after editing and choice right version you want repack.

Step 6: "message_eng.map.new" "message_eng.mpak.new" will appear in main folder

```
