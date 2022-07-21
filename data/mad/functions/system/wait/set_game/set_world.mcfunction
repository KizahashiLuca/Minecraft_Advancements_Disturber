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
execute if predicate mad:gamerules/difficulty/peaceful run difficulty peaceful
execute if predicate mad:gamerules/difficulty/easy run difficulty easy
execute if predicate mad:gamerules/difficulty/normal run difficulty normal
execute if predicate mad:gamerules/difficulty/hard run difficulty hard

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
kill @e[type=minecraft:chest_minecart,tag=Minecart]
kill @e[predicate=mad:ongame/respawn_banner/structure]
kill @e[predicate=mad:ongame/tool_upgrader]
kill @e[predicate=mad:ongame/armor_upgrader]
kill @e[predicate=mad:ongame/return_portal]
kill @e[predicate=mad:ongame/mobile_respawn_beacon/position]
kill @e[type=minecraft:armor_stand,tag=MinecartItem]

## Set world border
execute as @e[predicate=mad:marker/world_spawn,limit=1] at @s run function mad:system/wait/set_game/set_world_border