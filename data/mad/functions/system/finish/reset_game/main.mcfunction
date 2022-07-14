#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Reset world
execute in minecraft:overworld run function mad:system/finish/reset_game/reset_gamerules
execute in minecraft:the_nether run function mad:system/finish/reset_game/reset_gamerules
execute in minecraft:the_end run function mad:system/finish/reset_game/reset_gamerules

## Reset world
function mad:system/finish/reset_game/reset_world

## Reset players
function mad:system/finish/reset_game/reset_players

## Remove tags
function mad:system/finish/reset_game/remove_tags

## Remove teams
function mad:system/finish/reset_game/remove_teams

## Remove bossbars
function mad:system/finish/reset_game/remove_bossbars

## Remove scoreboards
function mad:system/finish/reset_game/reset_scoreboards

## Change gamemode
gamemode adventure @a
