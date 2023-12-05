#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Set games
function mad:system/game/set_game/main

## Decide where to summon minecart
execute if predicate mad:gamerules/number_of_minecarts/ge_1 run function mad:system/game/set_game/where_summon_minecart

## Set scoreboards for add-on
execute if predicate mad:phase/fall run scoreboard players set #mad LoadAddon 2

## Change phase
scoreboard players set #mad Phase 21