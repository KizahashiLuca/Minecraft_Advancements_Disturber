#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 19 Nov 2023
## Version   : β-2.4
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
function mad:system/finish/reset_game/reset_advancements_scoreboards

## Change gamemode
gamemode adventure @a
