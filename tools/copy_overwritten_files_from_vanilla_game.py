

mod_path = "C://Program Files (x86)//Steam//steamapps//workshop//content//1158310//2871648329"
vanilla_game_path = "C://Program Files (x86)//Steam//steamapps//common//Crusader Kings III//game"
output_path = "C://projects//pessoal//ck3_mod_unofficial_patch//mod"

import os
import shutil

#Get all files recursively from mod folder
mod_files = []
for root, dirs, files in os.walk(mod_path):
    for file in files:
        mod_files.append(os.path.join(root, file))

#Copy the files from vanilla game that exist in mod folder to the output folder
for file in mod_files:
    file_path = file.replace(mod_path, "")
    if os.path.exists(vanilla_game_path + file_path):
        print("Copying " + file_path)
        os.makedirs(os.path.dirname(output_path + file_path), exist_ok=True)
        shutil.copyfile(vanilla_game_path + file_path, output_path + file_path)

