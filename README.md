# Crusader Kings 3 Unofficial patch

This repo contains the code for the mod Crusader Kings 3 Unofficial Patch (https://steamcommunity.com/sharedfiles/filedetails/?id=2871648329). 

![](mod/thumbnail.png)

The mod contents are inside the `mod` folder.

There is a `master` branch containing the most up-to-date code from the mod and a `vanilla_1_8_1` branch with the vanilla files that are overwritten by the mod as of the 1.8.1 (Robe) release.

Having a separate branch with the vanilla files it makes it easier to do a three-way merge when a new version of the game is released.

> Please ensure you are using UNIX (LF) line endings to avoid having to deal with tons of annoying whitespace changes in git. 

## What to do when the game is updated

When Paradox releases a new version of Crusader Kings 3, the following steps should be taken:
1. Checkout the latest vanilla branch (`vanilla_1_8_1` as of this writing)
2. Run `python tools/copy_overwritten_files_from_vanilla_game.py`to overwrite all relevant files
3. Run `sh tools/crlf2lf.sh` to ensure all files have UNIX (LF) line endings
4. Create a new branch named `vanilla_<version>` (i.e `vanilla_1_9_0`) and commit/push the changes
5. Go back to master and merge from the latest vanilla branch

