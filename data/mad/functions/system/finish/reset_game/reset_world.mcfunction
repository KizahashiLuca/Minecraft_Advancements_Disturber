#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.19
## Author    : @potage00
## Author    : @KizahashiLuca
## Date      : 08 Jun 2022
## Version   : β-1.7
## Licensed under CC BY-SA 4.0. 
#####################################

## Teleport
tp @a @p[predicate=mad:ongame/player/participant_alive,sort=random]

## Reset difficulty
difficulty peaceful

## Reset time
time set noon

## Reset weather
weather clear

## Kill entities
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
kill @e[predicate=mad:ongame/respawn_beacon/position]
kill @e[predicate=mad:ongame/return_portal]
kill @e[predicate=mad:ongame/mobile_respawn_beacon/position]
kill @e[type=minecraft:armor_stand,tag=MinecartItem]

## Reset world border
execute in minecraft:overworld run worldborder center 0 0
execute in minecraft:overworld run worldborder set 59999968

## Forceload remove
forceload remove all