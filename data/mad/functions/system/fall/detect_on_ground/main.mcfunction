#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.2
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 01 Oct 2023
## Version   : β-2.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Detect on ground
execute store result score @s OnGround run data get entity @s OnGround 2.0
scoreboard players set @s[predicate=mad:system/fall/detect_on_ground/in_water] OnGround 2

## Summon teleporter
execute as @s[predicate=mad:system/fall/detect_on_ground/on_ground] run function mad:system/fall/detect_on_ground/on_ground