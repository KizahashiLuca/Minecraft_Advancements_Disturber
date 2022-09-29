#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 29 Sep 2022
## Version   : β-2.2
## Licensed under CC BY-SA 4.0. 
#####################################

## Timer
function mad:system/game/timer/team/tick
function mad:system/game/timer/team/general/tick

## Detect death
execute as @a[predicate=mad:player/dying] run function mad:system/game/detect_death/team

## Count the alive
execute if predicate mad:system/game/count_alive/a run function mad:system/game/count_alive/a
execute if predicate mad:system/game/count_alive/b run function mad:system/game/count_alive/b
execute if predicate mad:system/game/count_alive/c run function mad:system/game/count_alive/c
execute if predicate mad:system/game/count_alive/d run function mad:system/game/count_alive/d
execute if predicate mad:system/game/count_alive/e run function mad:system/game/count_alive/e

## Respawn beacon system
execute as @e[predicate=mad:area_effect_cloud/respawn_beacon/structure] at @s run function mad:system/common/respawn_beacon/main
execute as @e[predicate=mad:marker/respawn_beacon/position] at @s run function mad:system/common/respawn_beacon/construct

## Mobile respawn beacon system
execute as @e[predicate=mad:area_effect_cloud/mobile_respawn_beacon/structure] at @s run function mad:system/item/mobile_respawn_beacon/main
execute as @e[predicate=mad:item/mobile_respawn_beacon/bedrock] at @s run function mad:system/item/mobile_respawn_beacon/summon_item
execute as @e[predicate=mad:armor_stand/mobile_respawn_beacon/position] at @s run function mad:system/item/mobile_respawn_beacon/construct/main

## Respawn banner system
execute as @e[predicate=mad:armor_stand/respawn_banner/structure] at @s run function mad:system/game/respawn_banner/main
execute as @e[predicate=mad:item/respawn_banner/position_by_dead] at @s run function mad:system/game/respawn_banner/construct
execute as @e[predicate=mad:item/respawn_banner/dropped_from_chest] run function mad:system/game/respawn_banner/set_invulnerable

## Set scoreboard
scoreboard players operation #mad NumAlive = #mad NumberOfTeams