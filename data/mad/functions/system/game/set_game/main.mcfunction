#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Set gamerules
execute in minecraft:overworld run function mad:system/game/set_game/set_gamerules
execute in minecraft:the_nether run function mad:system/game/set_game/set_gamerules
execute in minecraft:the_end run function mad:system/game/set_game/set_gamerules

## Change bossbar
function mad:system/game/set_game/set_bossbars/main

## Set world
function mad:system/game/set_game/set_world

## Set players
function mad:system/game/set_game/set_players

## Set scoreboards
function mad:system/game/set_game/set_scoreboards