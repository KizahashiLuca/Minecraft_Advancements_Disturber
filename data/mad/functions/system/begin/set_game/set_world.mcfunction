#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 19 Nov 2023
## Version   : β-2.4
## Licensed under CC BY-SA 4.0. 
#####################################

## Set difficulty
difficulty peaceful

## Set time
time set noon

## Set weather
weather clear

## Remove storage
data remove storage mad: minecart

## Set world
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

## Forceload chunks
execute at @p[predicate=mad:player/host] run forceload add ~ ~

## Summon world spawn
execute at @p[predicate=mad:player/host] align xyz run summon minecraft:marker ~ ~ ~ {Tags:["MAD_WorldSpawn"],NoGravity:1b,Invulnerable:1b}
execute store result score #mad PosX run data get entity @e[predicate=mad:marker/world_spawn,limit=1] Pos[0] 1.0
execute store result score #mad PosY run data get entity @e[predicate=mad:marker/world_spawn,limit=1] Pos[1] 1.0
execute store result score #mad PosZ run data get entity @e[predicate=mad:marker/world_spawn,limit=1] Pos[2] 1.0