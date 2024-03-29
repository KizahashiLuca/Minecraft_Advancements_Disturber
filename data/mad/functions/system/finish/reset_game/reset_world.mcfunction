#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
## Licensed under CC BY-SA 4.0. 
#####################################

## Teleport
execute if entity @p[predicate=mad:player/alive] run tp @a @p[predicate=mad:player/alive,sort=random]

## Reset difficulty
difficulty peaceful

## Reset time
time set noon

## Reset weather
weather clear

## Reset respawn beacon
execute as @e[predicate=mad:area_effect_cloud/respawn_beacon/structure] at @s run setblock ~ ~-2 ~ minecraft:obsidian

## Remove storage
data remove storage mad: minecart
data remove storage mad: death

## Kill entities
kill @e[type=minecraft:item]
kill @e[type=minecraft:arrow]
kill @e[type=minecraft:spectral_arrow]
kill @e[type=minecraft:trident]
kill @e[type=minecraft:marker]
kill @e[type=minecraft:area_effect_cloud]
kill @e[type=minecraft:chest_minecart,tag=MAD_Minecart]
kill @e[predicate=mad:armor_stand/respawn_banner/structure]
kill @e[predicate=mad:armor_stand/mobile_respawn_beacon/position]
kill @e[predicate=mad:system/item/return_portal/armor_stand]
kill @e[predicate=mad:system/item/upgrader/armor/monster_egg]
kill @e[predicate=mad:system/item/upgrader/tool/monster_egg]
kill @e[predicate=mad:system/item/emergency_call/monster_egg]
kill @e[predicate=mad:system/item/notice_of_thief/monster_egg]
kill @e[predicate=mad:system/item/transmitter/monster_egg]
kill @e[predicate=mad:system/item/maze_maker/monster_egg]
kill @e[type=minecraft:armor_stand,tag=MAD_MinecartItem]

## Reset world border
execute in minecraft:overworld run worldborder center 0 0
execute in minecraft:overworld run worldborder set 59999968

## Forceload remove
forceload remove all