#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Log in the mid of the game
execute as @a[predicate=mad:system/fall/login_midtime] run function mad:system/common/login_midtime

## Position
function mad:system/common/set_position/main

## Detect on ground
execute as @a[predicate=mad:system/fall/detect_on_ground/not_on_ground] at @s run function mad:system/fall/detect_on_ground/main

## Detect on ground
execute as @a[predicate=mad:system/fall/detect_on_ground/on_ground] at @s run function mad:system/fall/teleport

## Respawn beacon system
execute as @e[predicate=mad:area_effect_cloud/respawn_beacon/structure] at @s run function mad:system/common/respawn_beacon/main
execute as @e[predicate=mad:marker/respawn_beacon/position] at @s run function mad:system/common/respawn_beacon/construct

## Change phase
execute unless entity @p[predicate=mad:system/fall/detect_on_ground/not_on_ground] run function mad:system/fall/send_message