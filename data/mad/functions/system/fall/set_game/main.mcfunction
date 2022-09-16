#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 16 Sep 2022
## Version   : β-2.0.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Set gamerules
execute in minecraft:overworld run function mad:system/fall/set_game/set_gamerules
execute in minecraft:the_nether run function mad:system/fall/set_game/set_gamerules
execute in minecraft:the_end run function mad:system/fall/set_game/set_gamerules

## Change bossbar
function mad:system/fall/set_game/set_bossbars

## Set world
function mad:system/fall/set_game/set_world

## Set players
function mad:system/fall/set_game/set_players

## Set scoreboards
function mad:system/wait/set_game/set_scoreboards