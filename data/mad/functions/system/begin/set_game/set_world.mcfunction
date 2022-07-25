#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Set difficulty
difficulty peaceful

## Set time
time set noon

## Set weather
weather clear

## Set world
kill @e[type=minecraft:item]
kill @e[type=minecraft:arrow]
kill @e[type=minecraft:spectral_arrow]
kill @e[type=minecraft:trident]
kill @e[type=minecraft:marker]
kill @e[type=minecraft:area_effect_cloud]
kill @e[type=minecraft:chest_minecart,tag=MAD_Minecart]
kill @e[predicate=mad:ongame/respawn_banner/structure]
kill @e[predicate=mad:ongame/tool_upgrader]
kill @e[predicate=mad:ongame/armor_upgrader]
kill @e[predicate=mad:ongame/respawn_beacon/position]
kill @e[predicate=mad:ongame/return_portal]
kill @e[predicate=mad:ongame/mobile_respawn_beacon/position]
kill @e[type=minecraft:armor_stand,tag=MAD_MinecartItem]

## Forceload chunks
execute at @p[predicate=mad:player/host] run forceload add ~ ~

## Summon world spawn
execute at @p[predicate=mad:player/host] align xyz run summon minecraft:marker ~ ~ ~ {Tags:["MAD_WorldSpawn"],NoGravity:1b,Invulnerable:1b}
execute as @e[predicate=mad:marker/world_spawn,limit=1] store result score @s PosX run data get entity @s Pos[0]
execute as @e[predicate=mad:marker/world_spawn,limit=1] store result score @s PosY run data get entity @s Pos[1]
execute as @e[predicate=mad:marker/world_spawn,limit=1] store result score @s PosZ run data get entity @s Pos[2]