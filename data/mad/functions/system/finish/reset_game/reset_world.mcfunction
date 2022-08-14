#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 14 Aug 2022
## Version   : β-2.0
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
kill @e[type=minecraft:armor_stand,tag=MAD_MinecartItem]

## Reset world border
execute in minecraft:overworld run worldborder center 0 0
execute in minecraft:overworld run worldborder set 59999968

## Reset mad:world
execute in mad:world positioned 0 1 0 run fill ~-10 ~ ~-10 ~10 ~ ~10 minecraft:iron_block

## Forceload remove
forceload remove all