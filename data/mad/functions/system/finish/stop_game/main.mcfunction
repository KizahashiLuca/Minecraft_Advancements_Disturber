#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 14 Aug 2022
## Version   : β-2.0
## Licensed under CC BY-SA 4.0. 
#####################################

## Send stop messages
function mad:system/finish/stop_game/messages

## Change world
execute in minecraft:overworld run tp @a[predicate=mad:dimension/mad_world] @e[predicate=mad:marker/world_spawn,limit=1]

## Statics
function mad:system/finish/statics

## Reset game
function mad:system/finish/reset_game/main
