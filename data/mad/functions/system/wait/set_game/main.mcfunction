#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 18 Jun 2023
## Version   : β-2.3
## Licensed under CC BY-SA 4.0. 
#####################################

## Set gamerules
execute in minecraft:overworld run function mad:system/wait/set_game/set_gamerules
execute in minecraft:the_nether run function mad:system/wait/set_game/set_gamerules
execute in minecraft:the_end run function mad:system/wait/set_game/set_gamerules

## Change bossbar
function mad:system/wait/set_game/set_bossbars

## Set world
function mad:system/wait/set_game/set_world

## Set players
function mad:system/wait/set_game/set_players

## Set teams
function mad:system/wait/set_game/set_teams

## Set scoreboards
function mad:system/wait/set_game/set_scoreboards