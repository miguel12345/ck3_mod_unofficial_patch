copy "hs_fix.mod" "%UserProfile%\Documents\Paradox Interactive\Crusader Kings III\mod\hs_fix.mod"
copy "%UserProfile%\Documents\Paradox Interactive\Crusader Kings III\dlc_load.json" "%UserProfile%\Documents\Paradox Interactive\Crusader Kings III\dlc_load.json.bk"
copy "_dlc_load.json" "%UserProfile%\Documents\Paradox Interactive\Crusader Kings III\dlc_load.json"
start /wait /d "C:\Program Files (x86)\Steam\steamapps\common\Crusader Kings III\binaries" ck3.exe -debug_mode -develop
copy "%UserProfile%\Documents\Paradox Interactive\Crusader Kings III\dlc_load.json.bk" "%UserProfile%\Documents\Paradox Interactive\Crusader Kings III\dlc_load.json"
DEL  "%UserProfile%\Documents\Paradox Interactive\Crusader Kings III\dlc_load.json.bk"