#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 19 Nov 2023
## Version   : β-2.4
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
function mad:system/begin/set_game/set_advancements_scoreboards