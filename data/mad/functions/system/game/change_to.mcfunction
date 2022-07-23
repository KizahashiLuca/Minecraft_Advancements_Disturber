#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Set games
function mad:system/game/set_game/main

## Decide where to summon minecart
execute if predicate mad:gamerules/number_of_minecarts/ge_1 run function mad:system/game/minecart/where_summon_minecart

## Say next position
execute as @e[predicate=mad:marker/minecart/not_say_next_minecart] run function mad:system/game/minecart/say_next_minecart

## Set scoreboards for add-on
execute if predicate mad:phase/fall run scoreboard players set #mad LoadAddon 2

## Change phase
scoreboard players set #mad Phase 21