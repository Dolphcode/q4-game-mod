# Quake Core
---
Quake Core is a mod to Quake 4 which implements mechanics from Fromsoftware's Armored Core series. It revamps standard Quake 4 controls by putting the player inside an SMC walker from the get go.

The SMC walker's movement capabilities have been significantly upgraded, with the ability to jump, dash, and fly. Dashing and flying are constrained by an energy bar, as these actions use up the SMC walker's energy. The energy bar regenerates over time spent not consuming it, which means you'll have to consume and manage energy wisely.

The player will be able to fit their SMC walker with 10 unique weapons and 10 unique parts in order to customize it to whatever fits their needs. A menu has been added to the game in order to do this.

Here are the instructions to install and start playing Quake Core:

## Installation
---
This repository provides a zip file with all the necessary DLLs and pak files to run this mod. Start by downloading that and unzipping it, then move the extracted `quakecore` folder into your Quake 4 directory.

If you have Quake 4 on Steam for example you would move `quakecore` into the directory
`C:\Program Files (x86)\Steam\steamapps\common\Quake 4`

Now you are ready to play the mod

## Playing the Mod
---
Quake 4 has built in mod awareness, so if you installed the mod correctly, once you open the game and click the `Mods` button at the bottom left corner of the screen, the resulting pop up should show `quakecore` as one of the mods you can launch, launch that mod and you're set. I've provided an in game help screen to run down the basics of the mod. The controls settings have been adjusted to reflect the meaning of the most significant controls in the game, you are free to rebind them as you please.

### Creating a Shortcut
You can set Quake 4 to automatically launch your mod in one of two ways:

1. **(Steam Users Only)** On the game page for Quake 4 in your library, click the Settings button (all the way to the right of the PLAY button), then click properties. Scroll down to "Launch Options" and type `+set fs_game quakecore`. This will let you open the mod automatically through Steam.
   
2. Create a shortcut to the Quake 4 executable on windows, open the properties of the shortcut, then at the end of the "Target" field append `+set fs_game quakecore`. This will create a shortcut for you to launch the executable with the mod. (NOTE: If you have a copy of Quake 4 on Steam you may need to launch it unmodded through Steam first before launching the mod, as Quake 4 may ask you for a CD Key)

## Things to Note
---
This mod is a proof of concept which currently prioritizes mech functionality. If you want to test your mech in different environments against different enemies you'll have to verse yourself with Quake 4's console commands. To open the console you use the keyboard shortcut `Ctrl + Alt + ~`, and with this you can load existing or custom maps and spawn in enemies to test your SMC walker against.

I highly recommend [this website](https://modwiki.dhewm3.org/Commands_(Quake_4)) as a reference for all of Quake 4's commands. If you're versed in programming you can also check out `SysCmds.cpp` in this repository (found in `game/gamesys`) if you want to see exactly what each of Quake 4's commands are and do.

I've also added a few commands and cvars of my own which I will describe briefly here:
1. `listMechs` prints out a list of all mechs and their stats, primarily used to check your mech's stat spread
2. `ac_left_weapon` can be set to values between 0 and 9 (inclusive), allows you to switch your left weapon using console commands, although the menu already uses this commands
3. `ac_right_weapon` same as above but for the right hand weapon
4. `ac_torso_part` can be set to values between 1 and 3 (inclusive), changes the mech's torso
5. `ac_leg_part` can be set to values between 1 and 3 (inclusive), similar to above
6. `ac_engine_part` can be set to values between 1 and 4 (inclusive), similar to above
7. `reloadWeapons` updates your mech's weapon values, if you change weapons using `ac_left_weapon` or `ac_right_weapon` you need to call this command
Note that commands 2-7 are the exact commands used by the mech customization screen GUI, so you don't ever really need to call them except if you want to check what the CVars are as 2-6 are CVars and not actual commands themselves.

All of my main modifications are in the `master` branch of this repository, including the zip file containing the mod. Thank you for checking out my mod and I hope you enjoy should you choose to try my mod.
