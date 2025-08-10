#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## 着地判定
execute store result score @s OnGround run data get entity @s OnGround 2.0
scoreboard players set @s[predicate=mad:system/fall/detect_on_ground/is_in_fluids] OnGround 2

## テレポート先召喚
execute as @s[predicate=mad:system/fall/detect_on_ground/on_ground] run function mad:system/fall/detect_on_ground/summon_marker with entity @s EnderItems[0].components.'minecraft:profile'