#####################################
## Minecraft Advancements Disturber
## MC-Version: Java Edit. 1.20.3
## Author    : @potagegatop
## Author    : @KizahashiLuca
## Date      : 06 Dec 2023
## Version   : β-2.5
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

## Remove storage
data remove storage mad: minecart

## Set world
kill @e[type=minecraft:item]
kill @e[type=minecraft:arrow]
kill @e[type=minecraft:spectral_arrow]
kill @e[type=minecraft:trident]
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

## Set world border
execute as @e[predicate=mad:marker/world_spawn,limit=1] at @s run function mad:system/wait/set_game/set_world_border