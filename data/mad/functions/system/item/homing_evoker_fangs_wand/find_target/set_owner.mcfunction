#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 10 Dec 2022
## Version   : β-2.2.1
## Licensed under CC BY-SA 4.0. 
#####################################

## Set owner uuid
data modify entity @s Owner set from entity @p[predicate=mad:system/item/homing_evoker_fangs_wand/find_target/lockon_player] UUID

## Set rotation
data modify entity @s Rotation set from entity @p[predicate=mad:system/item/homing_evoker_fangs_wand/find_target/lockon_player] Rotation

## Set target uuid
scoreboard players operation @s PlayerUUID0 = @p[predicate=mad:system/item/homing_evoker_fangs_wand/find_target/lockon_player] PlayerUUID0
scoreboard players operation @s PlayerUUID1 = @p[predicate=mad:system/item/homing_evoker_fangs_wand/find_target/lockon_player] PlayerUUID1
scoreboard players operation @s PlayerUUID2 = @p[predicate=mad:system/item/homing_evoker_fangs_wand/find_target/lockon_player] PlayerUUID2
scoreboard players operation @s PlayerUUID3 = @p[predicate=mad:system/item/homing_evoker_fangs_wand/find_target/lockon_player] PlayerUUID3